package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public class SettingDialogBasic extends SettingDialog {
    public static final String TAG = "SettingDialogBasic";
    private final int ITEM_DIVIDER_HEIGHT;
    private final int TITLE_HEIGHT;
    protected GridView mGridView;
    private SettingDialogBasicParams mParams;
    private View mSelectedView;

    public SettingDialogBasic(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TITLE_HEIGHT = getPixel(R.dimen.title_text_height) + getPixel(R.dimen.divider_height);
        this.ITEM_DIVIDER_HEIGHT = getPixel(R.dimen.divider_height);
    }

    private int getPixel(int id) {
        return getResources().getDimensionPixelSize(id);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mGridView = (GridView) findViewById(R.id.setting_gridview);
        this.mGridView.setFocusable(this.mGridView.isFocusable());
        this.mGridView.setFocusableInTouchMode(this.mGridView.isFocusableInTouchMode());
        int fadingEdgeLength = getPixel(R.dimen.setting_dialog_scroll_fading_edge_length);
        this.mGridView.setFadingEdgeLength(fadingEdgeLength);
        this.mGridView.setVerticalFadingEdgeEnabled(true);
        this.mGridView.setChoiceMode(1);
        this.mGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                SettingDialogBasic.this.mSelectedView = view;
                SettingAdapter adapter = (SettingAdapter) SettingDialogBasic.this.mGridView.getAdapter();
                adapter.getItem(position).select();
            }
        });
    }

    public void setSettingDialogParams(SettingDialogBasicParams params) {
        Context ctx = getContext();
        this.mParams = params;
        findViewById(R.id.background).setBackgroundResource(this.mParams.getBackgroundId());
        findViewById(R.id.container).setPadding(this.mParams.getPadding(ctx), this.mParams.getPadding(ctx), this.mParams.getPadding(ctx), this.mParams.getPadding(ctx));
        if (this.mGridView.getAdapter() instanceof SettingAdapter) {
            ((SettingAdapter) this.mGridView.getAdapter()).setItemHeight(this.mParams.getItemHeight(ctx));
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialog, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public void setAdapter(SettingAdapter adapter) {
        if (this.mParams != null) {
            adapter.setItemHeight(this.mParams.getItemHeight(getContext()));
        }
        adapter.setRoundTopItemBackground(!isVisibleTitle());
        this.mGridView.setAdapter((ListAdapter) adapter);
        if (adapter.getCount() > 0) {
            this.mGridView.setSelection(adapter.getSelectedPosition());
        }
    }

    public SettingAdapter getAdapter() {
        return (SettingAdapter) this.mGridView.getAdapter();
    }

    public void setTitle(int textId) {
        TextView titleTextView = (TextView) findViewById(R.id.setting_title);
        titleTextView.setText(textId);
        titleTextView.setContentDescription(titleTextView.getText());
        View title = findViewById(R.id.setting_title_layout);
        title.setVisibility(0);
        SettingAdapter adapter = (SettingAdapter) this.mGridView.getAdapter();
        if (adapter != null) {
            adapter.setRoundTopItemBackground(false);
        }
    }

    private boolean isVisibleTitle() {
        return findViewById(R.id.setting_title_layout).getVisibility() == 0;
    }

    private int getItemNum() {
        return this.mGridView.getAdapter().getCount();
    }

    private int getTitleHeight() {
        View titleView = findViewById(R.id.setting_title_layout);
        if (titleView.getVisibility() == 0) {
            return this.TITLE_HEIGHT;
        }
        return 0;
    }

    public int computeHeight(int numColumn) {
        int selectorPadding = getSelectorPadding();
        Context ctx = getContext();
        if (numColumn == 2) {
            return (int) (((getItemNum() / 2.0f) * this.mParams.getItemHeight(getContext())) + ((getItemNum() / 2.0f) * this.ITEM_DIVIDER_HEIGHT) + getTitleHeight() + (this.mParams.getPadding(ctx) * 2) + selectorPadding);
        }
        return (getItemNum() * this.mParams.getItemHeight(ctx)) + (getItemNum() * this.ITEM_DIVIDER_HEIGHT) + getTitleHeight() + (this.mParams.getPadding(ctx) * 2) + selectorPadding;
    }

    public int computeMaxHeight(int numRows) {
        int selectorPadding = getSelectorPadding();
        return (this.mParams.getItemHeight(getContext()) * numRows) + (this.mParams.getPadding(getContext()) * 2) + getTitleHeight() + (this.ITEM_DIVIDER_HEIGHT * numRows) + selectorPadding;
    }

    public int computeWidth(int numColumn) {
        return numColumn == 2 ? getResources().getDimensionPixelSize(R.dimen.setting_dialog_shortcut_2_column_width) : getResources().getDimensionPixelSize(R.dimen.setting_dialog_shortcut_width);
    }

    public int getNumRows(int screenHeight) {
        int contentBodyHeight = (screenHeight - (this.mParams.getPadding(getContext()) * 2)) - getTitleHeight();
        return (this.ITEM_DIVIDER_HEIGHT + contentBodyHeight) / (this.mParams.getItemHeight(getContext()) + this.ITEM_DIVIDER_HEIGHT);
    }

    private int getSelectorPadding() {
        Rect padding = new Rect();
        if (this.mGridView.getSelector() == null) {
            return 0;
        }
        this.mGridView.getSelector().getPadding(padding);
        return padding.bottom + padding.top;
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
        if (this.mSelectedView == null || !this.mSelectedView.getGlobalVisibleRect(rect)) {
            return false;
        }
        convertRectInLandscape(rect);
        return true;
    }

    private void convertRectInLandscape(Rect rect) {
        if (this.mOrientation == 1) {
            int x = (int) (rect.top + getX());
            int y = (int) (rect.left - getX());
            int width = rect.height();
            int height = rect.width();
            rect.set(x, y, x + width, y + height);
        }
    }
}