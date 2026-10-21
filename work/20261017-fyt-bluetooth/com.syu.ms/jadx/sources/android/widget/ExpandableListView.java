package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ExpandableListView extends ListView {
    public static final int CHILD_INDICATOR_INHERIT = -1;
    private static final int[] CHILD_LAST_STATE_SET;
    private static final int[] EMPTY_STATE_SET;
    private static final int[] GROUP_EMPTY_STATE_SET;
    private static final int[] GROUP_EXPANDED_EMPTY_STATE_SET;
    private static final int[] GROUP_EXPANDED_STATE_SET;
    private static final int[][] GROUP_STATE_SETS;
    private static final int INDICATOR_UNDEFINED = -2;
    private static final long PACKED_POSITION_INT_MASK_CHILD = -1;
    private static final long PACKED_POSITION_INT_MASK_GROUP = 2147483647L;
    private static final long PACKED_POSITION_MASK_CHILD = 4294967295L;
    private static final long PACKED_POSITION_MASK_GROUP = 9223372032559808512L;
    private static final long PACKED_POSITION_MASK_TYPE = Long.MIN_VALUE;
    private static final long PACKED_POSITION_SHIFT_GROUP = 32;
    private static final long PACKED_POSITION_SHIFT_TYPE = 63;
    public static final int PACKED_POSITION_TYPE_CHILD = 1;
    public static final int PACKED_POSITION_TYPE_GROUP = 0;
    public static final int PACKED_POSITION_TYPE_NULL = 2;
    public static final long PACKED_POSITION_VALUE_NULL = 4294967295L;
    private ExpandableListAdapter mAdapter;
    private Drawable mChildDivider;
    private Drawable mChildIndicator;
    private int mChildIndicatorEnd;
    private int mChildIndicatorLeft;
    private int mChildIndicatorRight;
    private int mChildIndicatorStart;
    private ExpandableListConnector mConnector;
    private Drawable mGroupIndicator;
    private int mIndicatorEnd;
    private int mIndicatorLeft;
    private final Rect mIndicatorRect;
    private int mIndicatorRight;
    private int mIndicatorStart;
    private OnChildClickListener mOnChildClickListener;
    private OnGroupClickListener mOnGroupClickListener;
    private OnGroupCollapseListener mOnGroupCollapseListener;
    private OnGroupExpandListener mOnGroupExpandListener;

    public static class ExpandableListContextMenuInfo implements ContextMenu.ContextMenuInfo {
        public long id;
        public long packedPosition;
        public View targetView;

        public ExpandableListContextMenuInfo(View view, long j2, long j3) {
            this.targetView = view;
            this.packedPosition = j2;
            this.id = j3;
        }
    }

    public interface OnChildClickListener {
        boolean onChildClick(ExpandableListView expandableListView, View view, int i2, int i3, long j2);
    }

    public interface OnGroupClickListener {
        boolean onGroupClick(ExpandableListView expandableListView, View view, int i2, long j2);
    }

    public interface OnGroupCollapseListener {
        void onGroupCollapse(int i2);
    }

    public interface OnGroupExpandListener {
        void onGroupExpand(int i2);
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.ExpandableListView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public ArrayList<ExpandableListConnector.GroupMetadata> expandedGroupMetadataList;

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeList(this.expandedGroupMetadataList);
        }

        public SavedState(Parcelable parcelable, ArrayList<ExpandableListConnector.GroupMetadata> arrayList) {
            super(parcelable);
            this.expandedGroupMetadataList = arrayList;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            ArrayList<ExpandableListConnector.GroupMetadata> arrayList = new ArrayList<>();
            this.expandedGroupMetadataList = arrayList;
            parcel.readList(arrayList, ExpandableListConnector.class.getClassLoader());
        }
    }

    static {
        int[] iArr = new int[0];
        EMPTY_STATE_SET = iArr;
        int[] iArr2 = {R.attr.state_expanded};
        GROUP_EXPANDED_STATE_SET = iArr2;
        int[] iArr3 = {R.attr.state_empty};
        GROUP_EMPTY_STATE_SET = iArr3;
        int[] iArr4 = {R.attr.state_expanded, R.attr.state_empty};
        GROUP_EXPANDED_EMPTY_STATE_SET = iArr4;
        GROUP_STATE_SETS = new int[][]{iArr, iArr2, iArr3, iArr4};
        CHILD_LAST_STATE_SET = new int[]{R.attr.state_last};
    }

    public ExpandableListView(Context context) {
        this(context, null);
    }

    private int getAbsoluteFlatPosition(int i2) {
        return i2 + getHeaderViewsCount();
    }

    private long getChildOrGroupId(ExpandableListPosition expandableListPosition) {
        return expandableListPosition.type == 1 ? this.mAdapter.getChildId(expandableListPosition.groupPos, expandableListPosition.childPos) : this.mAdapter.getGroupId(expandableListPosition.groupPos);
    }

    private int getFlatPositionForConnector(int i2) {
        return i2 - getHeaderViewsCount();
    }

    private Drawable getIndicator(ExpandableListConnector.PositionMetadata positionMetadata) {
        Drawable drawable;
        if (positionMetadata.position.type == 2) {
            drawable = this.mGroupIndicator;
            if (drawable != null && drawable.isStateful()) {
                ExpandableListConnector.GroupMetadata groupMetadata = positionMetadata.groupMetadata;
                drawable.setState(GROUP_STATE_SETS[(positionMetadata.isExpanded() ? 1 : 0) | (groupMetadata == null || groupMetadata.lastChildFlPos == groupMetadata.flPos ? 2 : 0)]);
            }
        } else {
            drawable = this.mChildIndicator;
            if (drawable != null && drawable.isStateful()) {
                drawable.setState(positionMetadata.position.flatListPos == positionMetadata.groupMetadata.lastChildFlPos ? CHILD_LAST_STATE_SET : EMPTY_STATE_SET);
            }
        }
        return drawable;
    }

    public static int getPackedPositionChild(long j2) {
        if (j2 != 4294967295L && (j2 & Long.MIN_VALUE) == Long.MIN_VALUE) {
            return (int) (j2 & 4294967295L);
        }
        return -1;
    }

    public static long getPackedPositionForChild(int i2, int i3) {
        return (((long) i3) & (-1)) | ((((long) i2) & PACKED_POSITION_INT_MASK_GROUP) << 32) | Long.MIN_VALUE;
    }

    public static long getPackedPositionForGroup(int i2) {
        return (((long) i2) & PACKED_POSITION_INT_MASK_GROUP) << 32;
    }

    public static int getPackedPositionGroup(long j2) {
        if (j2 == 4294967295L) {
            return -1;
        }
        return (int) ((j2 & PACKED_POSITION_MASK_GROUP) >> 32);
    }

    public static int getPackedPositionType(long j2) {
        if (j2 == 4294967295L) {
            return 2;
        }
        return (j2 & Long.MIN_VALUE) == Long.MIN_VALUE ? 1 : 0;
    }

    private boolean hasRtlSupport() {
        return this.mContext.getApplicationInfo().hasRtlSupport();
    }

    private boolean isHeaderOrFooterPosition(int i2) {
        return i2 < getHeaderViewsCount() || i2 >= this.mItemCount - getFooterViewsCount();
    }

    private boolean isRtlCompatibilityMode() {
        return this.mContext.getApplicationInfo().targetSdkVersion < 17 || !hasRtlSupport();
    }

    private void resolveChildIndicator() {
        if (isLayoutRtl()) {
            int i2 = this.mChildIndicatorStart;
            if (i2 >= -1) {
                this.mChildIndicatorRight = i2;
            }
            int i3 = this.mChildIndicatorEnd;
            if (i3 >= -1) {
                this.mChildIndicatorLeft = i3;
                return;
            }
            return;
        }
        int i4 = this.mChildIndicatorStart;
        if (i4 >= -1) {
            this.mChildIndicatorLeft = i4;
        }
        int i5 = this.mChildIndicatorEnd;
        if (i5 >= -1) {
            this.mChildIndicatorRight = i5;
        }
    }

    private void resolveIndicator() {
        Drawable drawable;
        if (isLayoutRtl()) {
            int i2 = this.mIndicatorStart;
            if (i2 >= 0) {
                this.mIndicatorRight = i2;
            }
            int i3 = this.mIndicatorEnd;
            if (i3 >= 0) {
                this.mIndicatorLeft = i3;
            }
        } else {
            int i4 = this.mIndicatorStart;
            if (i4 >= 0) {
                this.mIndicatorLeft = i4;
            }
            int i5 = this.mIndicatorEnd;
            if (i5 >= 0) {
                this.mIndicatorRight = i5;
            }
        }
        if (this.mIndicatorRight != 0 || (drawable = this.mGroupIndicator) == null) {
            return;
        }
        this.mIndicatorRight = this.mIndicatorLeft + drawable.getIntrinsicWidth();
    }

    public boolean collapseGroup(int i2) {
        boolean zCollapseGroup = this.mConnector.collapseGroup(i2);
        OnGroupCollapseListener onGroupCollapseListener = this.mOnGroupCollapseListener;
        if (onGroupCollapseListener != null) {
            onGroupCollapseListener.onGroupCollapse(i2);
        }
        return zCollapseGroup;
    }

    @Override // android.widget.AbsListView
    public ContextMenu.ContextMenuInfo createContextMenuInfo(View view, int i2, long j2) {
        if (isHeaderOrFooterPosition(i2)) {
            return new AdapterView.AdapterContextMenuInfo(view, i2, j2);
        }
        ExpandableListConnector.PositionMetadata unflattenedPos = this.mConnector.getUnflattenedPos(getFlatPositionForConnector(i2));
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        long childOrGroupId = getChildOrGroupId(expandableListPosition);
        long packedPosition = expandableListPosition.getPackedPosition();
        unflattenedPos.recycle();
        return new ExpandableListContextMenuInfo(view, packedPosition, childOrGroupId);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iSave;
        super.dispatchDraw(canvas);
        if (this.mChildIndicator == null && this.mGroupIndicator == null) {
            return;
        }
        int i2 = 0;
        boolean z2 = (this.mGroupFlags & 34) == 34;
        if (z2) {
            iSave = canvas.save();
            int i3 = this.mScrollX;
            int i4 = this.mScrollY;
            canvas.clipRect(this.mPaddingLeft + i3, this.mPaddingTop + i4, ((i3 + this.mRight) - this.mLeft) - this.mPaddingRight, ((i4 + this.mBottom) - this.mTop) - this.mPaddingBottom);
        } else {
            iSave = 0;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = ((this.mItemCount - getFooterViewsCount()) - headerViewsCount) - 1;
        int i5 = this.mBottom;
        int i6 = -4;
        Rect rect = this.mIndicatorRect;
        int childCount = getChildCount();
        int i7 = this.mFirstPosition - headerViewsCount;
        while (i2 < childCount) {
            if (i7 >= 0) {
                if (i7 > footerViewsCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                if (bottom >= 0 && top <= i5) {
                    ExpandableListConnector.PositionMetadata unflattenedPos = this.mConnector.getUnflattenedPos(i7);
                    boolean zIsLayoutRtl = isLayoutRtl();
                    int width = getWidth();
                    int i8 = unflattenedPos.position.type;
                    if (i8 != i6) {
                        if (i8 == 1) {
                            int i9 = this.mChildIndicatorLeft;
                            if (i9 == -1) {
                                i9 = this.mIndicatorLeft;
                            }
                            rect.left = i9;
                            int i10 = this.mChildIndicatorRight;
                            if (i10 == -1) {
                                i10 = this.mIndicatorRight;
                            }
                            rect.right = i10;
                        } else {
                            rect.left = this.mIndicatorLeft;
                            rect.right = this.mIndicatorRight;
                        }
                        if (zIsLayoutRtl) {
                            int i11 = rect.left;
                            int i12 = width - rect.right;
                            rect.left = i12;
                            int i13 = width - i11;
                            rect.right = i13;
                            int i14 = this.mPaddingRight;
                            rect.left = i12 - i14;
                            rect.right = i13 - i14;
                        } else {
                            int i15 = rect.left;
                            int i16 = this.mPaddingLeft;
                            rect.left = i15 + i16;
                            rect.right += i16;
                        }
                        i6 = i8;
                    }
                    if (rect.left != rect.right) {
                        if (this.mStackFromBottom) {
                            rect.top = top;
                            rect.bottom = bottom;
                        } else {
                            rect.top = top;
                            rect.bottom = bottom;
                        }
                        Drawable indicator = getIndicator(unflattenedPos);
                        if (indicator != null) {
                            indicator.setBounds(rect);
                            indicator.draw(canvas);
                        }
                    }
                    unflattenedPos.recycle();
                }
            }
            i2++;
            i7++;
            footerViewsCount = footerViewsCount;
        }
        if (z2) {
            canvas.restoreToCount(iSave);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        if (r1.lastChildFlPos != r1.flPos) goto L12;
     */
    @Override // android.widget.ListView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawDivider(android.graphics.Canvas r4, android.graphics.Rect r5, int r6) {
        /*
            r3 = this;
            int r0 = r3.mFirstPosition
            int r6 = r6 + r0
            if (r6 < 0) goto L35
            int r0 = r3.getFlatPositionForConnector(r6)
            android.widget.ExpandableListConnector r1 = r3.mConnector
            android.widget.ExpandableListConnector$PositionMetadata r0 = r1.getUnflattenedPos(r0)
            android.widget.ExpandableListPosition r1 = r0.position
            int r1 = r1.type
            r2 = 1
            if (r1 == r2) goto L29
            boolean r1 = r0.isExpanded()
            if (r1 == 0) goto L25
            android.widget.ExpandableListConnector$GroupMetadata r1 = r0.groupMetadata
            int r2 = r1.lastChildFlPos
            int r1 = r1.flPos
            if (r2 == r1) goto L25
            goto L29
        L25:
            r0.recycle()
            goto L35
        L29:
            android.graphics.drawable.Drawable r6 = r3.mChildDivider
            r6.setBounds(r5)
            r6.draw(r4)
            r0.recycle()
            return
        L35:
            super.drawDivider(r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.ExpandableListView.drawDivider(android.graphics.Canvas, android.graphics.Rect, int):void");
    }

    public boolean expandGroup(int i2) {
        return expandGroup(i2, false);
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        return this.mAdapter;
    }

    public long getExpandableListPosition(int i2) {
        if (isHeaderOrFooterPosition(i2)) {
            return 4294967295L;
        }
        ExpandableListConnector.PositionMetadata unflattenedPos = this.mConnector.getUnflattenedPos(getFlatPositionForConnector(i2));
        long packedPosition = unflattenedPos.position.getPackedPosition();
        unflattenedPos.recycle();
        return packedPosition;
    }

    public int getFlatListPosition(long j2) {
        ExpandableListPosition expandableListPositionObtainPosition = ExpandableListPosition.obtainPosition(j2);
        ExpandableListConnector.PositionMetadata flattenedPos = this.mConnector.getFlattenedPos(expandableListPositionObtainPosition);
        expandableListPositionObtainPosition.recycle();
        int i2 = flattenedPos.position.flatListPos;
        flattenedPos.recycle();
        return getAbsoluteFlatPosition(i2);
    }

    public long getSelectedId() {
        long selectedPosition = getSelectedPosition();
        if (selectedPosition == 4294967295L) {
            return -1L;
        }
        int packedPositionGroup = getPackedPositionGroup(selectedPosition);
        return getPackedPositionType(selectedPosition) == 0 ? this.mAdapter.getGroupId(packedPositionGroup) : this.mAdapter.getChildId(packedPositionGroup, getPackedPositionChild(selectedPosition));
    }

    public long getSelectedPosition() {
        return getExpandableListPosition(getSelectedItemPosition());
    }

    public boolean handleItemClick(View view, int i2, long j2) {
        ExpandableListConnector.PositionMetadata unflattenedPos = this.mConnector.getUnflattenedPos(i2);
        long childOrGroupId = getChildOrGroupId(unflattenedPos.position);
        ExpandableListPosition expandableListPosition = unflattenedPos.position;
        boolean z2 = true;
        if (expandableListPosition.type == 2) {
            OnGroupClickListener onGroupClickListener = this.mOnGroupClickListener;
            if (onGroupClickListener != null && onGroupClickListener.onGroupClick(this, view, expandableListPosition.groupPos, childOrGroupId)) {
                unflattenedPos.recycle();
                return true;
            }
            if (unflattenedPos.isExpanded()) {
                this.mConnector.collapseGroup(unflattenedPos);
                playSoundEffect(0);
                OnGroupCollapseListener onGroupCollapseListener = this.mOnGroupCollapseListener;
                if (onGroupCollapseListener != null) {
                    onGroupCollapseListener.onGroupCollapse(unflattenedPos.position.groupPos);
                }
            } else {
                this.mConnector.expandGroup(unflattenedPos);
                playSoundEffect(0);
                OnGroupExpandListener onGroupExpandListener = this.mOnGroupExpandListener;
                if (onGroupExpandListener != null) {
                    onGroupExpandListener.onGroupExpand(unflattenedPos.position.groupPos);
                }
                ExpandableListPosition expandableListPosition2 = unflattenedPos.position;
                int i3 = expandableListPosition2.groupPos;
                int headerViewsCount = expandableListPosition2.flatListPos + getHeaderViewsCount();
                smoothScrollToPosition(this.mAdapter.getChildrenCount(i3) + headerViewsCount, headerViewsCount);
            }
        } else {
            if (this.mOnChildClickListener != null) {
                playSoundEffect(0);
                OnChildClickListener onChildClickListener = this.mOnChildClickListener;
                ExpandableListPosition expandableListPosition3 = unflattenedPos.position;
                return onChildClickListener.onChildClick(this, view, expandableListPosition3.groupPos, expandableListPosition3.childPos, childOrGroupId);
            }
            z2 = false;
        }
        unflattenedPos.recycle();
        return z2;
    }

    public boolean isGroupExpanded(int i2) {
        return this.mConnector.isGroupExpanded(i2);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ExpandableListView.class.getName());
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ExpandableListView.class.getName());
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ArrayList<ExpandableListConnector.GroupMetadata> arrayList;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ExpandableListConnector expandableListConnector = this.mConnector;
        if (expandableListConnector == null || (arrayList = savedState.expandedGroupMetadataList) == null) {
            return;
        }
        expandableListConnector.setExpandedGroupMetadataList(arrayList);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRtlPropertiesChanged(int i2) {
        resolveIndicator();
        resolveChildIndicator();
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        ExpandableListConnector expandableListConnector = this.mConnector;
        return new SavedState(parcelableOnSaveInstanceState, expandableListConnector != null ? expandableListConnector.getExpandedGroupMetadataList() : null);
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView
    public boolean performItemClick(View view, int i2, long j2) {
        return isHeaderOrFooterPosition(i2) ? super.performItemClick(view, i2, j2) : handleItemClick(view, getFlatPositionForConnector(i2), j2);
    }

    public void setChildDivider(Drawable drawable) {
        this.mChildDivider = drawable;
    }

    public void setChildIndicator(Drawable drawable) {
        this.mChildIndicator = drawable;
    }

    public void setChildIndicatorBounds(int i2, int i3) {
        this.mChildIndicatorLeft = i2;
        this.mChildIndicatorRight = i3;
        resolveChildIndicator();
    }

    public void setChildIndicatorBoundsRelative(int i2, int i3) {
        this.mChildIndicatorStart = i2;
        this.mChildIndicatorEnd = i3;
        resolveChildIndicator();
    }

    public void setGroupIndicator(Drawable drawable) {
        this.mGroupIndicator = drawable;
        if (this.mIndicatorRight != 0 || drawable == null) {
            return;
        }
        this.mIndicatorRight = this.mIndicatorLeft + drawable.getIntrinsicWidth();
    }

    public void setIndicatorBounds(int i2, int i3) {
        this.mIndicatorLeft = i2;
        this.mIndicatorRight = i3;
        resolveIndicator();
    }

    public void setIndicatorBoundsRelative(int i2, int i3) {
        this.mIndicatorStart = i2;
        this.mIndicatorEnd = i3;
        resolveIndicator();
    }

    public void setOnChildClickListener(OnChildClickListener onChildClickListener) {
        this.mOnChildClickListener = onChildClickListener;
    }

    public void setOnGroupClickListener(OnGroupClickListener onGroupClickListener) {
        this.mOnGroupClickListener = onGroupClickListener;
    }

    public void setOnGroupCollapseListener(OnGroupCollapseListener onGroupCollapseListener) {
        this.mOnGroupCollapseListener = onGroupCollapseListener;
    }

    public void setOnGroupExpandListener(OnGroupExpandListener onGroupExpandListener) {
        this.mOnGroupExpandListener = onGroupExpandListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        super.setOnItemClickListener(onItemClickListener);
    }

    public boolean setSelectedChild(int i2, int i3, boolean z2) {
        ExpandableListPosition expandableListPositionObtainChildPosition = ExpandableListPosition.obtainChildPosition(i2, i3);
        ExpandableListConnector.PositionMetadata flattenedPos = this.mConnector.getFlattenedPos(expandableListPositionObtainChildPosition);
        if (flattenedPos == null) {
            if (!z2) {
                return false;
            }
            expandGroup(i2);
            flattenedPos = this.mConnector.getFlattenedPos(expandableListPositionObtainChildPosition);
            if (flattenedPos == null) {
                throw new IllegalStateException("Could not find child");
            }
        }
        super.setSelection(getAbsoluteFlatPosition(flattenedPos.position.flatListPos));
        expandableListPositionObtainChildPosition.recycle();
        flattenedPos.recycle();
        return true;
    }

    public void setSelectedGroup(int i2) {
        ExpandableListPosition expandableListPositionObtainGroupPosition = ExpandableListPosition.obtainGroupPosition(i2);
        ExpandableListConnector.PositionMetadata flattenedPos = this.mConnector.getFlattenedPos(expandableListPositionObtainGroupPosition);
        expandableListPositionObtainGroupPosition.recycle();
        super.setSelection(getAbsoluteFlatPosition(flattenedPos.position.flatListPos));
        flattenedPos.recycle();
    }

    public ExpandableListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.expandableListViewStyle);
    }

    public boolean expandGroup(int i2, boolean z2) {
        ExpandableListPosition expandableListPositionObtain = ExpandableListPosition.obtain(2, i2, -1, -1);
        ExpandableListConnector.PositionMetadata flattenedPos = this.mConnector.getFlattenedPos(expandableListPositionObtain);
        expandableListPositionObtain.recycle();
        boolean zExpandGroup = this.mConnector.expandGroup(flattenedPos);
        OnGroupExpandListener onGroupExpandListener = this.mOnGroupExpandListener;
        if (onGroupExpandListener != null) {
            onGroupExpandListener.onGroupExpand(i2);
        }
        if (z2) {
            int headerViewsCount = flattenedPos.position.flatListPos + getHeaderViewsCount();
            smoothScrollToPosition(this.mAdapter.getChildrenCount(i2) + headerViewsCount, headerViewsCount);
        }
        flattenedPos.recycle();
        return zExpandGroup;
    }

    @Override // android.widget.ListView, android.widget.AdapterView
    public ListAdapter getAdapter() {
        return super.getAdapter();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        throw new RuntimeException("For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)");
    }

    public ExpandableListView(Context context, AttributeSet attributeSet, int i2) {
        Drawable drawable;
        super(context, attributeSet, i2);
        this.mIndicatorRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ExpandableListView, i2, 0);
        this.mGroupIndicator = typedArrayObtainStyledAttributes.getDrawable(0);
        this.mChildIndicator = typedArrayObtainStyledAttributes.getDrawable(1);
        this.mIndicatorLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.mIndicatorRight = dimensionPixelSize;
        if (dimensionPixelSize == 0 && (drawable = this.mGroupIndicator) != null) {
            this.mIndicatorRight = this.mIndicatorLeft + drawable.getIntrinsicWidth();
        }
        this.mChildIndicatorLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, -1);
        this.mChildIndicatorRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, -1);
        this.mChildDivider = typedArrayObtainStyledAttributes.getDrawable(6);
        if (!isRtlCompatibilityMode()) {
            this.mIndicatorStart = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -2);
            this.mIndicatorEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, -2);
            this.mChildIndicatorStart = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -1);
            this.mChildIndicatorEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, -1);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAdapter(ExpandableListAdapter expandableListAdapter) {
        this.mAdapter = expandableListAdapter;
        if (expandableListAdapter != null) {
            this.mConnector = new ExpandableListConnector(expandableListAdapter);
        } else {
            this.mConnector = null;
        }
        super.setAdapter((ListAdapter) this.mConnector);
    }
}
