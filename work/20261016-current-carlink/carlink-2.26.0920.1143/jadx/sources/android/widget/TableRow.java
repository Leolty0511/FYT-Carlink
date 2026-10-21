package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.media.TtmlUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class TableRow extends LinearLayout {
    private ChildrenTracker mChildrenTracker;
    private SparseIntArray mColumnToChildIndex;
    private int[] mColumnWidths;
    private int[] mConstrainedColumnWidths;
    private int mNumColumns;

    public class ChildrenTracker implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener listener;

        private ChildrenTracker() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
            this.listener = onHierarchyChangeListener;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            TableRow.this.mColumnToChildIndex = null;
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.listener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            TableRow.this.mColumnToChildIndex = null;
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.listener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public TableRow(Context context) {
        super(context);
        this.mNumColumns = 0;
        initTableRow();
    }

    private void initTableRow() {
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
        ChildrenTracker childrenTracker = new ChildrenTracker();
        this.mChildrenTracker = childrenTracker;
        if (onHierarchyChangeListener != null) {
            childrenTracker.setOnHierarchyChangeListener(onHierarchyChangeListener);
        }
        super.setOnHierarchyChangeListener(this.mChildrenTracker);
    }

    private void mapIndexAndColumns() {
        if (this.mColumnToChildIndex == null) {
            int childCount = getChildCount();
            SparseIntArray sparseIntArray = new SparseIntArray();
            this.mColumnToChildIndex = sparseIntArray;
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                int i4 = layoutParams.column;
                if (i4 >= i2) {
                    i2 = i4;
                }
                int i5 = 0;
                while (i5 < layoutParams.span) {
                    sparseIntArray.put(i2, i3);
                    i5++;
                    i2++;
                }
            }
            this.mNumColumns = i2;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TableRow.class.getName();
    }

    @Override // android.widget.LinearLayout
    public int getChildrenSkipCount(View view, int i2) {
        return ((LayoutParams) view.getLayoutParams()).span - 1;
    }

    public int[] getColumnsWidths(int i2, int i3) {
        int virtualChildCount = getVirtualChildCount();
        int[] iArr = this.mColumnWidths;
        if (iArr == null || virtualChildCount != iArr.length) {
            this.mColumnWidths = new int[virtualChildCount];
        }
        int[] iArr2 = this.mColumnWidths;
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt == null || virtualChildAt.getVisibility() == 8) {
                iArr2[i4] = 0;
            } else {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.span == 1) {
                    int i5 = layoutParams.width;
                    int iMakeMeasureSpec = i5 != -2 ? i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i3), 0) : ViewGroup.getChildMeasureSpec(i2, 0, -2);
                    virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    iArr2[i4] = virtualChildAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
                } else {
                    iArr2[i4] = 0;
                }
            }
        }
        return iArr2;
    }

    @Override // android.widget.LinearLayout
    public int getLocationOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).mOffset[0];
    }

    @Override // android.widget.LinearLayout
    public int getNextLocationOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).mOffset[1];
    }

    @Override // android.widget.LinearLayout
    public View getVirtualChildAt(int i2) {
        if (this.mColumnToChildIndex == null) {
            mapIndexAndColumns();
        }
        int i3 = this.mColumnToChildIndex.get(i2, -1);
        if (i3 != -1) {
            return getChildAt(i3);
        }
        return null;
    }

    @Override // android.widget.LinearLayout
    public int getVirtualChildCount() {
        if (this.mColumnToChildIndex == null) {
            mapIndexAndColumns();
        }
        return this.mNumColumns;
    }

    @Override // android.widget.LinearLayout
    public void measureChildBeforeLayout(View view, int i2, int i3, int i4, int i5, int i6) {
        if (this.mConstrainedColumnWidths == null) {
            super.measureChildBeforeLayout(view, i2, i3, i4, i5, i6);
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i7 = layoutParams.span;
        int[] iArr = this.mConstrainedColumnWidths;
        int i8 = 0;
        for (int i9 = 0; i9 < i7; i9++) {
            i8 += iArr[i2 + i9];
        }
        int i10 = layoutParams.gravity;
        boolean zIsHorizontal = Gravity.isHorizontal(i10);
        view.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (i8 - layoutParams.leftMargin) - layoutParams.rightMargin), zIsHorizontal ? Integer.MIN_VALUE : 1073741824), ViewGroup.getChildMeasureSpec(i5, this.mPaddingTop + this.mPaddingBottom + layoutParams.topMargin + layoutParams.bottomMargin + i6, layoutParams.height));
        if (!zIsHorizontal) {
            int[] iArr2 = layoutParams.mOffset;
            layoutParams.mOffset[1] = 0;
            iArr2[0] = 0;
            return;
        }
        layoutParams.mOffset[1] = i8 - view.getMeasuredWidth();
        int absoluteGravity = Gravity.getAbsoluteGravity(i10, getLayoutDirection()) & 7;
        if (absoluteGravity == 1) {
            layoutParams.mOffset[0] = layoutParams.mOffset[1] / 2;
        } else {
            if (absoluteGravity != 5) {
                return;
            }
            layoutParams.mOffset[0] = layoutParams.mOffset[1];
        }
    }

    @Override // android.widget.LinearLayout
    public int measureNullChild(int i2) {
        return this.mConstrainedColumnWidths[i2];
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        layoutHorizontal(i2, i3, i4, i5);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        measureHorizontal(i2, i3);
    }

    public void setColumnCollapsed(int i2, boolean z2) {
        View virtualChildAt = getVirtualChildAt(i2);
        if (virtualChildAt != null) {
            virtualChildAt.setVisibility(z2 ? 8 : 0);
        }
    }

    public void setColumnsWidthConstraints(int[] iArr) {
        if (iArr == null || iArr.length < getVirtualChildCount()) {
            throw new IllegalArgumentException("columnWidths should be >= getVirtualChildCount()");
        }
        this.mConstrainedColumnWidths = iArr;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mChildrenTracker.setOnHierarchyChangeListener(onHierarchyChangeListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public TableRow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mNumColumns = 0;
        initTableRow();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        private static final int LOCATION = 0;
        private static final int LOCATION_NEXT = 1;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public int column;
        private int[] mOffset;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public int span;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOffset = new int[2];
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TableRow_Cell);
            this.column = typedArrayObtainStyledAttributes.getInt(0, -1);
            int i2 = typedArrayObtainStyledAttributes.getInt(1, 1);
            this.span = i2;
            if (i2 <= 1) {
                this.span = 1;
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.widget.LinearLayout.LayoutParams, android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("layout:column", this.column);
            viewHierarchyEncoder.addProperty("layout:span", this.span);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            if (typedArray.hasValue(i2)) {
                this.width = typedArray.getLayoutDimension(i2, "layout_width");
            } else {
                this.width = -1;
            }
            if (typedArray.hasValue(i3)) {
                this.height = typedArray.getLayoutDimension(i3, "layout_height");
            } else {
                this.height = -2;
            }
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.mOffset = new int[2];
            this.column = -1;
            this.span = 1;
        }

        public LayoutParams(int i2, int i3, float f2) {
            super(i2, i3, f2);
            this.mOffset = new int[2];
            this.column = -1;
            this.span = 1;
        }

        public LayoutParams() {
            super(-1, -2);
            this.mOffset = new int[2];
            this.column = -1;
            this.span = 1;
        }

        public LayoutParams(int i2) {
            this();
            this.column = i2;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mOffset = new int[2];
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mOffset = new int[2];
        }
    }
}
