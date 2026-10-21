package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public interface ExpandableListAdapter {
    boolean areAllItemsEnabled();

    Object getChild(int i2, int i3);

    long getChildId(int i2, int i3);

    View getChildView(int i2, int i3, boolean z2, View view, ViewGroup viewGroup);

    int getChildrenCount(int i2);

    long getCombinedChildId(long j2, long j3);

    long getCombinedGroupId(long j2);

    Object getGroup(int i2);

    int getGroupCount();

    long getGroupId(int i2);

    View getGroupView(int i2, boolean z2, View view, ViewGroup viewGroup);

    boolean hasStableIds();

    boolean isChildSelectable(int i2, int i3);

    boolean isEmpty();

    void onGroupCollapsed(int i2);

    void onGroupExpanded(int i2);

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);
}
