package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TableLayout extends LinearLayout {
    private SparseBooleanArray mCollapsedColumns;
    private boolean mInitialized;
    private int[] mMaxWidths;
    private PassThroughHierarchyChangeListener mPassThroughListener;
    private boolean mShrinkAllColumns;
    private SparseBooleanArray mShrinkableColumns;
    private boolean mStretchAllColumns;
    private SparseBooleanArray mStretchableColumns;

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            this.width = -1;
            if (typedArray.hasValue(i3)) {
                this.height = typedArray.getLayoutDimension(i3, "layout_height");
            } else {
                this.height = -2;
            }
        }

        public LayoutParams(int i2, int i3) {
            super(-1, i3);
        }

        public LayoutParams(int i2, int i3, float f2) {
            super(-1, i3, f2);
        }

        public LayoutParams() {
            super(-1, -2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.width = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.width = -1;
            if (marginLayoutParams instanceof LayoutParams) {
                this.weight = ((LayoutParams) marginLayoutParams).weight;
            }
        }
    }

    public class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;

        private PassThroughHierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            TableLayout.this.trackCollapsedColumns(view2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public TableLayout(Context context) {
        super(context);
        initTableLayout();
    }

    private void findLargestCells(int i2, int i3) {
        int childCount = getChildCount();
        boolean z2 = true;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && (childAt instanceof TableRow)) {
                TableRow tableRow = (TableRow) childAt;
                tableRow.getLayoutParams().height = -2;
                int[] columnsWidths = tableRow.getColumnsWidths(i2, i3);
                int length = columnsWidths.length;
                if (z2) {
                    int[] iArr = this.mMaxWidths;
                    if (iArr == null || iArr.length != length) {
                        this.mMaxWidths = new int[length];
                    }
                    System.arraycopy(columnsWidths, 0, this.mMaxWidths, 0, length);
                    z2 = false;
                } else {
                    int[] iArr2 = this.mMaxWidths;
                    int length2 = iArr2.length;
                    int i5 = length - length2;
                    if (i5 > 0) {
                        int[] iArr3 = new int[length];
                        this.mMaxWidths = iArr3;
                        System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                        System.arraycopy(columnsWidths, iArr2.length, this.mMaxWidths, iArr2.length, i5);
                    }
                    int[] iArr4 = this.mMaxWidths;
                    int iMin = Math.min(length2, length);
                    for (int i6 = 0; i6 < iMin; i6++) {
                        iArr4[i6] = Math.max(iArr4[i6], columnsWidths[i6]);
                    }
                }
            }
        }
    }

    private void initTableLayout() {
        if (this.mCollapsedColumns == null) {
            this.mCollapsedColumns = new SparseBooleanArray();
        }
        if (this.mStretchableColumns == null) {
            this.mStretchableColumns = new SparseBooleanArray();
        }
        if (this.mShrinkableColumns == null) {
            this.mShrinkableColumns = new SparseBooleanArray();
        }
        setOrientation(1);
        PassThroughHierarchyChangeListener passThroughHierarchyChangeListener = new PassThroughHierarchyChangeListener();
        this.mPassThroughListener = passThroughHierarchyChangeListener;
        super.setOnHierarchyChangeListener(passThroughHierarchyChangeListener);
        this.mInitialized = true;
    }

    private void mutateColumnsWidth(SparseBooleanArray sparseBooleanArray, boolean z2, int i2, int i3) {
        int[] iArr = this.mMaxWidths;
        int length = iArr.length;
        int size = z2 ? length : sparseBooleanArray.size();
        int i4 = (i2 - i3) / size;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt instanceof TableRow) {
                childAt.forceLayout();
            }
        }
        if (z2) {
            for (int i6 = 0; i6 < size; i6++) {
                iArr[i6] = iArr[i6] + i4;
            }
            return;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            int iKeyAt = sparseBooleanArray.keyAt(i8);
            if (sparseBooleanArray.valueAt(i8)) {
                if (iKeyAt < length) {
                    iArr[iKeyAt] = iArr[iKeyAt] + i4;
                } else {
                    i7++;
                }
            }
        }
        if (i7 <= 0 || i7 >= size) {
            return;
        }
        int i9 = (i4 * i7) / (size - i7);
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt2 = sparseBooleanArray.keyAt(i10);
            if (sparseBooleanArray.valueAt(i10) && iKeyAt2 < length) {
                int i11 = iArr[iKeyAt2];
                if (i9 > i11) {
                    iArr[iKeyAt2] = 0;
                } else {
                    iArr[iKeyAt2] = i11 + i9;
                }
            }
        }
    }

    private static SparseBooleanArray parseColumns(String str) {
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        for (String str2 : Pattern.compile("\\s*,\\s*").split(str)) {
            try {
                int i2 = Integer.parseInt(str2);
                if (i2 >= 0) {
                    sparseBooleanArray.put(i2, true);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return sparseBooleanArray;
    }

    private void requestRowsLayout() {
        if (this.mInitialized) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).requestLayout();
            }
        }
    }

    private void shrinkAndStretchColumns(int i2) {
        int[] iArr = this.mMaxWidths;
        if (iArr == null) {
            return;
        }
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        int size = (View.MeasureSpec.getSize(i2) - this.mPaddingLeft) - this.mPaddingRight;
        if (i3 > size && (this.mShrinkAllColumns || this.mShrinkableColumns.size() > 0)) {
            mutateColumnsWidth(this.mShrinkableColumns, this.mShrinkAllColumns, size, i3);
        } else if (i3 < size) {
            if (this.mStretchAllColumns || this.mStretchableColumns.size() > 0) {
                mutateColumnsWidth(this.mStretchableColumns, this.mStretchAllColumns, size, i3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackCollapsedColumns(View view) {
        if (view instanceof TableRow) {
            TableRow tableRow = (TableRow) view;
            SparseBooleanArray sparseBooleanArray = this.mCollapsedColumns;
            int size = sparseBooleanArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = sparseBooleanArray.keyAt(i2);
                boolean zValueAt = sparseBooleanArray.valueAt(i2);
                if (zValueAt) {
                    tableRow.setColumnCollapsed(iKeyAt, zValueAt);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        requestRowsLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TableLayout.class.getName();
    }

    public boolean isColumnCollapsed(int i2) {
        return this.mCollapsedColumns.get(i2);
    }

    public boolean isColumnShrinkable(int i2) {
        return this.mShrinkAllColumns || this.mShrinkableColumns.get(i2);
    }

    public boolean isColumnStretchable(int i2) {
        return this.mStretchAllColumns || this.mStretchableColumns.get(i2);
    }

    public boolean isShrinkAllColumns() {
        return this.mShrinkAllColumns;
    }

    public boolean isStretchAllColumns() {
        return this.mStretchAllColumns;
    }

    @Override // android.widget.LinearLayout
    public void measureChildBeforeLayout(View view, int i2, int i3, int i4, int i5, int i6) {
        if (view instanceof TableRow) {
            ((TableRow) view).setColumnsWidthConstraints(this.mMaxWidths);
        }
        super.measureChildBeforeLayout(view, i2, i3, i4, i5, i6);
    }

    @Override // android.widget.LinearLayout
    public void measureVertical(int i2, int i3) {
        findLargestCells(i2, i3);
        shrinkAndStretchColumns(i2);
        super.measureVertical(i2, i3);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        layoutVertical(i2, i3, i4, i5);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        measureVertical(i2, i3);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInitialized) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).forceLayout();
            }
        }
        super.requestLayout();
    }

    public void setColumnCollapsed(int i2, boolean z2) {
        this.mCollapsedColumns.put(i2, z2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt instanceof TableRow) {
                ((TableRow) childAt).setColumnCollapsed(i2, z2);
            }
        }
        requestRowsLayout();
    }

    public void setColumnShrinkable(int i2, boolean z2) {
        this.mShrinkableColumns.put(i2, z2);
        requestRowsLayout();
    }

    public void setColumnStretchable(int i2, boolean z2) {
        this.mStretchableColumns.put(i2, z2);
        requestRowsLayout();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mPassThroughListener.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setShrinkAllColumns(boolean z2) {
        this.mShrinkAllColumns = z2;
    }

    public void setStretchAllColumns(boolean z2) {
        this.mStretchAllColumns = z2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public TableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TableLayout);
        String string = typedArrayObtainStyledAttributes.getString(0);
        if (string != null) {
            if (string.charAt(0) == '*') {
                this.mStretchAllColumns = true;
            } else {
                this.mStretchableColumns = parseColumns(string);
            }
        }
        String string2 = typedArrayObtainStyledAttributes.getString(1);
        if (string2 != null) {
            if (string2.charAt(0) == '*') {
                this.mShrinkAllColumns = true;
            } else {
                this.mShrinkableColumns = parseColumns(string2);
            }
        }
        String string3 = typedArrayObtainStyledAttributes.getString(2);
        if (string3 != null) {
            this.mCollapsedColumns = parseColumns(string3);
        }
        typedArrayObtainStyledAttributes.recycle();
        initTableLayout();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        super.addView(view, i2);
        requestRowsLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        requestRowsLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        requestRowsLayout();
    }
}
