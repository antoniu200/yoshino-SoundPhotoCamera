package com.sonymobile.android.addoncamera.soundphoto.view.settingui;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonyericsson.cameracommon.utility.RegionConfig;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingExecutorFactory;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingUi;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingUiUtil;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity;
import com.sonymobile.android.addoncamera.soundphoto.setting.CapturingMode;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterKey;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingSelectability;
import com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder;

/* loaded from: classes.dex */
public class SoundPhotoSettingUi extends SettingUi {
    private final SoundPhotoCameraActivity mActivity;
    private SettingAdapter mAllItems;
    private final ModeSettingItemResolver mItemResolver;
    private final SettingPreferenceManager mPreference;
    private final SettingExecutorInterface<Shortcut> mShortcutItemExecutor;
    private final SettingUiUtil mUtil;
    private final SoundPhotoViewFinder mViewFinder;
    private static final String TAG = SoundPhotoSettingUi.class.getSimpleName();
    private static final Shortcut[] SHORTCUT_ITEMS = {Shortcut.Space, Shortcut.Space, Shortcut.SelfTimer, Shortcut.Facing, Shortcut.Menu};
    private static final Shortcut[] SHORTCUT_ITEMS_FLASH_SUPPORTED = {Shortcut.Space, Shortcut.SelfTimer, Shortcut.Flash, Shortcut.Facing, Shortcut.Menu};
    private static final Shortcut[] SHORTCUT_ITEMS_TABLET = {Shortcut.Space, Shortcut.Space, Shortcut.Space, Shortcut.Space, Shortcut.SelfTimer, Shortcut.Facing, Shortcut.Menu};
    private static final CommonSettingKey[] COMMON_ITEMS = {CommonSettingKey.GEO_TAG, CommonSettingKey.TOUCH_CAPTURE, CommonSettingKey.VOLUME_KEY, CommonSettingKey.SHUTTER_SOUND, CommonSettingKey.SAVE_DESTINATION, CommonSettingKey.TOUCH_BLOCK, CommonSettingKey.TERM_OF_USE, CommonSettingKey.SOFTWARE_LICENSES};
    private static final SettingTabs.Tab[] TABS = {SettingTabs.Tab.Common};

    private enum Shortcut {
        Space,
        Facing,
        Flash,
        Menu,
        SelfTimer
    }

    public SoundPhotoSettingUi(SoundPhotoCameraActivity activity, SettingDialogStack dialogStack, CommonSettings commonSettings, SettingPreferenceManager preference, SettingChangerInterface<ParameterValue> settingChanger, SoundPhotoViewFinder viewFiner) {
        super(activity, dialogStack, COMMON_ITEMS);
        this.mShortcutItemExecutor = new SettingExecutorInterface<Shortcut>() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.settingui.SoundPhotoSettingUi.1
            @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
            public void onExecute(TypedSettingItem<Shortcut> item) {
                final Shortcut tag = item.getData();
                switch (tag) {
                    case Flash: {
                        if (mDialogStack.isOpened(tag)) {
                            mDialogStack.closeDialogs();
                        } else {
                            mDialogStack.closeDialogs();
                            mDialogStack.updateShortcutSelected(tag);
                            SettingAdapter flashItems = mItemResolver.generateFlashItems();
                            if (!flashItems.isEmpty()) {
                                openShortcutDialog(flashItems,
                                        R.string.cam_strings_flash_torch_txt,
                                        tag);
                            }
                        }
                        break;
                    }
                    case SelfTimer: {
                        if (mActivity.isSelfTimerAvailable()) {
                            if (mDialogStack.isOpened(tag)) {
                                mDialogStack.closeDialogs();
                            } else {
                                mDialogStack.closeDialogs();
                                mDialogStack.updateShortcutSelected(tag);
                                SettingAdapter selfTimerItems = mItemResolver.generateSelfTimerItems();
                                if (!selfTimerItems.isEmpty()) {
                                    openShortcutDialog(selfTimerItems,
                                            R.string.cam_strings_self_timer_txt,
                                            tag);
                                }
                            }
                        }
                        break;
                    }
                    case Menu: {
                        if (mActivity.isMenuAvailable()) {
                            if (mDialogStack.isOpened(tag)) {
                                mDialogStack.closeDialogs();
                            } else {
                                openMainSettingsDialog(tag);
                            }
                        } else {
                            mDialogStack.clearShortcutSelected();
                        }
                        break;
                    }
                    case Facing: {
                        // No dialog; just toggle the camera and let the UI update
                        mViewFinder.onToggledCameraSwitch();
                        break;
                    }
                    case Space:
                    default:
                        // intentionally no-op
                        break;
                }
            }
        };
        this.mActivity = activity;
        this.mPreference = preference;
        SettingExecutorFactory<ParameterKey, ParameterValue> executorFactory = new SettingExecutorFactory<>(this.mActivity, this, settingChanger);
        this.mItemResolver = new ModeSettingItemResolver(this.mActivity, preference, executorFactory);
        this.mUtil = new SettingUiUtil(this, Shortcut.Menu);
        this.mViewFinder = viewFiner;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.setting.SettingUi
    public void setup() {
        super.setup();
        updateShortcutItems();
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.setting.SettingUi, com.sonyericsson.cameracommon.setting.dialog.SettingTabs.OnTabSelectedListener
    public void onTabSelected(SettingTabs.Tab tab) {
        super.onTabSelected(tab);
        updateMenuItems(true);
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.setting.SettingUi, com.sonyericsson.cameracommon.viewfinder.setting.OnChangedCommonSettingListener
    public void onSettingChanged(CommonSettingValue value) {
        switch (value.getCommonSettingKey()) {
            case GEO_TAG:
                if (RegionConfig.isChinaRegion(this.mActivity) && value == Geotag.ON) {
                    this.mDialogStack.closeDialogs();
                }
                this.mActivity.getGeoTagManager().setGeotag((Geotag) value, this.mActivity, this, new GeotagDialogListener(this.mActivity, this));
                break;
            case SAVE_DESTINATION:
                this.mActivity.setDestinationToSave();
                this.mActivity.getStorageManager().requestCheckAll();
                this.mActivity.getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, this.mActivity.getStorageManager().isToggledStorageReady());
                break;
            case TOUCH_CAPTURE:
                this.mActivity.setTouchCapture((TouchCapture) value);
                break;
        }
        updateMenuItems(false);
    }

    public void updateMenuItems(boolean resetScrollPosition) {
        setupAllItemsAdapter();
        if (!this.mAllItems.isEmpty()) {
            updateMenuItems(this.mAllItems, resetScrollPosition);
        }
    }

    public void openSaveDestinationSettingDialog() {
        setupAllItemsAdapter();
        if (!this.mAllItems.isEmpty()) {
            this.mUtil.openMenuDialogAndSelectItem(this.mAllItems, CommonSettingKey.SAVE_DESTINATION, R.string.cam_strings_capturing_mode_soundphoto_txt, menuDialogMaxItemCount());
        }
    }

    public void updateShortcutItems() {
        Shortcut[] shortItems;
        SettingAdapter adapter = new SettingAdapter(this.mActivity);
        if (ProductConfig.isTablet(this.mActivity)) {
            shortItems = SHORTCUT_ITEMS_TABLET;
        } else if (this.mPreference.getCurrentPreference().getSelectability(Parameters.FLASH) == SettingSelectability.SELECTABLE) {
            shortItems = SHORTCUT_ITEMS_FLASH_SUPPORTED;
        } else {
            shortItems = SHORTCUT_ITEMS;
        }
        for (Shortcut item : shortItems) {
            if (isVisible(item)) {
                adapter.add(SettingItemBuilder.build(item).iconId(getShortcutIconResource(item)).dialogItemType(0).executor(this.mShortcutItemExecutor).commit());
            } else {
                adapter.add(SettingItemBuilder.build(Shortcut.Space).iconId(getShortcutIconResource(Shortcut.Space)).dialogItemType(0).executor(this.mShortcutItemExecutor).commit());
            }
        }
        updateShortcutItems(adapter);
    }

    private boolean isVisible(Shortcut item) {
        switch (item) {
            case Space:
                return false;
            case Flash:
                return this.mPreference.getCurrentPreference().getSelectability(Parameters.FLASH) == SettingSelectability.SELECTABLE;
            case SelfTimer:
                return this.mPreference.getCurrentPreference().getSelectability(Parameters.SELF_TIMER) == SettingSelectability.SELECTABLE && this.mPreference.getCurrentPreference().capturingMode == CapturingMode.FRONT;
            default:
                return true;
        }
    }

    private int getShortcutIconResource(Shortcut item) {
        switch (item) {
            case Flash:
                return this.mPreference.getCurrentPreference().get(Parameters.FLASH).iconId();
            case SelfTimer:
                return this.mPreference.getCurrentPreference().get(Parameters.SELF_TIMER).iconId();
            case Menu:
                return R.drawable.cam_option_menu_icn;
            case Facing:
                return R.drawable.cam_main_front_toggle_icn;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openMainSettingsDialog(Shortcut tag) {
        setupAllItemsAdapter();
        if (!this.mAllItems.isEmpty()) {
            openMenuDialog(this.mAllItems, R.string.cam_strings_capturing_mode_soundphoto_txt, Shortcut.Menu, menuDialogMaxItemCount());
        }
    }

    private int menuDialogMaxItemCount() {
        return this.mAllItems.getCount();
    }

    void openMenuAndSelectCommonTab() {
        setupAllItemsAdapter();
        if (!this.mAllItems.isEmpty()) {
            openMenuDialog(this.mAllItems, R.string.cam_strings_capturing_mode_soundphoto_txt, Shortcut.Menu, menuDialogMaxItemCount());
        }
    }

    private void setupAllItemsAdapter() {
        this.mAllItems = this.mItemResolver.generatePhotoSettingItems();
        SettingAdapter moreItems = this.mCommonItemResolver.generateItemAdapter();
        for (int i = 0; i < moreItems.getCount(); i++) {
            this.mAllItems.add(moreItems.getItem(i));
        }
    }
}