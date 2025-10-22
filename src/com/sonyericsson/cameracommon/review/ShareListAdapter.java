package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ShareListAdapter extends BaseAdapter {
    public static final String TAG = "ShareListAdapter";
    Context mContext;
    private final LayoutInflater mInflater;
    List<ResolveInfo> mResolveInfoList;

    public ShareListAdapter(Context context, List<ResolveInfo> list) {
        int size;
        this.mContext = context;
        this.mInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        this.mResolveInfoList = list;
        if (this.mResolveInfoList != null && (size = this.mResolveInfoList.size()) > 1) {
            ResolveInfo firstElement = this.mResolveInfoList.get(0);
            for (int i = 1; i < size; i++) {
                ResolveInfo element = this.mResolveInfoList.get(i);
                if (firstElement.priority != element.priority || firstElement.isDefault != element.isDefault) {
                    while (i < size) {
                        this.mResolveInfoList.remove(i);
                        size--;
                    }
                }
            }
            Collections.sort(this.mResolveInfoList, new ResolveInfo.DisplayNameComparator(this.mContext.getPackageManager()));
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mResolveInfoList != null) {
            return this.mResolveInfoList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mResolveInfoList.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View view;
        if (convertView == null) {
            view = this.mInflater.inflate(R.layout.list_item, parent, false);
        } else {
            view = convertView;
        }
        bindView(view, this.mResolveInfoList.get(position));
        return view;
    }

    private void bindView(View view, ResolveInfo info) {
        TextView text = (TextView) view.findViewById(R.id.text);
        ImageView icon = (ImageView) view.findViewById(R.id.icon);
        PackageManager pm = this.mContext.getPackageManager();
        CharSequence label = info.loadLabel(pm);
        if (label == null) {
            label = info.activityInfo.name;
        }
        text.setText(label);
        icon.setImageDrawable(info.loadIcon(pm));
    }
}