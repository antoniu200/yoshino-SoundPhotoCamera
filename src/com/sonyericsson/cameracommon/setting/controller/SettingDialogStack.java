package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.controller.SettingLayoutCoordinatorFactory;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut;
import java.util.HashMap;
import java.util.Stack;

/* loaded from: classes.dex */
public class SettingDialogStack {
    private static final View.OnKeyListener DUMMY_ON_INTERCEPT_KEY_LISTENER = new View.OnKeyListener() { // from class: com.sonyericsson.cameracommon.setting.controller.SettingDialogStack.1
        @Override // android.view.View.OnKeyListener
        public boolean onKey(View v, int keyCode, KeyEvent event) {
            return false;
        }
    };
    public static final String TAG = "SettingDialogStack";
    private final Context mContext;
    private SettingControlDialog mControlDialog;
    private final ViewGroup mDialogBackground;
    private final HashMap<SettingDialogInterface, Object> mDialogTags;
    private boolean mIsMenuDialogOpened;
    private SettingTabDialogBasic mMenuDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mMenuDialogCoordinateData;
    private int mMenuDialogRowCount;
    private View.OnKeyListener mOnInterceptKeyListener;
    private int mOrientation;
    private SettingDialogBasic mSecondLayerDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mSecondLayerDialogCoordinateData;
    private SettingDialogAnimation mSettingAnimation;
    private final SettingDialogListener mSettingDialogListener;
    private SettingDialogBasic mShortcutDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mShortcutDialogCoordinateData;
    private int mShortcutDialotTitleId;
    private final SettingShortcut mShortcutTray;
    private Stack<Rect> mTargetAreaList;

    public SettingDialogStack(Context context, SettingDialogListener settingDialogListener, ViewGroup shortcutContainer, ViewGroup dialogContainer) {
        this(context, settingDialogListener, shortcutContainer, dialogContainer, null);
    }

    public SettingDialogStack(Context context, SettingDialogListener settingDialogListener, ViewGroup shortcutContainer, ViewGroup dialogContainer, ListView settingShortcutItems) {
        this.mTargetAreaList = new Stack<>();
        this.mMenuDialogRowCount = 0;
        this.mContext = context;
        setOnInterceptKeyListener(null);
        this.mSettingDialogListener = settingDialogListener;
        this.mDialogBackground = new Background(this.mContext);
        dialogContainer.addView(this.mDialogBackground);
        this.mDialogBackground.getLayoutParams().width = -1;
        this.mDialogBackground.getLayoutParams().height = -1;
        this.mShortcutTray = new SettingShortcut(context, shortcutContainer, settingShortcutItems);
        this.mShortcutDialog = null;
        this.mControlDialog = null;
        this.mMenuDialog = null;
        this.mSecondLayerDialog = null;
        this.mDialogBackground.setClickable(true);
        this.mDialogBackground.setFocusable(false);
        this.mIsMenuDialogOpened = false;
        this.mSettingAnimation = new SettingDialogAnimation(context);
        this.mDialogTags = new HashMap<>();
    }

    public void setupShortcutTray(SettingAdapter adapter) {
        this.mShortcutTray.setAdapter(adapter);
        this.mShortcutTray.setSensorOrientation(this.mOrientation);
        this.mShortcutTray.show();
    }

    public void updateShortcutTray(SettingAdapter adapter) {
        this.mShortcutTray.updateAdapter(adapter);
        this.mShortcutTray.setSensorOrientation(this.mOrientation);
    }

    public void showShortcutTray() {
        this.mShortcutTray.show();
    }

    public void hideShortcutTray() {
        this.mShortcutTray.hide();
    }

    public void clearShortcutSelected() {
        this.mShortcutTray.clearSelected();
    }

    public <T> void updateShortcutSelected(T itemData) {
        this.mShortcutTray.setSelected((SettingShortcut) itemData);
    }

    public boolean isDialogOpened() {
        return (this.mMenuDialog == null && this.mShortcutDialog == null && this.mControlDialog == null && this.mSecondLayerDialog == null) ? false : true;
    }

    public boolean isMenuDialogOpened() {
        return this.mMenuDialog != null;
    }

    public boolean isControlDialogOpened() {
        return this.mControlDialog != null;
    }

    public boolean isOpened(Object tag) {
        for (Object i : this.mDialogTags.values()) {
            if (i != null && i.equals(tag)) {
                return true;
            }
        }
        return false;
    }

    public void setOnInterceptKeyListener(View.OnKeyListener listener) {
        if (listener == null) {
            this.mOnInterceptKeyListener = DUMMY_ON_INTERCEPT_KEY_LISTENER;
        } else {
            this.mOnInterceptKeyListener = listener;
        }
    }

    public boolean openMenuDialog(SettingAdapter adapter, boolean requestUpdate) {
        return openMenuDialog(adapter, new SettingTabs.Tab[0], null, null, 0);
    }

    public boolean openMenuDialog(SettingAdapter adapter, SettingTabs.Tab[] tabs, SettingTabs.OnTabSelectedListener onSelectedTabListener, Object tag, int menuDialogRowCount) {
        this.mMenuDialogCoordinateData = generateMenuDialogLayoutCoordinateData();
        if (this.mMenuDialogCoordinateData == null) {
            return false;
        }
        SettingTabDialogBasic dialog = SettingDialogFactory.createMenu(this.mContext, this.mMenuDialogCoordinateData, menuDialogRowCount, tabs.length);
        dialog.setTabs(tabs);
        dialog.setOnSelectedTabListener(onSelectedTabListener);
        return openMenuDialog(adapter, dialog, tag, menuDialogRowCount);
    }

    public boolean openMenuDialog(SettingAdapter adapter, int titleTextResource, Object tag, int menuDialogRowCount) {
        this.mMenuDialogCoordinateData = generateMenuDialogLayoutCoordinateData();
        if (this.mMenuDialogCoordinateData == null) {
            return false;
        }
        SettingTabDialogBasic dialog = SettingDialogFactory.createSimpleMenu(this.mContext, this.mMenuDialogCoordinateData, titleTextResource, menuDialogRowCount);
        return openMenuDialog(adapter, dialog, tag, menuDialogRowCount);
    }

    private boolean openMenuDialog(SettingAdapter adapter, SettingTabDialogBasic dialog, Object tag, int menuDialogRowCount) throws Resources.NotFoundException {
        this.mMenuDialogRowCount = menuDialogRowCount;
        if (this.mMenuDialog != null) {
            return false;
        }
        if (!this.mShortcutTray.isShown()) {
            clearShortcutSelected();
            return false;
        }
        boolean alreadyOpened = isDialogOpened();
        boolean isAnimation = false;
        if (!this.mIsMenuDialogOpened) {
            isAnimation = true;
        }
        closeMenuDialog(false);
        closeShortcutDialog(false);
        closeControlDialog(false);
        closeSecondLayerDialog(false);
        if (this.mMenuDialogCoordinateData != null) {
            this.mMenuDialog = dialog;
            this.mMenuDialog.setAdapter(adapter);
            if (!this.mIsMenuDialogOpened && isAnimation) {
                this.mSettingAnimation.setOpenDialogAnimation(this.mDialogBackground, this.mOrientation);
            }
            this.mMenuDialog.open(this.mDialogBackground);
            this.mMenuDialog.setSensorOrientation(this.mOrientation);
            this.mDialogTags.put(this.mMenuDialog, tag);
            this.mIsMenuDialogOpened = true;
        }
        resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, alreadyOpened, isAnimation);
        return true;
    }

    public boolean openControlDialog(SettingAdapter adapter) {
        return openControlDialog(adapter, null);
    }

    public boolean openControlDialog(SettingAdapter adapter, Object tag) throws Resources.NotFoundException {
        if (this.mControlDialog != null || !this.mShortcutTray.isShown()) {
            return false;
        }
        boolean alreadyOpened = isDialogOpened();
        closeMenuDialog(false);
        closeShortcutDialog(false);
        closeControlDialog(false);
        closeSecondLayerDialog(false);
        SettingLayoutCoordinatorFactory.LayoutCoordinateData coordinateData = generateShortcutLayoutCoordinateData();
        if (coordinateData == null) {
            return false;
        }
        this.mControlDialog = SettingDialogFactory.createControl(this.mContext, coordinateData);
        this.mControlDialog.setAdapter(adapter);
        this.mSettingAnimation.setOpenDialogAnimation(this.mDialogBackground, this.mOrientation);
        this.mControlDialog.open(this.mDialogBackground);
        this.mControlDialog.setSensorOrientation(this.mOrientation);
        this.mDialogTags.put(this.mControlDialog, tag);
        resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, alreadyOpened, true);
        return true;
    }

    public boolean openShortcutDialog(SettingAdapter adapter, int shortcutDialogTitleId) {
        return openShortcutDialog(adapter, shortcutDialogTitleId, null);
    }

    public boolean openShortcutDialog(SettingAdapter adapter, int shortcutDialogTitleId, Object tag) throws Resources.NotFoundException {
        if (this.mShortcutDialog != null && this.mShortcutDialotTitleId == shortcutDialogTitleId) {
            return false;
        }
        boolean alreadyOpened = isDialogOpened();
        closeMenuDialog(false);
        closeShortcutDialog(false);
        closeControlDialog(false);
        closeSecondLayerDialog(false);
        this.mShortcutDialogCoordinateData = generateShortcutLayoutCoordinateData();
        if (this.mShortcutDialogCoordinateData != null) {
            this.mShortcutDialog = SettingDialogFactory.createShortcutDialog(this.mContext, this.mShortcutDialogCoordinateData, shortcutDialogTitleId);
            this.mShortcutDialog.setAdapter(adapter);
            this.mSettingAnimation.setOpenDialogAnimation(this.mDialogBackground, this.mOrientation);
            this.mShortcutDialog.open(this.mDialogBackground);
            this.mShortcutDialog.setSensorOrientation(this.mOrientation);
            this.mShortcutDialotTitleId = shortcutDialogTitleId;
            this.mDialogTags.put(this.mShortcutDialog, tag);
        }
        resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, alreadyOpened, true);
        return true;
    }

    public boolean openSecondLayerDialog(SettingAdapter adapter) {
        return openSecondLayerDialog(adapter, null);
    }

    public boolean openSecondLayerDialog(SettingAdapter adapter, Object tag) throws Resources.NotFoundException {
        boolean alreadyOpened = isDialogOpened();
        closeSecondLayerDialog(false);
        this.mSecondLayerDialogCoordinateData = generateSecondLayerDialogLayoutCoordinateData();
        if (this.mSecondLayerDialogCoordinateData != null) {
            this.mSecondLayerDialog = SettingDialogFactory.createSecondLayerDialog(this.mContext, this.mSecondLayerDialogCoordinateData, this.mMenuDialogRowCount, this.mMenuDialog.numberOfTabs());
            this.mSecondLayerDialog.setAdapter(adapter);
            this.mSettingAnimation.setOpenDialogAnimation(this.mSecondLayerDialog, this.mOrientation);
            this.mSecondLayerDialog.open(this.mDialogBackground);
            this.mSecondLayerDialog.setSensorOrientation(this.mOrientation);
            this.mDialogTags.put(this.mSecondLayerDialog, tag);
        }
        resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, alreadyOpened, true);
        return true;
    }

    public boolean closeCurrentDialog() throws Resources.NotFoundException {
        boolean handled = false;
        if (0 == 0) {
            handled = closeSecondLayerDialog(true);
        }
        if (!handled) {
            handled = closeShortcutDialog(true);
        }
        if (!handled) {
            handled = closeControlDialog(true);
        }
        if (!handled) {
            handled = closeMenuDialog(true);
        }
        resetEnabledOfDialogs();
        if (handled) {
            if (!isDialogOpened()) {
                this.mShortcutTray.show();
                this.mShortcutTray.clearSelected();
                this.mDialogBackground.clearFocus();
                this.mSettingDialogListener.onCloseSettingDialog(this, true);
            } else {
                this.mSettingDialogListener.onCloseSettingDialog(this, false);
            }
        }
        return handled;
    }

    public void closeDialogs() {
        closeDialogs(false);
    }

    public void closeDialogs(boolean withAnimation) {
        boolean handled = false | closeSecondLayerDialog(withAnimation);
        boolean handled2 = handled | closeShortcutDialog(withAnimation) | closeControlDialog(withAnimation) | closeMenuDialog(withAnimation);
        resetEnabledOfDialogs();
        if (handled2 && !isDialogOpened()) {
            this.mShortcutTray.show();
            this.mDialogBackground.clearFocus();
            this.mSettingDialogListener.onCloseSettingDialog(this, true);
        }
    }

    public void setUiOrientation(int orientation) {
        this.mOrientation = orientation;
        if (this.mShortcutTray != null) {
            this.mShortcutTray.setSensorOrientation(this.mOrientation);
        }
        for (SettingDialogInterface dialog : getDialogList()) {
            if (dialog != null) {
                dialog.setSensorOrientation(this.mOrientation);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SettingDialogInterface getCurrentDialog() {
        for (SettingDialogInterface dialog : getDialogList()) {
            if (dialog != null) {
                return dialog;
            }
        }
        return null;
    }

    private void resetEnabledOfDialogs() {
        SettingDialogInterface[] dialogs = {this.mSecondLayerDialog, this.mShortcutDialog, this.mControlDialog, this.mMenuDialog};
        SettingDialogInterface current = getCurrentDialog();
        int length = dialogs.length;
        for (int i = 0; i < length; i++) {
            SettingDialogInterface dialog = dialogs[i];
            if (dialog != null) {
                dialog.setEnabled(dialog == current);
            }
        }
    }

    private boolean closeMenuDialog(boolean isAnimation) throws Resources.NotFoundException {
        if (this.mMenuDialog == null) {
            return false;
        }
        this.mDialogTags.remove(this.mMenuDialog);
        if (isAnimation) {
            this.mSettingAnimation.setCloseDialogAnimation(this.mMenuDialog, this.mOrientation);
        }
        this.mMenuDialog.close();
        this.mMenuDialog = null;
        this.mIsMenuDialogOpened = false;
        removeLastRectList();
        return true;
    }

    private boolean closeShortcutDialog(boolean isAnimation) throws Resources.NotFoundException {
        if (this.mShortcutDialog == null) {
            return false;
        }
        this.mDialogTags.remove(this.mShortcutDialog);
        if (isAnimation) {
            this.mSettingAnimation.setCloseDialogAnimation(this.mShortcutDialog, this.mOrientation);
        }
        this.mShortcutDialog.close();
        this.mShortcutDialog = null;
        removeLastRectList();
        return true;
    }

    private boolean closeControlDialog(boolean isAnimation) throws Resources.NotFoundException {
        if (this.mControlDialog == null) {
            return false;
        }
        this.mDialogTags.remove(this.mControlDialog);
        if (isAnimation) {
            this.mSettingAnimation.setCloseDialogAnimation(this.mControlDialog, this.mOrientation);
        }
        this.mControlDialog.close();
        this.mControlDialog = null;
        removeLastRectList();
        return true;
    }

    private boolean closeSecondLayerDialog(boolean isAnimation) throws Resources.NotFoundException {
        if (this.mSecondLayerDialog == null) {
            return false;
        }
        this.mDialogTags.remove(this.mSecondLayerDialog);
        if (isAnimation) {
            this.mSettingAnimation.setCloseDialogAnimation(this.mSecondLayerDialog, this.mOrientation);
        }
        this.mSecondLayerDialog.close();
        this.mSecondLayerDialog = null;
        removeLastRectList();
        resetEnabledOfDialogs();
        return true;
    }

    private SettingDialogInterface[] getDialogList() {
        return new SettingDialogInterface[]{this.mSecondLayerDialog, this.mShortcutDialog, this.mControlDialog, this.mMenuDialog};
    }

    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateShortcutLayoutCoordinateData() throws Resources.NotFoundException {
        Rect container = getContainerRect();
        if (container == null) {
            return null;
        }
        Rect shortcutIcon = new Rect();
        if (this.mShortcutTray == null) {
            return null;
        }
        if (this.mShortcutTray.getSelectedItemIconVisibleRect(shortcutIcon)) {
            return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(container, shortcutIcon);
        }
        return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(container, null);
    }

    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateSecondLayerDialogLayoutCoordinateData() throws Resources.NotFoundException {
        Rect container = getContainerRect();
        if (container == null) {
            return null;
        }
        Rect menuItem = new Rect();
        if (this.mMenuDialog != null) {
            if (!this.mMenuDialog.getSelectedItemRect(menuItem)) {
                return null;
            }
        } else if (this.mShortcutDialog == null || !this.mShortcutDialog.getSelectedItemRect(menuItem)) {
            return null;
        }
        return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(container, menuItem);
    }

    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateMenuDialogLayoutCoordinateData() throws Resources.NotFoundException {
        Rect container = getContainerRect();
        if (container == null) {
            return null;
        }
        Rect shortcutIcon = new Rect();
        if (this.mShortcutTray == null) {
            return null;
        }
        if (this.mShortcutTray.getSelectedItemIconVisibleRect(shortcutIcon)) {
            return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(container, shortcutIcon);
        }
        return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(container, null);
    }

    private Rect getContainerRect() throws Resources.NotFoundException {
        Rect container = new Rect();
        if (!this.mDialogBackground.getGlobalVisibleRect(container)) {
            return null;
        }
        Resources res = this.mContext.getResources();
        int marginLeft = res.getDimensionPixelSize(R.dimen.left_container_width);
        int marginRight = res.getDimensionPixelSize(R.dimen.right_container_width);
        container.set(marginLeft, 0, (container.width() - marginLeft) - marginRight, container.height());
        return container;
    }

    private class Background extends FrameLayout {
        public Background(Context context) {
            super(context);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            SettingDialogInterface current = SettingDialogStack.this.getCurrentDialog();
            if (current != null) {
                switch (event.getAction()) {
                    case 1:
                        if (!current.hitTest((int) event.getRawX(), (int) event.getRawY())) {
                            SettingDialogStack.this.closeDialogs(true);
                            break;
                        }
                        break;
                }
                return true;
            }
            return false;
        }

        @Override // android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int keyCode, KeyEvent event) {
            // First, let an external key listener intercept if present.
            View.OnKeyListener listener = SettingDialogStack.this.mOnInterceptKeyListener; // access$100 in smali
            if (listener != null && listener.onKey(this, keyCode, event)) {
                return true;
            }

            switch (keyCode) {
                case KeyEvent.KEYCODE_BACK: {
                    // Always close when BACK is pressed.
                    SettingDialogStack.this.closeDialogs();
                    return true;
                }
                case KeyEvent.KEYCODE_CAMERA:
                case KeyEvent.KEYCODE_FOCUS: {
                    // If any dialog is open, close and consume.
                    if (SettingDialogStack.this.isDialogOpened()) {
                        SettingDialogStack.this.closeDialogs();
                        return true;
                    }
                    break;
                }
                default:
                    break;
            }
            return false;
        }

        @Override // android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyUp(int keyCode, KeyEvent event) {
            switch (event.getKeyCode()) {
                case 4:
                    return SettingDialogStack.this.closeCurrentDialog();
                default:
                    return false;
            }
        }
    }

    public SettingTabDialogBasic getMenuDialog() {
        return this.mMenuDialog;
    }

    public SettingDialogBasic getSecondLayerDialog() {
        return this.mSecondLayerDialog;
    }

    public Stack<Rect> getBlurTargetAreaList() {
        this.mTargetAreaList.clear();
        Rect shortcutIconRect = new Rect();
        if (this.mShortcutTray.getSelectedItemIconVisibleRect(shortcutIconRect)) {
            this.mTargetAreaList.push(shortcutIconRect);
        }
        SettingDialogInterface[] dialogs = getDialogList();
        for (int i = dialogs.length - 1; i >= 0; i--) {
            SettingDialogInterface dialog = dialogs[i];
            if (dialog != null) {
                dialog.getLayoutCoordinator().coordinatePosition(this.mOrientation);
                this.mTargetAreaList.push(dialog.getLayoutCoordinator().getDialogRect());
            }
        }
        return this.mTargetAreaList;
    }

    private void removeLastRectList() {
        if (!this.mTargetAreaList.empty()) {
            this.mTargetAreaList.pop();
        }
    }

    public void updateMenuDialog(SettingAdapter commonKeyAdapter) {
        SettingAdapter adapter = this.mMenuDialog.getAdapter();
        adapter.clear();
        for (int i = 0; i < commonKeyAdapter.getCount(); i++) {
            SettingItem item = commonKeyAdapter.getItem(i);
            adapter.add(item);
        }
        adapter.notifyDataSetChanged();
    }
}
