package com.sonyericsson.cameracommon.utility;

import android.annotation.SuppressLint;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MeasurePerformance {
    private static final String FILE = "camera_perform.csv";
    public static final String TAG = "MeasurePerformance";
    public static final String TAG_DEVICE = "[DEVICE]";
    public static final String TAG_SEQ = "[SEQ]";
    public static final String TAG_SHOT = "[SHOT]";
    public static final String TAG_STARTUP = "[START UP]";
    public static final String TAG_SURFACE = "[SURFACE]";
    public static final String TAG_TASK = "[TASK]";
    private long originalTime;
    private static boolean sTimerFlag = false;
    private static boolean sMemoryFlag = false;
    private static List<MeasureTime> mTimeList = Collections.synchronizedList(new ArrayList());
    private static List<MeasureResource> mResourceList = Collections.synchronizedList(new ArrayList());
    private static MeasurePerformance sInstance = new MeasurePerformance();
    private static Map<String, FpsStatistics> sFpsStatisticsMap = new HashMap();

    enum MeasureKind {
        MEASURE_START,
        MEASURE_START_OVERWRITE,
        MEASURE_END
    }

    public enum PerformanceIds {
        ON_CREATE("[SEQ][START UP]"),
        ON_NEW_INTENT(MeasurePerformance.TAG_STARTUP),
        ON_START(MeasurePerformance.TAG_STARTUP),
        ON_RESTART(MeasurePerformance.TAG_STARTUP),
        ON_RESUME("[SEQ][START UP]"),
        ON_PAUSE(MeasurePerformance.TAG_STARTUP),
        ON_STOP(MeasurePerformance.TAG_STARTUP),
        ON_DESTROY(MeasurePerformance.TAG_STARTUP),
        NOTIFY_STORE_COMPLETE(""),
        MSG_ON_STORE_CALLBACK_START(""),
        MSG_ON_STORE_CALLBACK_END(""),
        HANDLE_EVENT(""),
        SET_CONTENT_VIEWS(""),
        INFLATE_VIEWS(MeasurePerformance.TAG_TASK),
        STARTUP_TIME(MeasurePerformance.TAG_SEQ),
        ON_RESUME_TO_SURFACE_CHANGED(MeasurePerformance.TAG_SURFACE),
        SURFACE_CHANGED(MeasurePerformance.TAG_SURFACE),
        SURFACE_CHANGED_TO_LAUNCH(MeasurePerformance.TAG_SURFACE),
        RESUME_TO_LAUNCH(MeasurePerformance.TAG_SEQ),
        LAUNCH(MeasurePerformance.TAG_SEQ),
        LAUNCH_TO_DISPATCH_DRAW(MeasurePerformance.TAG_SEQ),
        OPEN_CAMERA_DEVICE_TASK("[TASK][DEVICE]"),
        SWITCH_CAMERA_DEVICE(MeasurePerformance.TAG_DEVICE),
        SETUP_CAMERA_DEVICE_TASK(MeasurePerformance.TAG_TASK),
        CREATE_EFFECT_RENDERER_PACK(MeasurePerformance.TAG_TASK),
        LAZY_INITIALIZATION_TASK(MeasurePerformance.TAG_TASK),
        SETTUP_RELATED_TO_SURFACE_SIZE(MeasurePerformance.TAG_TASK),
        STOT_TO_SHOT(MeasurePerformance.TAG_SHOT),
        STOT_TO_ON_PICT_TAKEN(MeasurePerformance.TAG_SHOT),
        RECORDING_START(MeasurePerformance.TAG_SHOT),
        RECORDING_STOP(MeasurePerformance.TAG_SHOT),
        STORE_DATA_INTO_SD_CARD(""),
        UPDATE_REMAIN("");

        String tag;

        PerformanceIds(String tag_in) {
            this.tag = tag_in;
        }
    }

    private static class MeasureTime {
        public String additionalInfo;
        public PerformanceIds id;
        public MeasureKind kind;
        public long time;

        private MeasureTime() {
        }
    }

    private static class MeasureAmountTime {
        public int count;
        public PerformanceIds id;
        public long total;

        private MeasureAmountTime() {
        }
    }

    private static class MeasureResource {
        public long mFreeMemory;
        public String mTag;
        public long mTotalMemory;

        private MeasureResource() {
        }
    }

    protected MeasurePerformance() {
        init();
        this.originalTime = System.currentTimeMillis();
    }

    private static void init() {
        mTimeList.clear();
        mResourceList.clear();
    }

    public static final void setTimerFlag(boolean flag) {
        sTimerFlag = flag;
    }

    public static final void setMemoryFlag(boolean flag) {
        sMemoryFlag = flag;
    }

    private static final void measureTime(PerformanceIds id, MeasureKind aKind, String comment) {
        if (sTimerFlag) {
            long sysTime = System.currentTimeMillis();
            MeasureTime time = new MeasureTime();
            time.id = id;
            time.additionalInfo = comment;
            time.time = sysTime;
            time.kind = aKind;
            mTimeList.add(time);
        }
    }

    private static final boolean isLastMeasuredTime(List<MeasureTime> timeList, int index) {
        MeasureTime target = timeList.get(index);
        for (int i = index + 1; i < timeList.size(); i++) {
            MeasureTime data = timeList.get(i);
            if (data.kind == target.kind && data.id == target.id) {
                return false;
            }
        }
        return true;
    }

    public static final void measureTime(PerformanceIds id, boolean isStart, String comment) {
        measureTime(id, isStart ? MeasureKind.MEASURE_START : MeasureKind.MEASURE_END, comment);
    }

    public static final void measureTime(PerformanceIds id, boolean isStart) {
        measureTime(id, isStart ? MeasureKind.MEASURE_START : MeasureKind.MEASURE_END, "");
    }

    public static final void measureTimeOverwrite(PerformanceIds id, boolean isStart) {
        measureTime(id, isStart ? MeasureKind.MEASURE_START_OVERWRITE : MeasureKind.MEASURE_END, "");
    }

    public static final void measureResource(int aId) {
        if (sMemoryFlag) {
            MeasureResource resource = new MeasureResource();
            Runtime runtime = Runtime.getRuntime();
            long totalMem = runtime.totalMemory();
            long freeMem = runtime.freeMemory();
            resource.mTotalMemory = totalMem;
            resource.mFreeMemory = freeMem;
            mResourceList.add(resource);
        }
    }

    public static final void measureResource(String tag) {
        if (sMemoryFlag) {
            MeasureResource resource = new MeasureResource();
            Runtime runtime = Runtime.getRuntime();
            long totalMem = runtime.totalMemory();
            long freeMem = runtime.freeMemory();
            resource.mTag = tag;
            resource.mTotalMemory = totalMem;
            resource.mFreeMemory = freeMem;
            mResourceList.add(resource);
        }
    }

    public static final void outResult() {
        if (sTimerFlag || sMemoryFlag) {
            ArrayList<MeasureTime> resultTimeList = new ArrayList<>(mTimeList);
            ArrayList<MeasureResource> resultResourceList = new ArrayList<>(mResourceList);
            init();
            String string = sTimerFlag ? "" + setResultTime(resultTimeList) : "";
            if (sMemoryFlag) {
                string = string + setResultResource(resultResourceList);
            }
            writeFile(string);
        }
    }

    public static final void outResultDelay(int delayMillis) {
    }

    private static class OutResultDelayTask implements Runnable {
        private OutResultDelayTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MeasurePerformance.outResult();
            } catch (Exception e) {
                // Implement CameraLogger.e(TAG, "run() failed: ", e.getMessage());.
                // or better.
            }
        }
    }

    private static String setResultTime(List<MeasureTime> resultTimeList) {
        MeasureTime[] start = new MeasureTime[PerformanceIds.values().length];
        MeasureAmountTime[] amounts = new MeasureAmountTime[PerformanceIds.values().length];
        for (int i = 0; i < PerformanceIds.values().length; i++) {
            amounts[i] = new MeasureAmountTime();
        }
        StringBuilder string = new StringBuilder();
        string.append("---Measure Time Start---\n");
        string.append("[PERFORMANCE]ID,Time[ms],Comment\n");
        for (int i2 = 0; i2 < resultTimeList.size(); i2++) {
            MeasureTime data = resultTimeList.get(i2);
            if (data.kind == MeasureKind.MEASURE_START) {
                if (start[data.id.ordinal()] == null) {
                    start[data.id.ordinal()] = data;
                }
            } else if (data.kind == MeasureKind.MEASURE_START_OVERWRITE) {
                start[data.id.ordinal()] = data;
            } else if (start[data.id.ordinal()] != null) {
                amounts[data.id.ordinal()].id = data.id;
                amounts[data.id.ordinal()].total += data.time - start[data.id.ordinal()].time;
                amounts[data.id.ordinal()].count++;
                if (isLastMeasuredTime(resultTimeList, i2)) {
                    string.append(CameraLogger.DEBUG_PERFORM_TIME_TAG);
                    string.append(data.id.tag);
                    string.append(data.id.name());
                    string.append(", ");
                    string.append(Long.toString(data.time - start[data.id.ordinal()].time));
                    string.append(", ");
                    string.append(data.additionalInfo);
                    string.append(start[data.id.ordinal()].additionalInfo);
                    string.append("\n");
                    start[data.id.ordinal()] = null;
                }
            }
        }
        string.append("[PERFORMANCE]---Measure Time End---\n\n");
        string.append("---Measure Time Dump Start---\n");
        string.append("ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n");
        for (int i3 = 0; i3 < resultTimeList.size(); i3++) {
            MeasureTime data2 = resultTimeList.get(i3);
            string.append(data2.id.name());
            string.append(", ");
            string.append(data2.kind);
            string.append(", ");
            string.append(Long.toString(data2.time));
            string.append(", ");
            string.append(Long.toString(data2.time - sInstance.originalTime));
            string.append(", ");
            string.append(data2.additionalInfo);
            string.append("\n");
        }
        for (int i4 = 0; i4 < PerformanceIds.values().length; i4++) {
            MeasureAmountTime amount = amounts[i4];
            if (amount.id != null) {
                string.append("AmountTime: ");
                string.append(amount.id.name());
                string.append(" total: ");
                string.append(Long.toString(amount.total));
                string.append(", count: ");
                string.append(Long.toString(amount.count));
                string.append(", avalage: ");
                string.append(Long.toString(amount.total / amount.count));
                string.append("\n");
            }
        }
        string.append("---Measure Time Dump End---\n");
        return string.toString();
    }

    private static String setResultResource(List<MeasureResource> resultResourceList) {
        StringBuilder string = new StringBuilder();
        string.append("---Measure Resource Start---\n");
        string.append("ID,Total,Used,free\n");
        for (int sIndex = 0; resultResourceList.size() > sIndex; sIndex++) {
            String tag = resultResourceList.get(sIndex).mTag;
            long totalMem = resultResourceList.get(sIndex).mTotalMemory;
            long freeMem = resultResourceList.get(sIndex).mFreeMemory;
            long usedMem = totalMem - freeMem;
            string.append(tag + "," + totalMem + "," + usedMem + "," + freeMem + "\n");
        }
        string.append("---Measure Resource End---\n");
        return string.toString();
    }

    private static void writeFile(String aResult) {
        // camera_perform.csv in external storage root, same as smali path.
        File f = new File(Environment.getExternalStorageDirectory(), "camera_perform.csv");

        // Ensure the file exists (mirror the smali's createNewFile + early return on failure).
        if (!f.exists()) {
            try {
                // createNewFile() returns false if it already exists; we only care about exceptions
                f.createNewFile();
            } catch (IOException e) {
                CameraLogger.e("MeasurePerformance", "Create output file failed");
                return;
            }
        }

        // Write the provided string (overwrite semantics, like the smali).
        try (OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(f))) {
            writer.write(aResult);
        } catch (FileNotFoundException e) {
            CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + e);
        } catch (IOException e) {
            CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + e);
        }
    }

    private static class FpsStatistics {
        private int mFrameCount;
        private long mLastFpsTime;
        private int mLastFrameCount;

        private FpsStatistics() {
            this.mFrameCount = 0;
            this.mLastFrameCount = 0;
            this.mLastFpsTime = 0L;
        }

        static /* synthetic */ int access$408(FpsStatistics x0) {
            int i = x0.mFrameCount;
            x0.mFrameCount = i + 1;
            return i;
        }
    }

    public static void debugShowPreviewFPS(String tag) {
        FpsStatistics fpsStatistics;
        if (Log.IS_KPI) {
            if (sFpsStatisticsMap.containsKey(tag)) {
                fpsStatistics = sFpsStatisticsMap.get(tag);
            } else {
                fpsStatistics = new FpsStatistics();
            }
            FpsStatistics.access$408(fpsStatistics);
            long now = System.currentTimeMillis();
            long diff = now - fpsStatistics.mLastFpsTime;
            if (diff > 3000) {
                float fps = ((fpsStatistics.mFrameCount - fpsStatistics.mLastFrameCount) * 1000.0f) / diff;
                Log.logKpi(tag, "FPS_MeasurePerformance:" + String.format("%.4f ", Float.valueOf(fps)));
                fpsStatistics.mLastFpsTime = now;
                fpsStatistics.mLastFrameCount = fpsStatistics.mFrameCount;
            }
            sFpsStatisticsMap.put(tag, fpsStatistics);
        }
    }
}
