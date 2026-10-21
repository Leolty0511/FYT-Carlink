package android.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.Adapter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final int INVALID_POSITION = -1;
    public static final long INVALID_ROW_ID = Long.MIN_VALUE;
    public static final int ITEM_VIEW_TYPE_HEADER_OR_FOOTER = -2;
    public static final int ITEM_VIEW_TYPE_IGNORE = -1;
    static final int SYNC_FIRST_POSITION = 1;
    static final int SYNC_MAX_DURATION_MILLIS = 100;
    static final int SYNC_SELECTED_POSITION = 0;
    boolean mBlockLayoutRequests;
    boolean mDataChanged;
    private boolean mDesiredFocusableInTouchModeState;
    private int mDesiredFocusableState;
    private View mEmptyView;

    @ViewDebug.ExportedProperty(category = "scrolling")
    int mFirstPosition;
    boolean mInLayout;

    @ViewDebug.ExportedProperty(category = "list")
    int mItemCount;
    private int mLayoutHeight;
    boolean mNeedSync;

    @ViewDebug.ExportedProperty(category = "list")
    int mNextSelectedPosition;
    long mNextSelectedRowId;
    int mOldItemCount;
    int mOldSelectedPosition;
    long mOldSelectedRowId;
    OnItemClickListener mOnItemClickListener;
    OnItemLongClickListener mOnItemLongClickListener;
    OnItemSelectedListener mOnItemSelectedListener;
    private AdapterView<T>.SelectionNotifier mPendingSelectionNotifier;

    @ViewDebug.ExportedProperty(category = "list")
    int mSelectedPosition;
    long mSelectedRowId;
    private AdapterView<T>.SelectionNotifier mSelectionNotifier;
    int mSpecificTop;
    long mSyncHeight;
    int mSyncMode;
    int mSyncPosition;
    long mSyncRowId;

    public static class AdapterContextMenuInfo implements ContextMenu.ContextMenuInfo {
        public long id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View view, int i2, long j2) {
            this.targetView = view;
            this.position = i2;
            this.id = j2;
        }
    }

    public class AdapterDataSetObserver extends DataSetObserver {
        private Parcelable mInstanceState = null;

        public AdapterDataSetObserver() {
        }

        public void clearSavedState() {
            this.mInstanceState = null;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0034  */
        @Override // android.database.DataSetObserver
        public void onChanged() {
            Parcelable parcelable;
            AdapterView adapterView = AdapterView.this;
            adapterView.mDataChanged = true;
            adapterView.mOldItemCount = adapterView.mItemCount;
            adapterView.mItemCount = adapterView.getAdapter().getCount();
            if (!AdapterView.this.getAdapter().hasStableIds() || (parcelable = this.mInstanceState) == null) {
                AdapterView.this.rememberSyncState();
            } else {
                AdapterView adapterView2 = AdapterView.this;
                if (adapterView2.mOldItemCount != 0 || adapterView2.mItemCount <= 0) {
                    AdapterView.this.rememberSyncState();
                } else {
                    adapterView2.onRestoreInstanceState(parcelable);
                    this.mInstanceState = null;
                }
            }
            AdapterView.this.checkFocus();
            AdapterView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterView adapterView = AdapterView.this;
            adapterView.mDataChanged = true;
            if (adapterView.getAdapter().hasStableIds()) {
                this.mInstanceState = AdapterView.this.onSaveInstanceState();
            }
            AdapterView adapterView2 = AdapterView.this;
            adapterView2.mOldItemCount = adapterView2.mItemCount;
            adapterView2.mItemCount = 0;
            adapterView2.mSelectedPosition = -1;
            adapterView2.mSelectedRowId = Long.MIN_VALUE;
            adapterView2.mNextSelectedPosition = -1;
            adapterView2.mNextSelectedRowId = Long.MIN_VALUE;
            adapterView2.mNeedSync = false;
            adapterView2.checkFocus();
            AdapterView.this.requestLayout();
        }
    }

    public interface OnItemClickListener {
        void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2);
    }

    public interface OnItemSelectedListener {
        void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2);

        void onNothingSelected(AdapterView<?> adapterView);
    }

    public class SelectionNotifier implements Runnable {
        private SelectionNotifier() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView.this.mPendingSelectionNotifier = null;
            AdapterView adapterView = AdapterView.this;
            if (!adapterView.mDataChanged || adapterView.getViewRootImpl() == null || !AdapterView.this.getViewRootImpl().isLayoutRequested()) {
                AdapterView.this.dispatchOnItemSelected();
            } else if (AdapterView.this.getAdapter() != null) {
                AdapterView.this.mPendingSelectionNotifier = this;
            }
        }
    }

    public AdapterView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnItemSelected() {
        fireOnSelected();
        performAccessibilityActionsOnSelected();
    }

    private void fireOnSelected() {
        if (this.mOnItemSelectedListener == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition < 0) {
            this.mOnItemSelectedListener.onNothingSelected(this);
        } else {
            this.mOnItemSelectedListener.onItemSelected(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
        }
    }

    private boolean isScrollableForAccessibility() {
        int count;
        Adapter adapter = getAdapter();
        if (adapter == null || (count = adapter.getCount()) <= 0) {
            return false;
        }
        return getFirstVisiblePosition() > 0 || getLastVisiblePosition() < count - 1;
    }

    private void performAccessibilityActionsOnSelected() {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled() && getSelectedItemPosition() >= 0) {
            sendAccessibilityEvent(4);
        }
    }

    private void updateEmptyStatus(boolean z2) {
        if (isInFilterMode()) {
            z2 = false;
        }
        if (!z2) {
            View view = this.mEmptyView;
            if (view != null) {
                view.setVisibility(8);
            }
            setVisibility(0);
            return;
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            view2.setVisibility(0);
            setVisibility(8);
        } else {
            setVisibility(0);
        }
        if (this.mDataChanged) {
            onLayout(false, this.mLeft, this.mTop, this.mRight, this.mBottom);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public boolean canAnimate() {
        return super.canAnimate() && this.mItemCount > 0;
    }

    public void checkFocus() {
        Adapter adapter = getAdapter();
        boolean z2 = true;
        boolean z3 = !(adapter == null || adapter.getCount() == 0) || isInFilterMode();
        super.setFocusableInTouchMode(z3 && this.mDesiredFocusableInTouchModeState);
        super.setFocusable(z3 ? this.mDesiredFocusableState : 0);
        if (this.mEmptyView != null) {
            if (adapter != null && !adapter.isEmpty()) {
                z2 = false;
            }
            updateEmptyStatus(z2);
        }
    }

    public void checkSelectionChanged() {
        if (this.mSelectedPosition != this.mOldSelectedPosition || this.mSelectedRowId != this.mOldSelectedRowId) {
            selectionChanged();
            this.mOldSelectedPosition = this.mSelectedPosition;
            this.mOldSelectedRowId = this.mSelectedRowId;
        }
        AdapterView<T>.SelectionNotifier selectionNotifier = this.mPendingSelectionNotifier;
        if (selectionNotifier != null) {
            selectionNotifier.run();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        View selectedView = getSelectedView();
        return selectedView != null && selectedView.getVisibility() == 0 && selectedView.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("scrolling:firstPosition", this.mFirstPosition);
        viewHierarchyEncoder.addProperty("list:nextSelectedPosition", this.mNextSelectedPosition);
        viewHierarchyEncoder.addProperty("list:nextSelectedRowId", this.mNextSelectedRowId);
        viewHierarchyEncoder.addProperty("list:selectedPosition", this.mSelectedPosition);
        viewHierarchyEncoder.addProperty("list:itemCount", this.mItemCount);
    }

    public int findSyncPosition() {
        int i2 = this.mItemCount;
        if (i2 == 0) {
            return -1;
        }
        long j2 = this.mSyncRowId;
        int i3 = this.mSyncPosition;
        if (j2 == Long.MIN_VALUE) {
            return -1;
        }
        int i4 = i2 - 1;
        int iMin = Math.min(i4, Math.max(0, i3));
        long jUptimeMillis = SystemClock.uptimeMillis() + 100;
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i5 = iMin;
        int i6 = i5;
        boolean z2 = false;
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            if (adapter.getItemId(iMin) != j2) {
                boolean z3 = i5 == i4;
                boolean z4 = i6 == 0;
                if (z3 && z4) {
                    break;
                }
                if (z4 || (z2 && !z3)) {
                    i5++;
                    z2 = false;
                    iMin = i5;
                } else if (z3 || (!z2 && !z4)) {
                    i6--;
                    z2 = true;
                    iMin = i6;
                }
            } else {
                return iMin;
            }
        }
        return -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return AdapterView.class.getName();
    }

    public abstract T getAdapter();

    @ViewDebug.CapturedViewProperty
    public int getCount() {
        return this.mItemCount;
    }

    public View getEmptyView() {
        return this.mEmptyView;
    }

    public int getFirstVisiblePosition() {
        return this.mFirstPosition;
    }

    public Object getItemAtPosition(int i2) {
        Adapter adapter = getAdapter();
        if (adapter == null || i2 < 0) {
            return null;
        }
        return adapter.getItem(i2);
    }

    public long getItemIdAtPosition(int i2) {
        Adapter adapter = getAdapter();
        if (adapter == null || i2 < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(i2);
    }

    public int getLastVisiblePosition() {
        return (getChildCount() + this.mFirstPosition) - 1;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public final OnItemSelectedListener getOnItemSelectedListener() {
        return this.mOnItemSelectedListener;
    }

    public int getPositionForView(View view) {
        while (true) {
            try {
                View view2 = (View) view.getParent();
                if (view2 == null || view2.equals(this)) {
                    break;
                }
                view = view2;
            } catch (ClassCastException unused) {
            }
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2).equals(view)) {
                return this.mFirstPosition + i2;
            }
        }
        return -1;
    }

    public Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    @ViewDebug.CapturedViewProperty
    public long getSelectedItemId() {
        return this.mNextSelectedRowId;
    }

    @ViewDebug.CapturedViewProperty
    public int getSelectedItemPosition() {
        return this.mNextSelectedPosition;
    }

    public abstract View getSelectedView();

    /* JADX WARN: Code duplicated, block: B:11:0x001d  */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    public void handleDataChanged() {
        boolean z2;
        boolean z3;
        int i2 = this.mItemCount;
        if (i2 > 0) {
            z2 = true;
            if (this.mNeedSync) {
                this.mNeedSync = false;
                int iFindSyncPosition = findSyncPosition();
                if (iFindSyncPosition < 0 || lookForSelectablePosition(iFindSyncPosition, true) != iFindSyncPosition) {
                    z3 = false;
                } else {
                    setNextSelectedPositionInt(iFindSyncPosition);
                    z3 = true;
                }
            } else {
                z3 = false;
            }
            if (z3) {
                z2 = z3;
            } else {
                int selectedItemPosition = getSelectedItemPosition();
                if (selectedItemPosition >= i2) {
                    selectedItemPosition = i2 - 1;
                }
                if (selectedItemPosition < 0) {
                    selectedItemPosition = 0;
                }
                int iLookForSelectablePosition = lookForSelectablePosition(selectedItemPosition, true);
                if (iLookForSelectablePosition < 0) {
                    iLookForSelectablePosition = lookForSelectablePosition(selectedItemPosition, false);
                }
                if (iLookForSelectablePosition >= 0) {
                    setNextSelectedPositionInt(iLookForSelectablePosition);
                    checkSelectionChanged();
                } else {
                    z2 = z3;
                }
            }
        } else {
            z2 = false;
        }
        if (!z2) {
            this.mSelectedPosition = -1;
            this.mSelectedRowId = Long.MIN_VALUE;
            this.mNextSelectedPosition = -1;
            this.mNextSelectedRowId = Long.MIN_VALUE;
            this.mNeedSync = false;
            checkSelectionChanged();
        }
        notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    public boolean isInFilterMode() {
        return false;
    }

    int lookForSelectablePosition(int i2, boolean z2) {
        return i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mSelectionNotifier);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setScrollable(isScrollableForAccessibility());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            accessibilityEvent.setEnabled(selectedView.isEnabled());
        }
        accessibilityEvent.setCurrentItemIndex(getSelectedItemPosition());
        accessibilityEvent.setFromIndex(getFirstVisiblePosition());
        accessibilityEvent.setToIndex(getLastVisiblePosition());
        accessibilityEvent.setItemCount(getCount());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        accessibilityNodeInfo.setScrollable(isScrollableForAccessibility());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            accessibilityNodeInfo.setEnabled(selectedView.isEnabled());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        this.mLayoutHeight = getHeight();
    }

    @Override // android.view.View
    public void onProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        CharSequence[] autofillOptions;
        super.onProvideAutofillStructure(viewStructure, i2);
        Adapter adapter = getAdapter();
        if (adapter == null || (autofillOptions = adapter.getAutofillOptions()) == null) {
            return;
        }
        viewStructure.setAutofillOptions(autofillOptions);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestSendAccessibilityEventInternal(View view, AccessibilityEvent accessibilityEvent) {
        if (!super.onRequestSendAccessibilityEventInternal(view, accessibilityEvent)) {
            return false;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        onInitializeAccessibilityEvent(accessibilityEventObtain);
        view.dispatchPopulateAccessibilityEvent(accessibilityEventObtain);
        accessibilityEvent.appendRecord(accessibilityEventObtain);
        return true;
    }

    public boolean performItemClick(View view, int i2, long j2) {
        boolean z2 = false;
        if (this.mOnItemClickListener != null) {
            playSoundEffect(0);
            this.mOnItemClickListener.onItemClick(this, view, i2, j2);
            z2 = true;
        }
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        return z2;
    }

    public void rememberSyncState() {
        if (getChildCount() > 0) {
            this.mNeedSync = true;
            this.mSyncHeight = this.mLayoutHeight;
            int i2 = this.mSelectedPosition;
            if (i2 >= 0) {
                View childAt = getChildAt(i2 - this.mFirstPosition);
                this.mSyncRowId = this.mNextSelectedRowId;
                this.mSyncPosition = this.mNextSelectedPosition;
                if (childAt != null) {
                    this.mSpecificTop = childAt.getTop();
                }
                this.mSyncMode = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            Adapter adapter = getAdapter();
            int i3 = this.mFirstPosition;
            if (i3 < 0 || i3 >= adapter.getCount()) {
                this.mSyncRowId = -1L;
            } else {
                this.mSyncRowId = adapter.getItemId(this.mFirstPosition);
            }
            this.mSyncPosition = this.mFirstPosition;
            if (childAt2 != null) {
                this.mSpecificTop = childAt2.getTop();
            }
            this.mSyncMode = 1;
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    public void selectionChanged() {
        this.mPendingSelectionNotifier = null;
        if (this.mOnItemSelectedListener != null || AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            if (this.mInLayout || this.mBlockLayoutRequests) {
                AdapterView<T>.SelectionNotifier selectionNotifier = this.mSelectionNotifier;
                if (selectionNotifier == null) {
                    this.mSelectionNotifier = new SelectionNotifier();
                } else {
                    removeCallbacks(selectionNotifier);
                }
                post(this.mSelectionNotifier);
            } else {
                dispatchOnItemSelected();
            }
        }
        AutofillManager autofillManager = (AutofillManager) this.mContext.getSystemService(AutofillManager.class);
        if (autofillManager != null) {
            autofillManager.notifyValueChanged(this);
        }
    }

    public abstract void setAdapter(T t2);

    @RemotableViewMethod
    public void setEmptyView(View view) {
        this.mEmptyView = view;
        boolean z2 = true;
        if (view != null && view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        Adapter adapter = getAdapter();
        if (adapter != null && !adapter.isEmpty()) {
            z2 = false;
        }
        updateEmptyStatus(z2);
    }

    @Override // android.view.View
    public void setFocusable(int i2) {
        Adapter adapter = getAdapter();
        boolean z2 = adapter == null || adapter.getCount() == 0;
        this.mDesiredFocusableState = i2;
        if ((i2 & 17) == 0) {
            this.mDesiredFocusableInTouchModeState = false;
        }
        if (z2 && !isInFilterMode()) {
            i2 = 0;
        }
        super.setFocusable(i2);
    }

    @Override // android.view.View
    public void setFocusableInTouchMode(boolean z2) {
        Adapter adapter = getAdapter();
        boolean z3 = false;
        boolean z4 = adapter == null || adapter.getCount() == 0;
        this.mDesiredFocusableInTouchModeState = z2;
        if (z2) {
            this.mDesiredFocusableState = 1;
        }
        if (z2 && (!z4 || isInFilterMode())) {
            z3 = true;
        }
        super.setFocusableInTouchMode(z3);
    }

    public void setNextSelectedPositionInt(int i2) {
        this.mNextSelectedPosition = i2;
        long itemIdAtPosition = getItemIdAtPosition(i2);
        this.mNextSelectedRowId = itemIdAtPosition;
        if (this.mNeedSync && this.mSyncMode == 0 && i2 >= 0) {
            this.mSyncPosition = i2;
            this.mSyncRowId = itemIdAtPosition;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnItemSelectedListener = onItemSelectedListener;
    }

    public void setSelectedPositionInt(int i2) {
        this.mSelectedPosition = i2;
        this.mSelectedRowId = getItemIdAtPosition(i2);
    }

    public abstract void setSelection(int i2);

    public AdapterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    public AdapterView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    public AdapterView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mDesiredFocusableState = 16;
        this.mBlockLayoutRequests = false;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        int focusable = getFocusable();
        this.mDesiredFocusableState = focusable;
        if (focusable == 16) {
            super.setFocusable(0);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }
}
