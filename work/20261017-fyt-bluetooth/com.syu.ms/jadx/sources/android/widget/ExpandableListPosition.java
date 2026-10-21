package android.widget;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ExpandableListPosition {
    public static final int CHILD = 1;
    public static final int GROUP = 2;
    private static final int MAX_POOL_SIZE = 5;
    private static ArrayList<ExpandableListPosition> sPool = new ArrayList<>(5);
    public int childPos;
    public int flatListPos;
    public int groupPos;
    public int type;

    private ExpandableListPosition() {
    }

    private static ExpandableListPosition getRecycledOrCreate() {
        synchronized (sPool) {
            if (sPool.size() <= 0) {
                return new ExpandableListPosition();
            }
            ExpandableListPosition expandableListPositionRemove = sPool.remove(0);
            expandableListPositionRemove.resetState();
            return expandableListPositionRemove;
        }
    }

    public static ExpandableListPosition obtain(int i2, int i3, int i4, int i5) {
        ExpandableListPosition recycledOrCreate = getRecycledOrCreate();
        recycledOrCreate.type = i2;
        recycledOrCreate.groupPos = i3;
        recycledOrCreate.childPos = i4;
        recycledOrCreate.flatListPos = i5;
        return recycledOrCreate;
    }

    public static ExpandableListPosition obtainChildPosition(int i2, int i3) {
        return obtain(1, i2, i3, 0);
    }

    public static ExpandableListPosition obtainGroupPosition(int i2) {
        return obtain(2, i2, 0, 0);
    }

    public static ExpandableListPosition obtainPosition(long j2) {
        if (j2 == ExpandableListView.PACKED_POSITION_VALUE_NULL) {
            return null;
        }
        ExpandableListPosition recycledOrCreate = getRecycledOrCreate();
        recycledOrCreate.groupPos = ExpandableListView.getPackedPositionGroup(j2);
        if (ExpandableListView.getPackedPositionType(j2) == 1) {
            recycledOrCreate.type = 1;
            recycledOrCreate.childPos = ExpandableListView.getPackedPositionChild(j2);
        } else {
            recycledOrCreate.type = 2;
        }
        return recycledOrCreate;
    }

    private void resetState() {
        this.groupPos = 0;
        this.childPos = 0;
        this.flatListPos = 0;
        this.type = 0;
    }

    public long getPackedPosition() {
        return this.type == 1 ? ExpandableListView.getPackedPositionForChild(this.groupPos, this.childPos) : ExpandableListView.getPackedPositionForGroup(this.groupPos);
    }

    public void recycle() {
        synchronized (sPool) {
            if (sPool.size() < 5) {
                sPool.add(this);
            }
        }
    }
}
