package android.widget;

import android.app.m;
import android.database.DataSetObserver;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
class ExpandableListConnector extends BaseAdapter implements Filterable {
    private ExpandableListAdapter mExpandableListAdapter;
    private int mTotalExpChildrenCount;
    private int mMaxExpGroupCount = Integer.MAX_VALUE;
    private final DataSetObserver mDataSetObserver = new MyDataSetObserver();
    private ArrayList<GroupMetadata> mExpGroupMetadataList = new ArrayList<>();

    public static class GroupMetadata implements Parcelable, Comparable<GroupMetadata> {
        public static final Parcelable.Creator<GroupMetadata> CREATOR = new Parcelable.Creator<GroupMetadata>() { // from class: android.widget.ExpandableListConnector.GroupMetadata.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GroupMetadata createFromParcel(Parcel parcel) {
                return GroupMetadata.obtain(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GroupMetadata[] newArray(int i2) {
                return new GroupMetadata[i2];
            }
        };
        static final int REFRESH = -1;
        int flPos;
        long gId;
        int gPos;
        int lastChildFlPos;

        private GroupMetadata() {
        }

        public static GroupMetadata obtain(int i2, int i3, int i4, long j2) {
            GroupMetadata groupMetadata = new GroupMetadata();
            groupMetadata.flPos = i2;
            groupMetadata.lastChildFlPos = i3;
            groupMetadata.gPos = i4;
            groupMetadata.gId = j2;
            return groupMetadata;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.flPos);
            parcel.writeInt(this.lastChildFlPos);
            parcel.writeInt(this.gPos);
            parcel.writeLong(this.gId);
        }

        @Override // java.lang.Comparable
        public int compareTo(GroupMetadata groupMetadata) {
            if (groupMetadata != null) {
                return this.gPos - groupMetadata.gPos;
            }
            throw new IllegalArgumentException();
        }
    }

    public class MyDataSetObserver extends DataSetObserver {
        public MyDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ExpandableListConnector.this.refreshExpGroupMetadataList(true, true);
            ExpandableListConnector.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ExpandableListConnector.this.refreshExpGroupMetadataList(true, true);
            ExpandableListConnector.this.notifyDataSetInvalidated();
        }
    }

    public static class PositionMetadata {
        private static final int MAX_POOL_SIZE = 5;
        private static ArrayList<PositionMetadata> sPool = new ArrayList<>(5);
        public int groupInsertIndex;
        public GroupMetadata groupMetadata;
        public ExpandableListPosition position;

        private PositionMetadata() {
        }

        private static PositionMetadata getRecycledOrCreate() {
            synchronized (sPool) {
                if (sPool.size() <= 0) {
                    return new PositionMetadata();
                }
                PositionMetadata positionMetadataRemove = sPool.remove(0);
                positionMetadataRemove.resetState();
                return positionMetadataRemove;
            }
        }

        public static PositionMetadata obtain(int i2, int i3, int i4, int i5, GroupMetadata groupMetadata, int i6) {
            PositionMetadata recycledOrCreate = getRecycledOrCreate();
            recycledOrCreate.position = ExpandableListPosition.obtain(i3, i4, i5, i2);
            recycledOrCreate.groupMetadata = groupMetadata;
            recycledOrCreate.groupInsertIndex = i6;
            return recycledOrCreate;
        }

        private void resetState() {
            ExpandableListPosition expandableListPosition = this.position;
            if (expandableListPosition != null) {
                expandableListPosition.recycle();
                this.position = null;
            }
            this.groupMetadata = null;
            this.groupInsertIndex = 0;
        }

        public boolean isExpanded() {
            return this.groupMetadata != null;
        }

        public void recycle() {
            resetState();
            synchronized (sPool) {
                if (sPool.size() < 5) {
                    sPool.add(this);
                }
            }
        }
    }

    public ExpandableListConnector(ExpandableListAdapter expandableListAdapter) {
        setExpandableListAdapter(expandableListAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshExpGroupMetadataList(boolean z2, boolean z3) {
        ArrayList<GroupMetadata> arrayList = this.mExpGroupMetadataList;
        int size = arrayList.size();
        int i2 = 0;
        this.mTotalExpChildrenCount = 0;
        if (z3) {
            boolean z4 = false;
            for (int i3 = size - 1; i3 >= 0; i3--) {
                GroupMetadata groupMetadata = arrayList.get(i3);
                int iFindGroupPosition = findGroupPosition(groupMetadata.gId, groupMetadata.gPos);
                if (iFindGroupPosition != groupMetadata.gPos) {
                    if (iFindGroupPosition == -1) {
                        arrayList.remove(i3);
                        size--;
                    }
                    groupMetadata.gPos = iFindGroupPosition;
                    if (!z4) {
                        z4 = true;
                    }
                }
            }
            if (z4) {
                Collections.sort(arrayList);
            }
        }
        int i4 = 0;
        int i5 = 0;
        while (i2 < size) {
            GroupMetadata groupMetadata2 = arrayList.get(i2);
            int i6 = groupMetadata2.lastChildFlPos;
            int childrenCount = (i6 == -1 || z2) ? this.mExpandableListAdapter.getChildrenCount(groupMetadata2.gPos) : i6 - groupMetadata2.flPos;
            this.mTotalExpChildrenCount += childrenCount;
            int i7 = groupMetadata2.gPos;
            int i8 = (i7 - i5) + i4;
            groupMetadata2.flPos = i8;
            i4 = i8 + childrenCount;
            groupMetadata2.lastChildFlPos = i4;
            i2++;
            i5 = i7;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.mExpandableListAdapter.areAllItemsEnabled();
    }

    public boolean collapseGroup(int i2) {
        ExpandableListPosition expandableListPositionObtain = ExpandableListPosition.obtain(2, i2, -1, -1);
        PositionMetadata flattenedPos = getFlattenedPos(expandableListPositionObtain);
        expandableListPositionObtain.recycle();
        if (flattenedPos == null) {
            return false;
        }
        boolean zCollapseGroup = collapseGroup(flattenedPos);
        flattenedPos.recycle();
        return zCollapseGroup;
    }

    public boolean expandGroup(int i2) {
        ExpandableListPosition expandableListPositionObtain = ExpandableListPosition.obtain(2, i2, -1, -1);
        PositionMetadata flattenedPos = getFlattenedPos(expandableListPositionObtain);
        expandableListPositionObtain.recycle();
        boolean zExpandGroup = expandGroup(flattenedPos);
        flattenedPos.recycle();
        return zExpandGroup;
    }

    public int findGroupPosition(long j2, int i2) {
        int groupCount = this.mExpandableListAdapter.getGroupCount();
        if (groupCount == 0 || j2 == Long.MIN_VALUE) {
            return -1;
        }
        int i3 = groupCount - 1;
        int iMin = Math.min(i3, Math.max(0, i2));
        long jUptimeMillis = SystemClock.uptimeMillis() + 100;
        ExpandableListAdapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i4 = iMin;
        int i5 = i4;
        boolean z2 = false;
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            if (adapter.getGroupId(iMin) != j2) {
                boolean z3 = i4 == i3;
                boolean z4 = i5 == 0;
                if (z3 && z4) {
                    break;
                }
                if (z4 || (z2 && !z3)) {
                    i4++;
                    z2 = false;
                    iMin = i4;
                } else if (z3 || (!z2 && !z4)) {
                    i5--;
                    z2 = true;
                    iMin = i5;
                }
            } else {
                return iMin;
            }
        }
        return -1;
    }

    public ExpandableListAdapter getAdapter() {
        return this.mExpandableListAdapter;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mExpandableListAdapter.getGroupCount() + this.mTotalExpChildrenCount;
    }

    public ArrayList<GroupMetadata> getExpandedGroupMetadataList() {
        return this.mExpGroupMetadataList;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        ExpandableListAdapter adapter = getAdapter();
        if (adapter instanceof Filterable) {
            return ((Filterable) adapter).getFilter();
        }
        return null;
    }

    public PositionMetadata getFlattenedPos(ExpandableListPosition expandableListPosition) {
        ArrayList<GroupMetadata> arrayList = this.mExpGroupMetadataList;
        int size = arrayList.size();
        int i2 = size - 1;
        if (size == 0) {
            int i3 = expandableListPosition.groupPos;
            return PositionMetadata.obtain(i3, expandableListPosition.type, i3, expandableListPosition.childPos, null, 0);
        }
        int iB = 0;
        int i4 = 0;
        while (i4 <= i2) {
            iB = m.b(i2, i4, 2, i4);
            GroupMetadata groupMetadata = arrayList.get(iB);
            int i5 = expandableListPosition.groupPos;
            int i6 = groupMetadata.gPos;
            if (i5 > i6) {
                i4 = iB + 1;
            } else if (i5 < i6) {
                i2 = iB - 1;
            } else if (i5 == i6) {
                int i7 = expandableListPosition.type;
                if (i7 == 2) {
                    return PositionMetadata.obtain(groupMetadata.flPos, i7, i5, expandableListPosition.childPos, groupMetadata, iB);
                }
                if (i7 != 1) {
                    return null;
                }
                int i8 = groupMetadata.flPos;
                int i9 = expandableListPosition.childPos;
                return PositionMetadata.obtain(i8 + i9 + 1, i7, i5, i9, groupMetadata, iB);
            }
        }
        if (expandableListPosition.type != 2) {
            return null;
        }
        if (i4 > iB) {
            GroupMetadata groupMetadata2 = arrayList.get(i4 - 1);
            int i10 = groupMetadata2.lastChildFlPos;
            int i11 = expandableListPosition.groupPos;
            return PositionMetadata.obtain((i11 - groupMetadata2.gPos) + i10, expandableListPosition.type, i11, expandableListPosition.childPos, null, i4);
        }
        if (i2 >= iB) {
            return null;
        }
        int i12 = 1 + i2;
        GroupMetadata groupMetadata3 = arrayList.get(i12);
        int i13 = groupMetadata3.flPos;
        int i14 = groupMetadata3.gPos;
        int i15 = expandableListPosition.groupPos;
        return PositionMetadata.obtain(i13 - (i14 - i15), expandableListPosition.type, i15, expandableListPosition.childPos, null, i12);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        Object child;
        PositionMetadata unflattenedPos = getUnflattenedPos(i2);
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        int i3 = expandableListPosition.type;
        if (i3 == 2) {
            child = this.mExpandableListAdapter.getGroup(expandableListPosition.groupPos);
        } else {
            if (i3 != 1) {
                throw new RuntimeException("Flat list position is of unknown type");
            }
            child = this.mExpandableListAdapter.getChild(expandableListPosition.groupPos, expandableListPosition.childPos);
        }
        unflattenedPos.recycle();
        return child;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        long combinedChildId;
        PositionMetadata unflattenedPos = getUnflattenedPos(i2);
        long groupId = this.mExpandableListAdapter.getGroupId(unflattenedPos.position.groupPos);
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        int i3 = expandableListPosition.type;
        if (i3 == 2) {
            combinedChildId = this.mExpandableListAdapter.getCombinedGroupId(groupId);
        } else {
            if (i3 != 1) {
                throw new RuntimeException("Flat list position is of unknown type");
            }
            combinedChildId = this.mExpandableListAdapter.getCombinedChildId(groupId, this.mExpandableListAdapter.getChildId(expandableListPosition.groupPos, expandableListPosition.childPos));
        }
        unflattenedPos.recycle();
        return combinedChildId;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        int groupType;
        PositionMetadata unflattenedPos = getUnflattenedPos(i2);
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        ExpandableListAdapter expandableListAdapter = this.mExpandableListAdapter;
        if (expandableListAdapter instanceof HeterogeneousExpandableList) {
            HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) expandableListAdapter;
            groupType = expandableListPosition.type == 2 ? heterogeneousExpandableList.getGroupType(expandableListPosition.groupPos) : heterogeneousExpandableList.getChildType(expandableListPosition.groupPos, expandableListPosition.childPos) + heterogeneousExpandableList.getGroupTypeCount();
        } else {
            groupType = expandableListPosition.type == 2 ? 0 : 1;
        }
        unflattenedPos.recycle();
        return groupType;
    }

    public PositionMetadata getUnflattenedPos(int i2) {
        int i3;
        ArrayList<GroupMetadata> arrayList = this.mExpGroupMetadataList;
        int size = arrayList.size();
        int i4 = size - 1;
        if (size == 0) {
            return PositionMetadata.obtain(i2, 2, i2, -1, null, 0);
        }
        int i5 = 0;
        int i6 = i4;
        int i7 = 0;
        while (i5 <= i6) {
            int iB = m.b(i6, i5, 2, i5);
            GroupMetadata groupMetadata = arrayList.get(iB);
            int i8 = groupMetadata.lastChildFlPos;
            if (i2 > i8) {
                i5 = iB + 1;
            } else {
                int i9 = groupMetadata.flPos;
                if (i2 < i9) {
                    i6 = iB - 1;
                } else {
                    if (i2 == i9) {
                        return PositionMetadata.obtain(i2, 2, groupMetadata.gPos, -1, groupMetadata, iB);
                    }
                    if (i2 <= i8) {
                        return PositionMetadata.obtain(i2, 1, groupMetadata.gPos, i2 - (i9 + 1), groupMetadata, iB);
                    }
                }
            }
            i7 = iB;
        }
        if (i5 > i7) {
            GroupMetadata groupMetadata2 = arrayList.get(i5 - 1);
            i3 = (i2 - groupMetadata2.lastChildFlPos) + groupMetadata2.gPos;
        } else {
            if (i6 >= i7) {
                throw new RuntimeException("Unknown state");
            }
            i5 = i6 + 1;
            GroupMetadata groupMetadata3 = arrayList.get(i5);
            i3 = groupMetadata3.gPos - (groupMetadata3.flPos - i2);
        }
        return PositionMetadata.obtain(i2, 2, i3, -1, null, i5);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View childView;
        PositionMetadata unflattenedPos = getUnflattenedPos(i2);
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        int i3 = expandableListPosition.type;
        if (i3 == 2) {
            childView = this.mExpandableListAdapter.getGroupView(expandableListPosition.groupPos, unflattenedPos.isExpanded(), view, viewGroup);
        } else {
            if (i3 != 1) {
                throw new RuntimeException("Flat list position is of unknown type");
            }
            childView = this.mExpandableListAdapter.getChildView(expandableListPosition.groupPos, expandableListPosition.childPos, unflattenedPos.groupMetadata.lastChildFlPos == i2, view, viewGroup);
        }
        unflattenedPos.recycle();
        return childView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        ExpandableListAdapter expandableListAdapter = this.mExpandableListAdapter;
        if (!(expandableListAdapter instanceof HeterogeneousExpandableList)) {
            return 2;
        }
        HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) expandableListAdapter;
        return heterogeneousExpandableList.getChildTypeCount() + heterogeneousExpandableList.getGroupTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.mExpandableListAdapter.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        ExpandableListAdapter adapter = getAdapter();
        if (adapter != null) {
            return adapter.isEmpty();
        }
        return true;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        PositionMetadata unflattenedPos = getUnflattenedPos(i2);
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        boolean zIsChildSelectable = expandableListPosition.type == 1 ? this.mExpandableListAdapter.isChildSelectable(expandableListPosition.groupPos, expandableListPosition.childPos) : true;
        unflattenedPos.recycle();
        return zIsChildSelectable;
    }

    public boolean isGroupExpanded(int i2) {
        for (int size = this.mExpGroupMetadataList.size() - 1; size >= 0; size--) {
            if (this.mExpGroupMetadataList.get(size).gPos == i2) {
                return true;
            }
        }
        return false;
    }

    public void setExpandableListAdapter(ExpandableListAdapter expandableListAdapter) {
        ExpandableListAdapter expandableListAdapter2 = this.mExpandableListAdapter;
        if (expandableListAdapter2 != null) {
            expandableListAdapter2.unregisterDataSetObserver(this.mDataSetObserver);
        }
        this.mExpandableListAdapter = expandableListAdapter;
        expandableListAdapter.registerDataSetObserver(this.mDataSetObserver);
    }

    public void setExpandedGroupMetadataList(ArrayList<GroupMetadata> arrayList) {
        ExpandableListAdapter expandableListAdapter;
        if (arrayList == null || (expandableListAdapter = this.mExpandableListAdapter) == null) {
            return;
        }
        int groupCount = expandableListAdapter.getGroupCount();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).gPos >= groupCount) {
                return;
            }
        }
        this.mExpGroupMetadataList = arrayList;
        refreshExpGroupMetadataList(true, false);
    }

    public void setMaxExpGroupCount(int i2) {
        this.mMaxExpGroupCount = i2;
    }

    public boolean collapseGroup(PositionMetadata positionMetadata) {
        GroupMetadata groupMetadata = positionMetadata.groupMetadata;
        if (groupMetadata == null) {
            return false;
        }
        this.mExpGroupMetadataList.remove(groupMetadata);
        refreshExpGroupMetadataList(false, false);
        notifyDataSetChanged();
        this.mExpandableListAdapter.onGroupCollapsed(positionMetadata.groupMetadata.gPos);
        return true;
    }

    public boolean expandGroup(PositionMetadata positionMetadata) {
        if (positionMetadata.position.groupPos >= 0) {
            if (this.mMaxExpGroupCount == 0 || positionMetadata.groupMetadata != null) {
                return false;
            }
            if (this.mExpGroupMetadataList.size() >= this.mMaxExpGroupCount) {
                GroupMetadata groupMetadata = this.mExpGroupMetadataList.get(0);
                int iIndexOf = this.mExpGroupMetadataList.indexOf(groupMetadata);
                collapseGroup(groupMetadata.gPos);
                int i2 = positionMetadata.groupInsertIndex;
                if (i2 > iIndexOf) {
                    positionMetadata.groupInsertIndex = i2 - 1;
                }
            }
            int i3 = positionMetadata.position.groupPos;
            GroupMetadata groupMetadataObtain = GroupMetadata.obtain(-1, -1, i3, this.mExpandableListAdapter.getGroupId(i3));
            this.mExpGroupMetadataList.add(positionMetadata.groupInsertIndex, groupMetadataObtain);
            refreshExpGroupMetadataList(false, false);
            notifyDataSetChanged();
            this.mExpandableListAdapter.onGroupExpanded(groupMetadataObtain.gPos);
            return true;
        }
        throw new RuntimeException("Need group");
    }
}
