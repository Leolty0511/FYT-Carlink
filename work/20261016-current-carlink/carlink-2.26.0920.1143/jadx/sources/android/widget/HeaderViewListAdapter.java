package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderViewListAdapter implements WrapperListAdapter, Filterable {
    static final ArrayList<ListView.FixedViewInfo> EMPTY_INFO_LIST = new ArrayList<>();
    private final ListAdapter mAdapter;
    boolean mAreAllFixedViewsSelectable;
    ArrayList<ListView.FixedViewInfo> mFooterViewInfos;
    ArrayList<ListView.FixedViewInfo> mHeaderViewInfos;
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
    public final /* synthetic */ CharSequence[] getAutofillOptions() {
        return a.a(this);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mAdapter == null) {
            return getHeadersCount() + getFootersCount();
        }
        return this.mAdapter.getCount() + getHeadersCount() + getFootersCount();
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
        int count;
        int headersCount = getHeadersCount();
        if (i2 < headersCount) {
            return this.mHeaderViewInfos.get(i2).data;
        }
        int i3 = i2 - headersCount;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            count = listAdapter.getCount();
            if (i3 < count) {
                return this.mAdapter.getItem(i3);
            }
        } else {
            count = 0;
        }
        return this.mFooterViewInfos.get(i3 - count).data;
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
        int count;
        int headersCount = getHeadersCount();
        if (i2 < headersCount) {
            return this.mHeaderViewInfos.get(i2).view;
        }
        int i3 = i2 - headersCount;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            count = listAdapter.getCount();
            if (i3 < count) {
                return this.mAdapter.getView(i3, view, viewGroup);
            }
        } else {
            count = 0;
        }
        return this.mFooterViewInfos.get(i3 - count).view;
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
        int count;
        int headersCount = getHeadersCount();
        if (i2 < headersCount) {
            return this.mHeaderViewInfos.get(i2).isSelectable;
        }
        int i3 = i2 - headersCount;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            count = listAdapter.getCount();
            if (i3 < count) {
                return this.mAdapter.isEnabled(i3);
            }
        } else {
            count = 0;
        }
        return this.mFooterViewInfos.get(i3 - count).isSelectable;
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
