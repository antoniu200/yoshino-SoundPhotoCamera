package com.sonyericsson.cameracommon.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class RequestPermissionActivity extends Activity {
    public static final String TAG = "RequestPermissionActivity";
    private static int INVALID_ID = -1;
    private static int LOWEST_PRIORITY = 2147483646;
    private static int HIGHEST_PRIORITY = 0;
    private final int REQUEST_CODE_FOR_PERMISSION = 256;
    private final int ID_FOR_PRE_DIALOG = InputDeviceCompat.SOURCE_DPAD;
    private final int ID_FOR_POST_DIALOG = 514;
    private List<PermissionState> mPermissionStateList = null;
    private PermissionState mCurrentPermissionState = null;
    private AlertDialog mCurrentShownDialog = null;

    enum PermissionAction {
        UPDATE_STATE,
        DO_NOTHING,
        REQUEST_PERMISSIONS,
        SHOW_POST_DIALOG,
        FINISH
    }

    enum PermissionGroup {
        CAMERA("android.permission-group.CAMERA", Arrays.asList("android.permission.CAMERA"), RequestPermissionActivity.INVALID_ID, R.string.cam_strings_runtime_permission_rationale_camera_txt),
        MIC("android.permission-group.MICROPHONE", Arrays.asList("android.permission.RECORD_AUDIO"), RequestPermissionActivity.INVALID_ID, R.string.cam_strings_runtime_permission_rationale_microphone_txt),
        STORAGE("android.permission-group.STORAGE", Arrays.asList("android.permission.WRITE_EXTERNAL_STORAGE"), RequestPermissionActivity.INVALID_ID, R.string.cam_strings_runtime_permission_rationale_storage_txt),
        LOCATION("android.permission-group.LOCATION", Arrays.asList("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"), R.string.cam_strings_runtime_permission_rationale_location_txt, R.string.cam_strings_runtime_permission_rationale_location_txt);

        private String mPermissionGroupName;
        private List<String> mPermissionList;
        private int mPostDialogMessageId;
        private int mPreDialogMessageId;

        PermissionGroup(String groupName, @NonNull List list, int preDialogMessageId, int postDialogMessageId) {
            this.mPermissionGroupName = groupName;
            this.mPermissionList = list;
            this.mPreDialogMessageId = preDialogMessageId;
            this.mPostDialogMessageId = postDialogMessageId;
        }

        public String getGroupName() {
            return this.mPermissionGroupName;
        }

        public List<String> getPermissionList() {
            return this.mPermissionList;
        }

        public boolean contains(String permission) {
            return this.mPermissionList.contains(permission);
        }

        public int getPreDialogMessageId() {
            return this.mPreDialogMessageId;
        }

        public int getPostDialogMessageId() {
            return this.mPostDialogMessageId;
        }
    }

    enum PermissionCategory {
        MANDATORY(Arrays.asList(PermissionGroup.CAMERA, PermissionGroup.MIC, PermissionGroup.STORAGE), RequestPermissionActivity.HIGHEST_PRIORITY),
        OPTIONAL(Arrays.asList(PermissionGroup.LOCATION), RequestPermissionActivity.HIGHEST_PRIORITY + 1);

        private List<PermissionGroup> mGroupList;
        private int mPriority;

        PermissionCategory(List list, int priority) {
            this.mGroupList = list;
            this.mPriority = priority;
        }

        public List<PermissionGroup> getGroupList() {
            return this.mGroupList;
        }

        public int getPriority() {
            return this.mPriority;
        }
    }

    class PermissionState {
        private final PermissionCategory mCategory;
        private final List<PermissionGroup> mRequestGroupList;
        private boolean mRequested = false;

        PermissionState(PermissionCategory category, List<PermissionGroup> groupList) {
            this.mCategory = category;
            this.mRequestGroupList = groupList;
        }

        public PermissionCategory getCategory() {
            return this.mCategory;
        }

        public List<PermissionGroup> getRequestGroupList() {
            return this.mRequestGroupList;
        }

        public boolean isRequested() {
            return this.mRequested;
        }

        public void setRequested() {
            this.mRequested = true;
        }

        public String[] getRequestPermissionList() {
            List<String> permissionList = new ArrayList<>();
            if (this.mRequestGroupList == null) {
                return new String[0];
            }
            for (PermissionGroup group : this.mRequestGroupList) {
                for (String permission : group.getPermissionList()) {
                    permissionList.add(permission);
                }
            }
            return (String[]) permissionList.toArray(new String[0]);
        }

        public boolean areAllPermissionsGranted() {
            String[] allPermissions = getRequestPermissionList();
            for (String permission : allPermissions) {
                if (RequestPermissionActivity.this.checkSelfPermission(permission) != 0) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return this.mCategory.name() + ": Group num=" + this.mRequestGroupList.size() + ", requested=" + this.mRequested;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_request_permission);
        if (isRestrictedMode()) {
            if (Build.VERSION.SDK_INT > 25) {
                getWindow().addFlags(524288);
            } else {
                getWindow().addFlags(4194304);
                if (isSecure()) {
                    getWindow().addFlags(524288);
                }
            }
        }
        Intent intent = getIntent();
        if (intent == null) {
            finishActivity();
            return;
        }
        List<String> permissionList = intent.getStringArrayListExtra(IntentConstants.EXTRA_PERMISSIONS_LIST);
        this.mPermissionStateList = createPermissionStateList(permissionList);
        updateCurrentState();
        if (this.mCurrentPermissionState == null) {
            finishActivity();
        }
    }

    private void finishActivity() {
        Intent resultData = new Intent();
        setResult(-1, resultData);
        finish();
    }

    private List<PermissionState> createPermissionStateList(List<String> permissionList) {
        List<PermissionState> permissionStateList = new ArrayList<>();
        for (PermissionCategory category : PermissionCategory.values()) {
            List<PermissionGroup> groupList = new ArrayList<>();
            List<PermissionGroup> categoryGroupList = category.getGroupList();
            for (PermissionGroup group : categoryGroupList) {
                if (permissionList != null) {
                    Iterator<String> it = permissionList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String permission = it.next();
                            if (group.contains(permission) && checkSelfPermission(permission) != 0) {
                                groupList.add(group);
                                break;
                            }
                        }
                    }
                }
            }
            if (groupList.size() != 0) {
                permissionStateList.add(new PermissionState(category, groupList));
            }
        }
        return permissionStateList;
    }

    private void updateCurrentState() {
        int currentPriority = HIGHEST_PRIORITY - 1;
        if (this.mCurrentPermissionState != null) {
            currentPriority = this.mCurrentPermissionState.getCategory().getPriority();
        }
        PermissionState nextState = null;
        int nextPriority = LOWEST_PRIORITY + 1;
        for (PermissionState state : this.mPermissionStateList) {
            int priority = state.getCategory().getPriority();
            boolean requested = state.isRequested();
            if (currentPriority < priority && priority < nextPriority && !requested) {
                nextState = state;
                nextPriority = priority;
            }
        }
        if (this.mCurrentPermissionState == nextState) {
            this.mCurrentPermissionState = null;
        } else {
            this.mCurrentPermissionState = nextState;
        }
    }

    @Override // android.app.Activity
    protected void onResume() throws Resources.NotFoundException {
        super.onResume();
        doNextAction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doNextAction() throws Resources.NotFoundException {
        PermissionAction action = decideNextAction();
        while (action == PermissionAction.UPDATE_STATE) {
            updateCurrentState();
            action = decideNextAction();
        }
        boolean done = doAction(action);
        if (action == PermissionAction.SHOW_POST_DIALOG) {
            updateCurrentState();
        }
        if (!done) {
            doNextAction();
        }
    }

    private PermissionAction decideNextAction() {
        if (this.mCurrentShownDialog != null) {
            return PermissionAction.DO_NOTHING;
        }
        if (this.mCurrentPermissionState == null) {
            return PermissionAction.FINISH;
        }
        boolean requested = this.mCurrentPermissionState.isRequested();
        if (requested) {
            if (this.mCurrentPermissionState.areAllPermissionsGranted()) {
                PermissionAction action = PermissionAction.UPDATE_STATE;
                return action;
            }
            PermissionAction action2 = PermissionAction.SHOW_POST_DIALOG;
            return action2;
        }
        if (isSecure() && isRestrictedMode()) {
            PermissionAction action3 = PermissionAction.SHOW_POST_DIALOG;
            return action3;
        }
        PermissionAction action4 = PermissionAction.REQUEST_PERMISSIONS;
        return action4;
    }

    /* Some code will duplicate */
    private boolean doAction(PermissionAction action) throws Resources.NotFoundException {
        String[] permissionList = new String[0];
        if (this.mCurrentPermissionState != null) {
            permissionList = this.mCurrentPermissionState.getRequestPermissionList();
        }
        switch (action) {
            case REQUEST_PERMISSIONS:
                List<PermissionGroup> shouldShowPreDialogGroup = new ArrayList<>();
                for (String permission : permissionList) {
                    if (shouldShowRequestPermissionRationale(permission)) {
                        Iterator<PermissionGroup> it = this.mCurrentPermissionState.getRequestGroupList().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                PermissionGroup gr = it.next();
                                if (gr.contains(permission) && gr.getPreDialogMessageId() != INVALID_ID && !shouldShowPreDialogGroup.contains(gr)) {
                                    shouldShowPreDialogGroup.add(gr);
                                }
                            }
                        }
                    }
                }
                if (shouldShowPreDialogGroup.size() == 0) {
                    requestPermissions(permissionList);
                } else {
                    showPermissionPreDialog(shouldShowPreDialogGroup);
                }
                return true;
            case SHOW_POST_DIALOG:
                List<PermissionGroup> shouldShowPostDialogGroup = new ArrayList<>();
                for (String permission2 : permissionList) {
                    if (checkSelfPermission(permission2) != 0) {
                        Iterator<PermissionGroup> it2 = this.mCurrentPermissionState.getRequestGroupList().iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                PermissionGroup gr2 = it2.next();
                                if (gr2.contains(permission2) && gr2.getPostDialogMessageId() != INVALID_ID && !shouldShowPostDialogGroup.contains(gr2)) {
                                    shouldShowPostDialogGroup.add(gr2);
                                }
                            }
                        }
                    }
                }
                if (shouldShowPostDialogGroup.size() == 0) {
                    return false;
                }
                showPermissionPostDialog(shouldShowPostDialogGroup);
                return true;
            case FINISH:
                finishActivity();
                return true;
            default:
                return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPermissions(String[] permissionList) {
        requestPermissions(permissionList, 256);
        this.mCurrentPermissionState.setRequested();
    }

    private void showPermissionPreDialog(List<PermissionGroup> groupList) throws Resources.NotFoundException {
        showPermissionDialog(InputDeviceCompat.SOURCE_DPAD, groupList);
    }

    private void showPermissionPostDialog(List<PermissionGroup> groupList) throws Resources.NotFoundException {
        showPermissionDialog(514, groupList);
    }

    private void showPermissionDialog(int id, List<PermissionGroup> groupList) throws Resources.NotFoundException {
        LayoutInflater inflater = LayoutInflater.from(this);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        String appName = getResources().getString(getApplicationInfo().labelRes);
        if (id == 513) {
            ViewGroup customLayout = (ViewGroup) inflater.inflate(R.layout.permission_pre_dialog, (ViewGroup) null);
            TextView header = (TextView) customLayout.findViewById(R.id.alert_dialog_header_txt);
            header.setText(String.format(Locale.US, getResources().getString(R.string.cam_strings_runtime_permission_dialog1_message_txt), appName));
            ListView list = (ListView) customLayout.findViewById(R.id.permission_list);
            if (list != null) {
                list.setAdapter((ListAdapter) new PermissionAdapter(this, id, groupList));
            }
            builder.setTitle(String.format(Locale.US, getResources().getString(R.string.cam_strings_runtime_permission_dialog1_title_txt), appName));
            builder.setView(customLayout);
            builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sonyericsson.cameracommon.activity.RequestPermissionActivity.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface arg0) {
                    RequestPermissionActivity.this.requestPermissions(RequestPermissionActivity.this.mCurrentPermissionState.getRequestPermissionList());
                    RequestPermissionActivity.this.mCurrentShownDialog = null;
                }
            });
            builder.setPositiveButton(R.string.cam_strings_ok_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.cameracommon.activity.RequestPermissionActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                }
            });
            this.mCurrentShownDialog = builder.create();
            this.mCurrentShownDialog.show();
            return;
        }
        if (id == 514) {
            ViewGroup customLayout2 = (ViewGroup) inflater.inflate(R.layout.permission_post_dialog, (ViewGroup) null);
            TextView header2 = (TextView) customLayout2.findViewById(R.id.alert_dialog_header_txt);
            header2.setText(R.string.cam_strings_runtime_permission_dialog2_message1_txt);
            ListView list2 = (ListView) customLayout2.findViewById(R.id.permission_list);
            if (list2 != null) {
                list2.setAdapter((ListAdapter) new PermissionAdapter(this, id, groupList));
            }
            TextView footer = (TextView) customLayout2.findViewById(R.id.alert_dialog_footer_txt);
            footer.setText(R.string.cam_strings_runtime_permission_dialog2_message2_txt);
            builder.setTitle(R.string.cam_strings_runtime_permission_dialog2_title_txt);
            builder.setView(customLayout2);
            builder.setCancelable(false);
            builder.setPositiveButton(R.string.cam_strings_runtime_permission_continue_button_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.cameracommon.activity.RequestPermissionActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + RequestPermissionActivity.this.getPackageName()));
                    try {
                        RequestPermissionActivity.this.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        CameraLogger.e(RequestPermissionActivity.TAG, "showPermissionDialog() launchApplicationSettings: failed.", e);
                    }
                    RequestPermissionActivity.this.mCurrentShownDialog = null;
                }
            });
            builder.setNegativeButton(R.string.cam_strings_cancel_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.cameracommon.activity.RequestPermissionActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) throws Resources.NotFoundException {
                    RequestPermissionActivity.this.mCurrentShownDialog = null;
                    RequestPermissionActivity.this.doNextAction();
                }
            });
            builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sonyericsson.cameracommon.activity.RequestPermissionActivity.5
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface arg0) {
                    RequestPermissionActivity.this.mCurrentShownDialog = null;
                }
            });
            this.mCurrentShownDialog = builder.create();
            this.mCurrentShownDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPermissionGroupLabel(PermissionGroup group) throws PackageManager.NameNotFoundException {
        String groupName = group.getGroupName();
        try {
            PermissionGroupInfo groupInfo = getPackageManager().getPermissionGroupInfo(groupName, 128);
            if (groupInfo == null) {
                return "";
            }
            CharSequence label = groupInfo.loadLabel(getPackageManager());
            if (TextUtils.isEmpty(label)) {
                return "";
            }
            String groupLabel = label.toString();
            return groupLabel;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "getPermissionGroupLabel(): " + e);
            return "";
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mCurrentPermissionState = null;
        this.mPermissionStateList = null;
        this.mCurrentShownDialog = null;
    }

    private boolean isRestrictedMode() {
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService("keyguard");
        return keyguardManager.isKeyguardLocked();
    }

    private boolean isSecure() {
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService("keyguard");
        return keyguardManager.isKeyguardSecure();
    }

    private class PermissionAdapter implements ListAdapter {
        private final Context mContext;
        private List<PermissionGroup> mGroupList;
        private final int mId;

        public PermissionAdapter(Context context, int id, List<PermissionGroup> data) {
            this.mContext = context;
            this.mId = id;
            this.mGroupList = data;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.mGroupList == null) {
                return 0;
            }
            return this.mGroupList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.mGroupList == null) {
                return null;
            }
            return this.mGroupList.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return false;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = convertView;
            if (view == null) {
                LayoutInflater inflater = LayoutInflater.from(this.mContext);
                view = inflater.inflate(R.layout.list_item_permission, (ViewGroup) null);
            }
            PermissionGroup group = (PermissionGroup) getItem(position);
            TextView name = (TextView) view.findViewById(R.id.name);
            TextView description = (TextView) view.findViewById(R.id.description);
            if (this.mId == 513 && group != null && group.getPreDialogMessageId() != RequestPermissionActivity.INVALID_ID) {
                name.setText(RequestPermissionActivity.this.getPermissionGroupLabel(group));
                description.setText(RequestPermissionActivity.this.getResources().getString(group.getPreDialogMessageId()));
            } else if (this.mId == 514 && group != null && group.getPostDialogMessageId() != RequestPermissionActivity.INVALID_ID) {
                name.setText(RequestPermissionActivity.this.getPermissionGroupLabel(group));
                description.setText(RequestPermissionActivity.this.getResources().getString(group.getPostDialogMessageId()));
            }
            return view;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() < 1;
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }
    }
}