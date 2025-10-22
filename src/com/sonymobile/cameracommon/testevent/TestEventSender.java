package com.sonymobile.cameracommon.testevent;

/* loaded from: classes.dex */
public class TestEventSender {
    private static TestEventListener sListener = getBlankListener();

    public static void setListener(TestEventListener listener) {
        if (listener == null) {
            sListener = getBlankListener();
        } else {
            sListener = listener;
        }
    }

    public static void onPictureTaken() {
        sListener.onPictureTaken();
    }

    public static void onCapturedFrameStored(long timeStamp) {
        sListener.onCapturedFrameStored(timeStamp);
    }

    private static TestEventListener getBlankListener() {
        return new TestEventListener() { // from class: com.sonymobile.cameracommon.testevent.TestEventSender.1
            @Override // com.sonymobile.cameracommon.testevent.TestEventListener
            public void onPictureTaken() {
            }

            @Override // com.sonymobile.cameracommon.testevent.TestEventListener
            public void onCapturedFrameStored(long timeStamp) {
            }
        };
    }
}