package com.sonymobile.cameracommon.media.utility;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FpsMonitor {
    private final int mIntervalCount;
    private final List<Double> mResult = new ArrayList();
    private int mSampleCount = 0;
    private long mHeadSampleTime = 0;

    public FpsMonitor(int intervalCount) {
        this.mIntervalCount = intervalCount;
    }

    public void addSampleMillis(long presentationTime) {
        addSample(presentationTime * 1000 * 1000);
    }

    public void addSample(long presentationTime) {
        this.mSampleCount++;
        if (this.mSampleCount < this.mIntervalCount) {
            if (this.mSampleCount == 1) {
                this.mHeadSampleTime = presentationTime;
            }
        } else {
            addResult(presentationTime);
            this.mSampleCount = 0;
        }
    }

    public void reset() {
        this.mResult.clear();
        this.mSampleCount = 0;
        this.mHeadSampleTime = 0L;
    }

    private void addResult(long tailSampleTime) {
        double duration = (tailSampleTime - this.mHeadSampleTime) / 1.0E9d;
        this.mResult.add(Double.valueOf((this.mSampleCount - 1) / duration));
    }

    public String dump() {
        StringBuilder buffer = new StringBuilder();
        Iterator<Double> it = this.mResult.iterator();
        while (it.hasNext()) {
            double fps = it.next().doubleValue();
            buffer.append(fps + ",");
        }
        return buffer.toString();
    }
}