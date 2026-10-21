package android.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteViewsListAdapter extends BaseAdapter {
    private Context mContext;
    private ArrayList<RemoteViews> mRemoteViewsList;
    private int mViewTypeCount;
    private ArrayList<Integer> mViewTypes = new ArrayList<>();

    public RemoteViewsListAdapter(Context context, ArrayList<RemoteViews> arrayList, int i2) {
        this.mContext = context;
        this.mRemoteViewsList = arrayList;
        this.mViewTypeCount = i2;
        init();
    }

    private void init() {
        if (this.mRemoteViewsList == null) {
            return;
        }
        this.mViewTypes.clear();
        for (RemoteViews remoteViews : this.mRemoteViewsList) {
            if (!this.mViewTypes.contains(Integer.valueOf(remoteViews.getLayoutId()))) {
                this.mViewTypes.add(Integer.valueOf(remoteViews.getLayoutId()));
            }
        }
        int size = this.mViewTypes.size();
        int i2 = this.mViewTypeCount;
        if (size > i2 || i2 < 1) {
            throw new RuntimeException("Invalid view type count -- view type count must be >= 1and must be as large as the total number of distinct view types");
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<RemoteViews> arrayList = this.mRemoteViewsList;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        if (i2 >= getCount()) {
            return 0;
        }
        return this.mViewTypes.indexOf(Integer.valueOf(this.mRemoteViewsList.get(i2).getLayoutId()));
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (i2 >= getCount()) {
            return null;
        }
        RemoteViews remoteViews = this.mRemoteViewsList.get(i2);
        remoteViews.setIsWidgetCollectionChild(true);
        if (view == null || view.getId() != remoteViews.getLayoutId()) {
            return remoteViews.apply(this.mContext, viewGroup);
        }
        remoteViews.reapply(this.mContext, view);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mViewTypeCount;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public void setViewsList(ArrayList<RemoteViews> arrayList) {
        this.mRemoteViewsList = arrayList;
        init();
        notifyDataSetChanged();
    }
}
