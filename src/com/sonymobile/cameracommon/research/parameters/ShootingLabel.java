package com.sonymobile.cameracommon.research.parameters;

import android.widget.ActivityChooserView;
import com.sonyericsson.cameracommon.utility.PresetConfigurationResolver;
import com.sonymobile.cameracommon.research.parameters.Event;
import java.util.List;

/* loaded from: classes.dex */
public class ShootingLabel {
    public static final String RECOGNIZED_SCENE_ACTION = "action";
    public static final String RECOGNIZED_SCENE_AUTO = "auto";
    public static final String RECOGNIZED_SCENE_BABY = "baby";
    public static final String RECOGNIZED_SCENE_BACKLIGHT = "backlight";
    public static final String RECOGNIZED_SCENE_BACKLIGHT_PORTRAIT = "backlight-portrait";
    public static final String RECOGNIZED_SCENE_BEACH = "beach";
    public static final String RECOGNIZED_SCENE_CANDLELIGHT = "candlelight";
    public static final String RECOGNIZED_SCENE_DARK = "dark";
    public static final String RECOGNIZED_SCENE_DISH = "dish";
    public static final String RECOGNIZED_SCENE_DOCUMENT = "document";
    public static final String RECOGNIZED_SCENE_FIREWORKS = "fireworks";
    public static final String RECOGNIZED_SCENE_LANDSCAPE = "landscape";
    public static final String RECOGNIZED_SCENE_MACRO = "macro";
    public static final String RECOGNIZED_SCENE_NIGHT = "night";
    public static final String RECOGNIZED_SCENE_NIGHT_PORTRAIT = "night-portrait";
    public static final String RECOGNIZED_SCENE_PARTY = "party";
    public static final String RECOGNIZED_SCENE_PORTRAIT = "portrait";
    public static final String RECOGNIZED_SCENE_SNOW = "snow";
    public static final String RECOGNIZED_SCENE_SPORTS = "sports";
    public static final String RECOGNIZED_SCENE_SPOTLIGHT = "spot-light";
    public static final String RECOGNIZED_SCENE_STEADYPHOTO = "steadyphoto";
    public static final String RECOGNIZED_SCENE_SUNSET = "sunset";
    public static final String RECOGNIZED_SCENE_THEATRE = "theatre";
    public static final int SEMI_AUTO_OFF = 1;
    public static final int SEMI_AUTO_ON = 0;
    public static final String TAG = "ShootingLabel";

    private interface IntParameter extends Parameter {
        boolean equals(int i);
    }

    public interface Parameter {
        char getConvertedCharacter();
    }

    private interface StringParameter extends Parameter {
        boolean equals(String str);
    }

    public static Parameter getOrientationParameter(int orientation) {
        return getIntParameter(orientation, Orientation.values());
    }

    public static Parameter getZoomParameter(int zoom) {
        return getIntParameter(zoom, Zoom.values());
    }

    public static Parameter getHandSignLostParameter(int num) {
        return getIntParameter(num, HandSignLostNum.values());
    }

    public static Parameter getFaceNumParameter(int num) {
        return getIntParameter(num, FaceNum.values());
    }

    public static Parameter getRecognizedSceneParameter(String scene) {
        return getStringParameter(scene, RecognizedScene.values());
    }

    public static Parameter getCaptureTriggerParameter(String trigger) {
        return getStringParameter(trigger, CaptureTrigger.values());
    }

    public static Parameter getFlashParameter(String flash) {
        return getStringParameter(flash, Flash.values());
    }

    public static Parameter getSelfTimerParameter(String selfTimer) {
        return getStringParameter(selfTimer, SelfTimer.values());
    }

    public static Parameter getSemiAutoParameter(int semiAuto) {
        return getIntParameter(semiAuto, SemiAuto.values());
    }

    public static Parameter getAfDoneKeepingTimeParameter(String time) {
        return getStringParameter(time, AfDoneKeepingTime.values());
    }

    public static Parameter getPredictiveCaptureNumParameter(int predictiveCaptureNum) {
        return getIntParameter(predictiveCaptureNum, PredictiveCaptureNum.values());
    }

    public static Parameter getObjectTrackingParameter(String objectTracking) {
        return getStringParameter(objectTracking, ObjectTracking.values());
    }

    public static Parameter getIntParameter(int intVal, IntParameter[] params) {
        for (IntParameter val : params) {
            if (val.equals(intVal)) {
                return val;
            }
        }
        return null;
    }

    public static Parameter getStringParameter(String stringVal, StringParameter[] params) {
        for (StringParameter val : params) {
            if (val.equals(stringVal)) {
                return val;
            }
        }
        return null;
    }

    public static String convertParameterToString(List<Parameter> params) {
        StringBuilder buf = new StringBuilder();
        for (Parameter p : params) {
            buf.append(p.getConvertedCharacter());
        }
        return buf.toString();
    }

    private enum Orientation implements IntParameter {
        ORIENTATION_0(' ', 0),
        ORIENTATION_90('!', 90),
        ORIENTATION_180('\"', 180),
        ORIENTATION_270('#', 270);

        private char mConvertedChar;
        private int mValue;

        Orientation(char converted, int value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.IntParameter
        public boolean equals(int value) {
            return this.mValue == value;
        }
    }

    private enum Zoom implements IntParameter {
        ZOOM_0('$', 0),
        ZOOM_1('%', 1),
        ZOOM_2('&', 2),
        ZOOM_3('(', 3),
        ZOOM_4(')', 4),
        ZOOM_5('*', 5),
        ZOOM_6('+', 6),
        ZOOM_7(',', 7),
        ZOOM_8('-', 8);

        private char mConvertedChar;
        private int mValue;

        Zoom(char converted, int value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.IntParameter
        public boolean equals(int value) {
            return this.mValue == value;
        }
    }

    private enum HandSignLostNum implements IntParameter {
        NA('k', -1, -1),
        ZERO('l', 0, 0),
        ONE('m', 1, 1),
        TWO_TO_FOUR('n', 2, 4),
        FIVE_AND_MORE('o', 5, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);

        private char mConvertedChar;
        private final int mMaxNum;
        private final int mMinNum;

        HandSignLostNum(char converted, int minNum, int maxNum) {
            this.mConvertedChar = converted;
            this.mMinNum = minNum;
            this.mMaxNum = maxNum;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.IntParameter
        public boolean equals(int value) {
            return value >= this.mMinNum && value <= this.mMaxNum;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }
    }

    private enum FaceNum implements IntParameter {
        FACE_NUM_0('.', 0),
        FACE_NUM_1('/', 1),
        FACE_NUM_2('0', 2),
        FACE_NUM_3('1', 3),
        FACE_NUM_4('2', 4),
        FACE_NUM_5('3', 5);

        private char mConvertedChar;
        private int mValue;

        FaceNum(char converted, int value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.IntParameter
        public boolean equals(int value) {
            return this.mValue == value;
        }
    }

    private enum RecognizedScene implements StringParameter {
        AUTO('4', "auto"),
        ACTION('5', ShootingLabel.RECOGNIZED_SCENE_ACTION),
        PORTRAIT('6', ShootingLabel.RECOGNIZED_SCENE_PORTRAIT),
        LANDSCAPE('7', "landscape"),
        NIGHT('8', ShootingLabel.RECOGNIZED_SCENE_NIGHT),
        NIGHT_PORTRAIT('9', ShootingLabel.RECOGNIZED_SCENE_NIGHT_PORTRAIT),
        THEATRE(':', ShootingLabel.RECOGNIZED_SCENE_THEATRE),
        BEACH(';', ShootingLabel.RECOGNIZED_SCENE_BEACH),
        SNOW('<', ShootingLabel.RECOGNIZED_SCENE_SNOW),
        SUNSET('=', ShootingLabel.RECOGNIZED_SCENE_SUNSET),
        STEADYPHOTO('>', ShootingLabel.RECOGNIZED_SCENE_STEADYPHOTO),
        FIREWORKS('?', ShootingLabel.RECOGNIZED_SCENE_FIREWORKS),
        SPORTS('@', ShootingLabel.RECOGNIZED_SCENE_SPORTS),
        PARTY('A', ShootingLabel.RECOGNIZED_SCENE_PARTY),
        CANDLELIGHT('B', ShootingLabel.RECOGNIZED_SCENE_CANDLELIGHT),
        DOCUMENT('C', "document"),
        BACKLIGHT('D', "backlight"),
        BACKLIGHT_PORTRAIT('E', "backlight-portrait"),
        DARK('F', "dark"),
        BABY('G', "baby"),
        SPOTLIGHT('H', "spot-light"),
        DISH('I', "dish"),
        MACRO('J', ShootingLabel.RECOGNIZED_SCENE_MACRO);

        private char mConvertedChar;
        private String mValue;

        RecognizedScene(char converted, String value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.StringParameter
        public boolean equals(String value) {
            return this.mValue.equals(value);
        }
    }

    private enum CaptureTrigger implements StringParameter {
        CAMERA_KEY('K', Event.CaptureTrigger.CAMERA_KEY.toString()),
        CAPTURE_BUTTON('L', Event.CaptureTrigger.CAPTURE_BUTTON.toString()),
        TOUCH_CAPTURE('M', Event.CaptureTrigger.TOUCH_CAPTURE.toString()),
        VOLUME_KEY('N', Event.CaptureTrigger.VOLUME_KEY.toString()),
        FAST_CAPTURING_LAUNCH('O', Event.CaptureTrigger.FAST_CAPTURING_LAUNCH.toString()),
        SMILE_CAPTURE('P', Event.CaptureTrigger.SMILE_CAPTURE.toString()),
        SELF_TIMER('Q', Event.CaptureTrigger.SELF_TIMER.toString()),
        WEARABLE('R', Event.CaptureTrigger.WEARABLE.toString()),
        GESTURE('p', Event.CaptureTrigger.GESTURE.toString()),
        OTHER('S', Event.CaptureTrigger.OTHER.toString());

        private char mConvertedChar;
        private String mValue;

        CaptureTrigger(char converted, String value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.StringParameter
        public boolean equals(String value) {
            return this.mValue.equals(value);
        }
    }

    private enum Flash implements StringParameter {
        AUTO('T', "AUTO"),
        ON('U', "ON"),
        RED_EYE('V', "RED_EYE"),
        OFF('W', PresetConfigurationResolver.VALUE_SHUTTER_SOUND_OFF),
        LED_ON('X', "LED_ON"),
        LED_OFF('Y', "LED_OFF");

        private char mConvertedChar;
        private String mValue;

        Flash(char converted, String value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.StringParameter
        public boolean equals(String value) {
            return this.mValue.equals(value);
        }
    }

    private enum SelfTimer implements StringParameter {
        LONG('Z', "LONG"),
        SHORT('[', "SHORT"),
        INSTANT(']', "INSTANT"),
        OFF('^', PresetConfigurationResolver.VALUE_SHUTTER_SOUND_OFF);

        private char mConvertedChar;
        private String mValue;

        SelfTimer(char converted, String value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.StringParameter
        public boolean equals(String value) {
            return this.mValue.equals(value);
        }
    }

    private enum SemiAuto implements IntParameter {
        ON('_', 0),
        OFF('`', 1);

        private char mConvertedChar;
        private int mValue;

        SemiAuto(char converted, int value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.IntParameter
        public boolean equals(int value) {
            return this.mValue == value;
        }
    }

    private enum AfDoneKeepingTime implements StringParameter {
        WITHIN_10_MS('a', "WITHIN_10_MS"),
        WITHIN_50_MS('b', "WITHIN_50_MS"),
        WITHIN_100_MS('c', "WITHIN_100_MS"),
        WITHIN_200_MS('d', "WITHIN_200_MS"),
        WITHIN_500_MS('e', "WITHIN_500_MS"),
        WITHIN_1000_MS('f', "WITHIN_1000_MS"),
        WITHIN_1500_MS('g', "WITHIN_1500_MS"),
        WITHIN_2000_MS('h', "WITHIN_2000_MS"),
        OVER_2000_MS('i', "OVER_2000_MS"),
        CONTINUOUS_CAPTURE('j', "CONTINUOUS_CAPTURE");

        private char mConvertedChar;
        private String mValue;

        AfDoneKeepingTime(char converted, String value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.StringParameter
        public boolean equals(String value) {
            return this.mValue.equals(value);
        }
    }

    private enum PredictiveCaptureNum implements IntParameter {
        PREDICTIVE_CAPTURE_OFF('q', 0),
        PREDICTIVE_CAPTURE_NUM_1('r', 1),
        PREDICTIVE_CAPTURE_NUM_2('s', 2),
        PREDICTIVE_CAPTURE_NUM_3('t', 3),
        PREDICTIVE_CAPTURE_NUM_4('u', 4),
        PREDICTIVE_CAPTURE_NUM_5('u', 5),
        PREDICTIVE_CAPTURE_NUM_6('u', 6),
        PREDICTIVE_CAPTURE_NUM_7('u', 7),
        PREDICTIVE_CAPTURE_NUM_8('v', 8);

        private char mConvertedChar;
        private int mValue;

        PredictiveCaptureNum(char converted, int value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.IntParameter
        public boolean equals(int value) {
            return this.mValue == value;
        }
    }

    private enum ObjectTracking implements StringParameter {
        OBJECT_TRACKING_OFF('w', "OFF_OFF"),
        OBJECT_TRACKING_AUTO_TARGET_OFF('x', "ON_OFF"),
        OBJECT_TRACKING_AUTO_TARGET_ON('y', "ON_ON");

        private char mConvertedChar;
        private String mValue;

        ObjectTracking(char converted, String value) {
            this.mConvertedChar = converted;
            this.mValue = value;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.Parameter
        public char getConvertedCharacter() {
            return this.mConvertedChar;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel.StringParameter
        public boolean equals(String value) {
            return this.mValue.equals(value);
        }
    }
}