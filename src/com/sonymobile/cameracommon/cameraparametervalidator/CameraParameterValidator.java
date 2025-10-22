package com.sonymobile.cameracommon.cameraparametervalidator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class CameraParameterValidator {
    private static final String BASE_CONDITION_TAG = "base-condition";
    private static final String CHECK_CONDITION_TAG = "check-condition";
    private static final int KEY_ATTRIBUTE_INDEX = 0;
    private static final String KEY_VALUE_SET_TAG = "key-value-set";
    private static final boolean LOCAL_LOG = false;
    public static final String TAG = "CameraParameterValidator";
    private static final String VALIDATION_SET_TAG = "validation-set";
    private static final int VALUE_ATTRIBUTE_INDEX = 1;
    private static volatile boolean mIsAlreadyLoaded = false;
    private static List<ValidationCase> mValidSetList = new ArrayList();
    private static List<ValidationCase> mInvalidSetList = new ArrayList();

    public static class ParameterValidationError extends RuntimeException {
        private static final long serialVersionUID = 0;

        public ParameterValidationError(String message) {
            super(message);
        }
    }

    public static synchronized void validate(Context context, int invalidListXmlId, int validListXmlId, Camera.Parameters params) {
        if (!mIsAlreadyLoaded) {
            loadCheckList(context, mInvalidSetList, invalidListXmlId);
            loadCheckList(context, mValidSetList, validListXmlId);
            mIsAlreadyLoaded = true;
        }
        for (ValidationCase testCase : mInvalidSetList) {
            if (testCase.isBaseCondition(params)) {
                testCase.checkInvalid(params);
            }
        }
        for (ValidationCase testCase2 : mValidSetList) {
            if (testCase2.isBaseCondition(params)) {
                testCase2.checkValid(params);
            }
        }
    }

    private static class ValidationCase {
        private List<KeyValueSet> mBaseConditionList;
        private List<KeyValueSet> mCheckConditionList;

        private ValidationCase() {
            this.mBaseConditionList = new ArrayList();
            this.mCheckConditionList = new ArrayList();
        }

        public void addBaseCondition(KeyValueSet set) {
            this.mBaseConditionList.add(set);
        }

        public void addCheckCondition(KeyValueSet set) {
            this.mCheckConditionList.add(set);
        }

        public boolean isBaseCondition(Camera.Parameters params) {
            for (KeyValueSet set : this.mBaseConditionList) {
                String realValue = params.get(set.key);
                if (!set.value.equals(realValue)) {
                    return false;
                }
            }
            return true;
        }

        public void checkValid(Camera.Parameters params) {
            for (KeyValueSet set : this.mCheckConditionList) {
                String realValue = params.get(set.key);
                if (!set.value.equals(realValue)) {
                    throw new ParameterValidationError("CameraParameterValidator ERROR : [KEY=" + set.key + "\n  EXPECTED : [VALUE=" + set.value + "]\n  ACTUAL   : [VALUE=" + realValue + "]\n");
                }
            }
        }

        public void checkInvalid(Camera.Parameters params) {
            for (KeyValueSet set : this.mCheckConditionList) {
                String realValue = params.get(set.key);
                if (set.value.equals(realValue)) {
                    throw new ParameterValidationError("CameraParameterValidator ERROR : [KEY=" + set.key + "]\n  INVALID  : [VALUE=" + set.value + "]\n");
                }
            }
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append("ValidationSet :\n");
            builder.append("  BaseConditionList :\n");
            for (KeyValueSet set : this.mBaseConditionList) {
                builder.append("    ");
                builder.append(set.toString());
                builder.append("\n");
            }
            builder.append("  CheckConditionList :\n");
            for (KeyValueSet set2 : this.mCheckConditionList) {
                builder.append("    ");
                builder.append(set2.toString());
                builder.append("\n");
            }
            return builder.toString();
        }
    }

    private static class KeyValueSet {
        public final String key;
        public final String value;

        public KeyValueSet(String inKey, String inValue) {
            this.key = inKey;
            this.value = inValue;
        }

        public String toString() {
            return "KeyValueSet [KEY=" + this.key + "] [VALUE=" + this.value + "]";
        }
    }

    private static void loadCheckList(Context context, List<ValidationCase> list, int xmlId) {
        XmlResourceParser parser = null;
        try {
            parser = context.getResources().getXml(xmlId);
            ValidationCase validationCase = null;

            if (parser == null) {
                return;
            }

            int eventType = parser.getEventType();
            while (eventType != XmlPullParser.END_DOCUMENT) {
                final String name = parser.getName();
                switch (eventType) {
                    case XmlPullParser.START_TAG:
                        if (VALIDATION_SET_TAG.equals(name)) {
                            validationCase = new ValidationCase();
                        } else if (BASE_CONDITION_TAG.equals(name)) {
                            loadBaseCondition(validationCase, parser);
                        } else if (CHECK_CONDITION_TAG.equals(name)) {
                            loadCheckCondition(validationCase, parser);
                        }
                        break;

                    case XmlPullParser.END_TAG:
                        if (VALIDATION_SET_TAG.equals(name)) {
                            if (validationCase != null) {
                                list.add(validationCase);
                            }
                        }
                        break;

                    default:
                        // no-op
                        break;
                }
                eventType = parser.next();
            }
        } catch (XmlPullParserException e) {
            CameraLogger.e(TAG, "Fail to load of CheckList.", e);
            throw new ParameterValidationError("loadCheckList():[XmlPullParserException]");
        } catch (Resources.NotFoundException e) {
            CameraLogger.e(TAG, "Fail to load of CheckList.", e);
            throw new ParameterValidationError("loadCheckList():[Resources.NotFoundException]");
        } catch (IOException e) {
            CameraLogger.e(TAG, "Fail to load of CheckList.", e);
            throw new ParameterValidationError("loadCheckList():[IOException]");
        }
    }

    private static void loadBaseCondition(ValidationCase validationCase, XmlPullParser parser) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        while (true) {
            if (eventType != 3 || !BASE_CONDITION_TAG.equals(parser.getName())) {
                switch (eventType) {
                    case 2:
                        if (!KEY_VALUE_SET_TAG.equals(parser.getName())) {
                            break;
                        } else {
                            String key = parser.getAttributeValue(0);
                            String value = parser.getAttributeValue(1);
                            KeyValueSet set = new KeyValueSet(key, value);
                            validationCase.addBaseCondition(set);
                            break;
                        }
                }
                eventType = parser.next();
            } else {
                return;
            }
        }
    }

    private static void loadCheckCondition(ValidationCase validationCase, XmlPullParser parser) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        while (true) {
            if (eventType != 3 || !CHECK_CONDITION_TAG.equals(parser.getName())) {
                switch (eventType) {
                    case 2:
                        if (!KEY_VALUE_SET_TAG.equals(parser.getName())) {
                            break;
                        } else {
                            String key = parser.getAttributeValue(0);
                            String value = parser.getAttributeValue(1);
                            KeyValueSet set = new KeyValueSet(key, value);
                            validationCase.addCheckCondition(set);
                            break;
                        }
                }
                eventType = parser.next();
            } else {
                return;
            }
        }
    }
}