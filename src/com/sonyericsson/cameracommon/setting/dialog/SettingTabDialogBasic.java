package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public class SettingTabDialogBasic extends SettingDialog {
    public static final String TAG = "SettingTabDialogBasic";
    protected SettingAdapter mAdapter;
    protected GridView mGridView;
    private OnItemSelectedListener mItemSelectedListener;
    private int mNumberOfTabs;
    private SettingDialogBasicParams mParams;
    private final DataSetObserver mTabBodyAdapterObserver;
    private SettingTabs mTabs;

    public SettingTabDialogBasic(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mNumberOfTabs = 0;
        this.mTabBodyAdapterObserver = new DataSetObserver() { // from class: com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                SettingTabDialogBasic.this.registerOnItemSelectedListener();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                SettingTabDialogBasic.this.registerOnItemSelectedListener();
            }
        };
        this.mItemSelectedListener = new OnItemSelectedListener() { // from class: com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic.2
            @Override // com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener
            public void onItemSelected(SettingItem item) {
                for (int i = 0; i < SettingTabDialogBasic.this.mAdapter.getCount(); i++) {
                    SettingItem testItem = SettingTabDialogBasic.this.mAdapter.getItem(i);
                    if (testItem != item) {
                        testItem.setSelected(false);
                    }
                }
                SettingTabDialogBasic.this.mAdapter.notifyDataSetChanged();
            }
        };
    }

    private int getPixel(int id) {
        return getResources().getDimensionPixelSize(id);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mGridView = (GridView) findViewById(R.id.setting_gridview);
        int fadingEdgeLength = getPixel(R.dimen.setting_dialog_scroll_fading_edge_length);
        this.mGridView.setFadingEdgeLength(fadingEdgeLength);
        this.mGridView.setVerticalFadingEdgeEnabled(true);
        this.mGridView.setChoiceMode(1);
        this.mTabs = (SettingTabs) findViewById(R.id.tabs);
    }

    public void setTabs(SettingTabs.Tab... tabs) {
        this.mTabs.setTabs(tabs);
    }

    public void setSelectedTab(SettingTabs.Tab tab) {
        this.mTabs.setSelected(tab);
    }

    public SettingTabs.Tab getSelectedTab() {
        return this.mTabs.getSelected();
    }

    public void setOnSelectedTabListener(SettingTabs.OnTabSelectedListener listener) {
        this.mTabs.setOnSelectedListener(listener);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialog, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public void setAdapter(SettingAdapter adapter) {
        if (this.mParams != null) {
            adapter.setItemHeight(this.mParams.getItemHeight(getContext()));
        }
        adapter.setRoundTopItemBackground(false);
        this.mGridView.setAdapter((ListAdapter) adapter);
        if (adapter.getCount() > 0) {
            this.mGridView.setSelection(adapter.getSelectedPosition());
        }
        this.mAdapter = adapter;
        invalidate();
    }

    public void setSettingDialogParams(SettingDialogBasicParams params) {
        Context ctx = getContext();
        this.mParams = params;
        findViewById(R.id.background).setBackgroundResource(this.mParams.getBackgroundId());
        findViewById(R.id.container).setPadding(this.mParams.getPadding(ctx), this.mParams.getPadding(ctx), this.mParams.getPadding(ctx), this.mParams.getPadding(ctx));
        if (this.mGridView != null && this.mGridView.getAdapter() != null && (this.mGridView.getAdapter() instanceof SettingAdapter)) {
            ((SettingAdapter) this.mGridView.getAdapter()).setItemHeight(this.mParams.getItemHeight(ctx));
        }
    }

    public void setTitle(int textId) {
        TextView titleTextView = (TextView) findViewById(R.id.setting_title);
        if (titleTextView != null) {
            titleTextView.setText(textId);
            titleTextView.setContentDescription(titleTextView.getText());
            View title = findViewById(R.id.setting_title_layout);
            title.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerOnItemSelectedListener() {
        for (int i = 0; i < this.mAdapter.getCount(); i++) {
            this.mAdapter.getItem(i).setOnSelectedListener(this.mItemSelectedListener);
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialog, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    public void setSensorOrientation(int orientation) {
        requestLayout();
        super.setSensorOrientation(orientation);
        this.mGridView.performAccessibilityAction(64, null);
    }

    public void setNumColumns(int numColumns) {
        this.mGridView.setNumColumns(numColumns);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public boolean getSelectedItemRect(Rect rect) {
        for (int i = 0; i < this.mGridView.getChildCount(); i++) {
            View v = this.mGridView.getChildAt(i);
            if (v.getTag() instanceof SettingDialogItem) {
                SettingDialogItem item = (SettingDialogItem) v.getTag();
                if (item.getItem().isSelected()) {
                    rect.set(v.getLeft(), v.getTop(), v.getRight(), v.getBottom());
                    rect.offset(this.mGridView.getLeft(), this.mGridView.getTop());
                    return true;
                }
            }
        }
        return false;
    }

    public SettingAdapter getAdapter() {
        return this.mAdapter;
    }

    public int numberOfTabs() {
        return this.mNumberOfTabs;
    }

    public void setNumberOfTabs(int numberOfTabs) {
        this.mNumberOfTabs = numberOfTabs;
    }
}