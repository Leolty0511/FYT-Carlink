package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsSpinner extends AdapterView<SpinnerAdapter> {
    public SpinnerAdapter mAdapter;
    private DataSetObserver mDataSetObserver;
    public int mHeightMeasureSpec;
    public final RecycleBin mRecycler;
    public int mSelectionBottomPadding;
    public int mSelectionLeftPadding;
    public int mSelectionRightPadding;
    public int mSelectionTopPadding;
    public final Rect mSpinnerPadding;
    private Rect mTouchFrame;
    public int mWidthMeasureSpec;

    public class RecycleBin {
        private final SparseArray<View> mScrapHeap = new SparseArray<>();

        public RecycleBin() {
        }

        public void clear() {
            SparseArray<View> sparseArray = this.mScrapHeap;
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                View viewValueAt = sparseArray.valueAt(i2);
                if (viewValueAt != null) {
                    AbsSpinner.this.removeDetachedView(viewValueAt, true);
                }
            }
            sparseArray.clear();
        }

        public View get(int i2) {
            View view = this.mScrapHeap.get(i2);
            if (view != null) {
                this.mScrapHeap.delete(i2);
            }
            return view;
        }

        public void put(int i2, View view) {
            this.mScrapHeap.put(i2, view);
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.AbsSpinner.SavedState.1
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
        public int position;
        public long selectedId;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " position=" + this.position + "}";
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.selectedId);
            parcel.writeInt(this.position);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.selectedId = parcel.readLong();
            this.position = parcel.readInt();
        }
    }

    public AbsSpinner(Context context) {
        super(context);
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mSpinnerPadding = new Rect();
        this.mRecycler = new RecycleBin();
        initAbsSpinner();
    }

    private void initAbsSpinner() {
        setFocusable(true);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    public int getChildHeight(View view) {
        return view.getMeasuredHeight();
    }

    public int getChildWidth(View view) {
        return view.getMeasuredWidth();
    }

    @Override // android.widget.AdapterView
    public int getCount() {
        return this.mItemCount;
    }

    @Override // android.widget.AdapterView
    public View getSelectedView() {
        int i2;
        if (this.mItemCount <= 0 || (i2 = this.mSelectedPosition) < 0) {
            return null;
        }
        return getChildAt(i2 - this.mFirstPosition);
    }

    public abstract void layout(int i2, boolean z2);

    @Override // android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AbsSpinner.class.getName());
    }

    @Override // android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AbsSpinner.class.getName());
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        SpinnerAdapter spinnerAdapter;
        int mode = View.MeasureSpec.getMode(i2);
        Rect rect = this.mSpinnerPadding;
        int i6 = this.mPaddingLeft;
        int i7 = this.mSelectionLeftPadding;
        if (i6 <= i7) {
            i6 = i7;
        }
        rect.left = i6;
        int i8 = this.mPaddingTop;
        int i9 = this.mSelectionTopPadding;
        if (i8 <= i9) {
            i8 = i9;
        }
        rect.top = i8;
        int i10 = this.mPaddingRight;
        int i11 = this.mSelectionRightPadding;
        if (i10 <= i11) {
            i10 = i11;
        }
        rect.right = i10;
        int i12 = this.mPaddingBottom;
        int i13 = this.mSelectionBottomPadding;
        if (i12 <= i13) {
            i12 = i13;
        }
        rect.bottom = i12;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        int selectedItemPosition = getSelectedItemPosition();
        boolean z2 = true;
        if (selectedItemPosition < 0 || (spinnerAdapter = this.mAdapter) == null || selectedItemPosition >= spinnerAdapter.getCount()) {
            i4 = 0;
            i5 = 0;
        } else {
            View view = this.mRecycler.get(selectedItemPosition);
            if (view == null) {
                view = this.mAdapter.getView(selectedItemPosition, null, this);
                if (view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
            }
            this.mRecycler.put(selectedItemPosition, view);
            if (view.getLayoutParams() == null) {
                this.mBlockLayoutRequests = true;
                view.setLayoutParams(generateDefaultLayoutParams());
                this.mBlockLayoutRequests = false;
            }
            measureChild(view, i2, i3);
            int childHeight = getChildHeight(view);
            Rect rect2 = this.mSpinnerPadding;
            i4 = childHeight + rect2.top + rect2.bottom;
            int childWidth = getChildWidth(view);
            Rect rect3 = this.mSpinnerPadding;
            i5 = childWidth + rect3.left + rect3.right;
            z2 = false;
        }
        if (z2) {
            Rect rect4 = this.mSpinnerPadding;
            int i14 = rect4.top + rect4.bottom;
            if (mode == 0) {
                i5 = rect4.left + rect4.right;
            }
            i4 = i14;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i5, getSuggestedMinimumWidth()), i2, 0), View.resolveSizeAndState(Math.max(i4, getSuggestedMinimumHeight()), i3, 0));
        this.mHeightMeasureSpec = i3;
        this.mWidthMeasureSpec = i2;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        long j2 = savedState.selectedId;
        if (j2 >= 0) {
            this.mDataChanged = true;
            this.mNeedSync = true;
            this.mSyncRowId = j2;
            this.mSyncPosition = savedState.position;
            this.mSyncMode = 0;
            requestLayout();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        long selectedItemId = getSelectedItemId();
        savedState.selectedId = selectedItemId;
        if (selectedItemId >= 0) {
            savedState.position = getSelectedItemPosition();
        } else {
            savedState.position = -1;
        }
        return savedState;
    }

    public int pointToPosition(int i2, int i3) {
        Rect rect = this.mTouchFrame;
        if (rect == null) {
            rect = new Rect();
            this.mTouchFrame = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i2, i3)) {
                    return this.mFirstPosition + childCount;
                }
            }
        }
        return -1;
    }

    public void recycleAllViews() {
        int childCount = getChildCount();
        RecycleBin recycleBin = this.mRecycler;
        int i2 = this.mFirstPosition;
        for (int i3 = 0; i3 < childCount; i3++) {
            recycleBin.put(i2 + i3, getChildAt(i3));
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        super.requestLayout();
    }

    public void resetList() {
        this.mDataChanged = false;
        this.mNeedSync = false;
        removeAllViewsInLayout();
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    public void setSelection(int i2, boolean z2) {
        int i3;
        setSelectionInt(i2, z2 && (i3 = this.mFirstPosition) <= i2 && i2 <= (i3 + getChildCount()) - 1);
    }

    public void setSelectionInt(int i2, boolean z2) {
        if (i2 != this.mOldSelectedPosition) {
            this.mBlockLayoutRequests = true;
            int i3 = i2 - this.mSelectedPosition;
            setNextSelectedPositionInt(i2);
            layout(i3, z2);
            this.mBlockLayoutRequests = false;
        }
    }

    @Override // android.widget.AdapterView
    public SpinnerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        SpinnerAdapter spinnerAdapter2 = this.mAdapter;
        if (spinnerAdapter2 != null) {
            spinnerAdapter2.unregisterDataSetObserver(this.mDataSetObserver);
            resetList();
        }
        this.mAdapter = spinnerAdapter;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        if (spinnerAdapter != null) {
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = spinnerAdapter.getCount();
            checkFocus();
            AdapterView.AdapterDataSetObserver adapterDataSetObserver = new AdapterView.AdapterDataSetObserver();
            this.mDataSetObserver = adapterDataSetObserver;
            this.mAdapter.registerDataSetObserver(adapterDataSetObserver);
            int i2 = this.mItemCount > 0 ? 0 : -1;
            setSelectedPositionInt(i2);
            setNextSelectedPositionInt(i2);
            if (this.mItemCount == 0) {
                checkSelectionChanged();
            }
        } else {
            checkFocus();
            resetList();
            checkSelectionChanged();
        }
        requestLayout();
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i2) {
        setNextSelectedPositionInt(i2);
        requestLayout();
        invalidate();
    }

    public AbsSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbsSpinner(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mSpinnerPadding = new Rect();
        this.mRecycler = new RecycleBin();
        initAbsSpinner();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AbsSpinner, i2, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
