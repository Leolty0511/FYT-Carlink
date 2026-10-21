package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class HeaderViewListAdapter implements WrapperListAdapter, Filterable {
    public static final ArrayList<ListView.FixedViewInfo> EMPTY_INFO_LIST = new ArrayList<>();
    private final ListAdapter mAdapter;
    public boolean mAreAllFixedViewsSelectable;
    public ArrayList<ListView.FixedViewInfo> mFooterViewInfos;
    public ArrayList<ListView.FixedViewInfo> mHeaderViewInfos;
    private final boolean mIsFilterable;

    public HeaderViewListAdapter(ArrayList<ListView.FixedViewInfo> arrayList, ArrayList<ListView.FixedViewInfo> arrayList2, ListAdapter listAdapter) {
        this.mAdapter = listAdapter;
        this.mIsFilterable = listAdapter instanceof Filterable;
        if (arrayList == null) {
            this.mHeaderViewInfos = EMPTY_INFO_LIST;
        } else {
            this.mHeaderViewInfos = arrayList;
        }
        if (arrayList2 == null) {
            this.mFooterViewInfos = EMPTY_INFO_LIST;
        } else {
            this.mFooterViewInfos = arrayList2;
        }
        this.mAreAllFixedViewsSelectable = areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos);
    }

    private boolean areAllListInfosSelectable(ArrayList<ListView.FixedViewInfo> arrayList) {
        if (arrayList == null) {
            return true;
        }
        Iterator<ListView.FixedViewInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            if (!it.next().isSelectable) {
                return false;
            }
        }
        return true;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            return this.mAreAllFixedViewsSelectable && listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int footersCount;
        int headersCount;
        if (this.mAdapter != null) {
            footersCount = getFootersCount() + getHeadersCount();
            headersCount = this.mAdapter.getCount();
        } else {
            footersCount = getFootersCount();
            headersCount = getHeadersCount();
        }
        return footersCount + headersCount;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.mIsFilterable) {
            return ((Filterable) this.mAdapter).getFilter();
        }
        return null;
    }

    public int getFootersCount() {
        return this.mFooterViewInfos.size();
    }

    public int getHeadersCount() {
        return this.mHeaderViewInfos.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        int headersCount = getHeadersCount();
        if (i2 < headersCount) {
            return this.mHeaderViewInfos.get(i2).data;
        }
        int i3 = i2 - headersCount;
        int count = 0;
        ListAdapter listAdapter = this.mAdapter;
        return (listAdapter == null || i3 >= (count = listAdapter.getCount())) ? this.mFooterViewInfos.get(i3 - count).data : this.mAdapter.getItem(i3);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        int i3;
        int headersCount = getHeadersCount();
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null || i2 < headersCount || (i3 = i2 - headersCount) >= listAdapter.getCount()) {
            return -1L;
        }
        return this.mAdapter.getItemId(i3);
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i2) {
        int i3;
        int headersCount = getHeadersCount();
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null || i2 < headersCount || (i3 = i2 - headersCount) >= listAdapter.getCount()) {
            return -2;
        }
        return this.mAdapter.getItemViewType(i3);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int headersCount = getHeadersCount();
        if (i2 < headersCount) {
            return this.mHeaderViewInfos.get(i2).view;
        }
        int i3 = i2 - headersCount;
        int count = 0;
        ListAdapter listAdapter = this.mAdapter;
        return (listAdapter == null || i3 >= (count = listAdapter.getCount())) ? this.mFooterViewInfos.get(i3 - count).view : this.mAdapter.getView(i3, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            return listAdapter.getViewTypeCount();
        }
        return 1;
    }

    @Override // android.widget.WrapperListAdapter
    public ListAdapter getWrappedAdapter() {
        return this.mAdapter;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            return listAdapter.hasStableIds();
        }
        return false;
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        ListAdapter listAdapter = this.mAdapter;
        return listAdapter == null || listAdapter.isEmpty();
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        int headersCount = getHeadersCount();
        if (i2 < headersCount) {
            return this.mHeaderViewInfos.get(i2).isSelectable;
        }
        int i3 = i2 - headersCount;
        int count = 0;
        ListAdapter listAdapter = this.mAdapter;
        return (listAdapter == null || i3 >= (count = listAdapter.getCount())) ? this.mFooterViewInfos.get(i3 - count).isSelectable : this.mAdapter.isEnabled(i3);
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    public boolean removeFooter(View view) {
        boolean z2 = false;
        for (int i2 = 0; i2 < this.mFooterViewInfos.size(); i2++) {
            if (this.mFooterViewInfos.get(i2).view == view) {
                this.mFooterViewInfos.remove(i2);
                if (areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos)) {
                    z2 = true;
                }
                this.mAreAllFixedViewsSelectable = z2;
                return true;
            }
        }
        return false;
    }

    public boolean removeHeader(View view) {
        boolean z2 = false;
        for (int i2 = 0; i2 < this.mHeaderViewInfos.size(); i2++) {
            if (this.mHeaderViewInfos.get(i2).view == view) {
                this.mHeaderViewInfos.remove(i2);
                if (areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos)) {
                    z2 = true;
                }
                this.mAreAllFixedViewsSelectable = z2;
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            listAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
