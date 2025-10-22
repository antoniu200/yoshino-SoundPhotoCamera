package com.sonyericsson.cameracommon.viewfinder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.utility.PerfLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class InflateTask implements Callable<Map<InflateItem, List<View>>> {
    public static final String TAG = "InflateTask";
    private final List<InflateItem> mInflateItemList;
    private Map<InflateItem, List<View>> mInflatedItemMap = new HashMap();
    private LayoutInflater mLayoutInflater;

    public InflateTask(LayoutInflater layoutInflater, List<InflateItem> inflateItemList) {
        this.mLayoutInflater = layoutInflater;
        this.mInflateItemList = inflateItemList;
    }

    @Override // java.util.concurrent.Callable
    public Map<InflateItem, List<View>> call() {
        PerfLog.TASK_INFLATE.begin();
        for (InflateItem item : this.mInflateItemList) {
            register(item);
        }
        PerfLog.TASK_INFLATE.end();
        return this.mInflatedItemMap;
    }

    private void register(InflateItem item) {
        List<View> nonrmalInflatedviews = new ArrayList<>();
        for (int i = 0; i < item.getViewCount(); i++) {
            nonrmalInflatedviews.add(this.mLayoutInflater.inflate(item.getLayoutId(), (ViewGroup) null));
        }
        this.mInflatedItemMap.put(item, nonrmalInflatedviews);
    }
}