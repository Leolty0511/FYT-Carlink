package android.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.R;
import com.android.internal.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes2.dex */
public class Spinner extends AbsSpinner implements DialogInterface.OnClickListener {
    private static final int MAX_ITEMS_MEASURED = 15;
    public static final int MODE_DIALOG = 0;
    public static final int MODE_DROPDOWN = 1;
    private static final int MODE_THEME = -1;
    private static final String TAG = "Spinner";
    private boolean mDisableChildrenWhenDisabled;
    int mDropDownWidth;
    private ForwardingListener mForwardingListener;
    private int mGravity;
    private SpinnerPopup mPopup;
    private final Context mPopupContext;
    private SpinnerAdapter mTempAdapter;
    private final Rect mTempRect;

    public class DialogPopup implements SpinnerPopup, DialogInterface.OnClickListener {
        private ListAdapter mListAdapter;
        private AlertDialog mPopup;
        private CharSequence mPrompt;

        private DialogPopup() {
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void dismiss() {
            AlertDialog alertDialog = this.mPopup;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.mPopup = null;
            }
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public Drawable getBackground() {
            return null;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public CharSequence getHintText() {
            return this.mPrompt;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public int getHorizontalOffset() {
            return 0;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public int getVerticalOffset() {
            return 0;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public boolean isShowing() {
            AlertDialog alertDialog = this.mPopup;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            Spinner.this.setSelection(i2);
            Spinner spinner = Spinner.this;
            if (spinner.mOnItemClickListener != null) {
                spinner.performItemClick(null, i2, this.mListAdapter.getItemId(i2));
            }
            dismiss();
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void setAdapter(ListAdapter listAdapter) {
            this.mListAdapter = listAdapter;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void setBackgroundDrawable(Drawable drawable) {
            Log.e(Spinner.TAG, "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void setHorizontalOffset(int i2) {
            Log.e(Spinner.TAG, "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void setPromptText(CharSequence charSequence) {
            this.mPrompt = charSequence;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void setVerticalOffset(int i2) {
            Log.e(Spinner.TAG, "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void show(int i2, int i3) {
            if (this.mListAdapter == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(Spinner.this.getPopupContext());
            CharSequence charSequence = this.mPrompt;
            if (charSequence != null) {
                builder.setTitle(charSequence);
            }
            AlertDialog alertDialogCreate = builder.setSingleChoiceItems(this.mListAdapter, Spinner.this.getSelectedItemPosition(), this).create();
            this.mPopup = alertDialogCreate;
            ListView listView = alertDialogCreate.getListView();
            listView.setTextDirection(i2);
            listView.setTextAlignment(i3);
            this.mPopup.show();
        }
    }

    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter mAdapter;
        private ListAdapter mListAdapter;

        public DropDownAdapter(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.mAdapter = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.mListAdapter = (ListAdapter) spinnerAdapter;
            }
            if (theme == null || !(spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                return;
            }
            ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
            if (themedSpinnerAdapter.getDropDownViewTheme() == null) {
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final /* synthetic */ CharSequence[] getAutofillOptions() {
            return a.a(this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i2);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i2) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            return getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i2);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public class DropdownPopup extends ListPopupWindow implements SpinnerPopup {
        private ListAdapter mAdapter;
        private CharSequence mHintText;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i2, int i3) {
            super(context, attributeSet, i2, i3);
            setAnchorView(Spinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.widget.Spinner.DropdownPopup.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView adapterView, View view, int i4, long j2) {
                    Spinner.this.setSelection(i4);
                    DropdownPopup dropdownPopup = DropdownPopup.this;
                    Spinner spinner = Spinner.this;
                    if (spinner.mOnItemClickListener != null) {
                        spinner.performItemClick(view, i4, dropdownPopup.mAdapter.getItemId(i4));
                    }
                    DropdownPopup.this.dismiss();
                }
            });
        }

        public void computeContentWidth() {
            int i2;
            Drawable background = getBackground();
            if (background != null) {
                background.getPadding(Spinner.this.mTempRect);
                i2 = Spinner.this.isLayoutRtl() ? Spinner.this.mTempRect.right : -Spinner.this.mTempRect.left;
            } else {
                Rect rect = Spinner.this.mTempRect;
                Spinner.this.mTempRect.right = 0;
                rect.left = 0;
                i2 = 0;
            }
            int paddingLeft = Spinner.this.getPaddingLeft();
            int paddingRight = Spinner.this.getPaddingRight();
            int width = Spinner.this.getWidth();
            Spinner spinner = Spinner.this;
            int i3 = spinner.mDropDownWidth;
            if (i3 == -2) {
                int iMeasureContentWidth = spinner.measureContentWidth((SpinnerAdapter) this.mAdapter, getBackground());
                int i4 = (((View) Spinner.this).mContext.getResources().getDisplayMetrics().widthPixels - Spinner.this.mTempRect.left) - Spinner.this.mTempRect.right;
                if (iMeasureContentWidth > i4) {
                    iMeasureContentWidth = i4;
                }
                setContentWidth(Math.max(iMeasureContentWidth, (width - paddingLeft) - paddingRight));
            } else if (i3 == -1) {
                setContentWidth((width - paddingLeft) - paddingRight);
            } else {
                setContentWidth(i3);
            }
            setHorizontalOffset(Spinner.this.isLayoutRtl() ? ((width - paddingRight) - getWidth()) + i2 : i2 + paddingLeft);
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public CharSequence getHintText() {
            return this.mHintText;
        }

        @Override // android.widget.ListPopupWindow, android.widget.Spinner.SpinnerPopup
        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.mAdapter = listAdapter;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void setPromptText(CharSequence charSequence) {
            this.mHintText = charSequence;
        }

        @Override // android.widget.Spinner.SpinnerPopup
        public void show(int i2, int i3) {
            ViewTreeObserver viewTreeObserver;
            boolean zIsShowing = isShowing();
            computeContentWidth();
            setInputMethodMode(2);
            super.show();
            ListView listView = getListView();
            listView.setChoiceMode(1);
            listView.setTextDirection(i2);
            listView.setTextAlignment(i3);
            setSelection(Spinner.this.getSelectedItemPosition());
            if (zIsShowing || (viewTreeObserver = Spinner.this.getViewTreeObserver()) == null) {
                return;
            }
            final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.widget.Spinner.DropdownPopup.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (!Spinner.this.isVisibleToUser()) {
                        DropdownPopup.this.dismiss();
                    } else {
                        DropdownPopup.this.computeContentWidth();
                        DropdownPopup.super.show();
                    }
                }
            };
            viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
            setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: android.widget.Spinner.DropdownPopup.3
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    ViewTreeObserver viewTreeObserver2 = Spinner.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(onGlobalLayoutListener);
                    }
                }
            });
        }
    }

    public static class SavedState extends AbsSpinner.SavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.Spinner.SavedState.1
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
        boolean showDropdown;

        @Override // android.widget.AbsSpinner.SavedState, android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.showDropdown ? (byte) 1 : (byte) 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.showDropdown = parcel.readByte() != 0;
        }
    }

    public interface SpinnerPopup {
        void dismiss();

        Drawable getBackground();

        CharSequence getHintText();

        int getHorizontalOffset();

        int getVerticalOffset();

        boolean isShowing();

        void setAdapter(ListAdapter listAdapter);

        void setBackgroundDrawable(Drawable drawable);

        void setHorizontalOffset(int i2);

        void setPromptText(CharSequence charSequence);

        void setVerticalOffset(int i2);

        void show(int i2, int i3);
    }

    public Spinner(Context context) {
        this(context, (AttributeSet) null);
    }

    private View makeView(int i2, boolean z2) {
        View view;
        if (!this.mDataChanged && (view = this.mRecycler.get(i2)) != null) {
            setUpChild(view, z2);
            return view;
        }
        View view2 = this.mAdapter.getView(i2, null, this);
        setUpChild(view2, z2);
        return view2;
    }

    private void setUpChild(View view, boolean z2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, 0, layoutParams);
        view.setSelected(hasFocus());
        if (this.mDisableChildrenWhenDisabled) {
            view.setEnabled(isEnabled());
        }
        int i2 = this.mHeightMeasureSpec;
        Rect rect = this.mSpinnerPadding;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, rect.top + rect.bottom, layoutParams.height);
        int i3 = this.mWidthMeasureSpec;
        Rect rect2 = this.mSpinnerPadding;
        view.measure(ViewGroup.getChildMeasureSpec(i3, rect2.left + rect2.right, layoutParams.width), childMeasureSpec);
        int i4 = this.mSpinnerPadding.top;
        int measuredHeight = getMeasuredHeight();
        Rect rect3 = this.mSpinnerPadding;
        int measuredHeight2 = ((((measuredHeight - rect3.bottom) - rect3.top) - view.getMeasuredHeight()) / 2) + i4;
        view.layout(0, measuredHeight2, view.getMeasuredWidth() + 0, view.getMeasuredHeight() + measuredHeight2);
        if (z2) {
            return;
        }
        removeViewInLayout(view);
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Spinner.class.getName();
    }

    @Override // android.view.View
    public int getBaseline() {
        View viewMakeView;
        int baseline;
        if (getChildCount() > 0) {
            viewMakeView = getChildAt(0);
        } else {
            SpinnerAdapter spinnerAdapter = this.mAdapter;
            if (spinnerAdapter == null || spinnerAdapter.getCount() <= 0) {
                viewMakeView = null;
            } else {
                viewMakeView = makeView(0, false);
                this.mRecycler.put(0, viewMakeView);
            }
        }
        if (viewMakeView == null || (baseline = viewMakeView.getBaseline()) < 0) {
            return -1;
        }
        return viewMakeView.getTop() + baseline;
    }

    public int getDropDownHorizontalOffset() {
        return this.mPopup.getHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        return this.mPopup.getVerticalOffset();
    }

    public int getDropDownWidth() {
        return this.mDropDownWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    public Drawable getPopupBackground() {
        return this.mPopup.getBackground();
    }

    public Context getPopupContext() {
        return this.mPopupContext;
    }

    public CharSequence getPrompt() {
        return this.mPopup.getHintText();
    }

    public boolean isPopupShowing() {
        SpinnerPopup spinnerPopup = this.mPopup;
        return spinnerPopup != null && spinnerPopup.isShowing();
    }

    @Override // android.widget.AbsSpinner
    public void layout(int i2, boolean z2) {
        Rect rect = this.mSpinnerPadding;
        int i3 = rect.left;
        int i4 = ((this.mRight - this.mLeft) - i3) - rect.right;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        if (this.mItemCount == 0) {
            resetList();
            return;
        }
        int i5 = this.mNextSelectedPosition;
        if (i5 >= 0) {
            setSelectedPositionInt(i5);
        }
        recycleAllViews();
        removeAllViewsInLayout();
        int i6 = this.mSelectedPosition;
        this.mFirstPosition = i6;
        if (this.mAdapter != null) {
            View viewMakeView = makeView(i6, true);
            int measuredWidth = viewMakeView.getMeasuredWidth();
            int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection()) & 7;
            if (absoluteGravity == 1) {
                i3 = ((i4 / 2) + i3) - (measuredWidth / 2);
            } else if (absoluteGravity == 5) {
                i3 = (i3 + i4) - measuredWidth;
            }
            viewMakeView.offsetLeftAndRight(i3);
        }
        this.mRecycler.clear();
        invalidate();
        checkSelectionChanged();
        this.mDataChanged = false;
        this.mNeedSync = false;
        setNextSelectedPositionInt(this.mSelectedPosition);
    }

    public int measureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeSafeMeasureSpec = View.MeasureSpec.makeSafeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeSafeMeasureSpec2 = View.MeasureSpec.makeSafeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeSafeMeasureSpec, iMakeSafeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.mTempRect);
        Rect rect = this.mTempRect;
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        setSelection(i2);
        dialogInterface.dismiss();
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpinnerPopup spinnerPopup = this.mPopup;
        if (spinnerPopup == null || !spinnerPopup.isShowing()) {
            return;
        }
        this.mPopup.dismiss();
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (this.mAdapter != null) {
            accessibilityNodeInfo.setCanOpenPopup(true);
        }
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.mInLayout = true;
        layout(0, false);
        this.mInLayout = false;
    }

    @Override // android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.mPopup == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        return (getPointerIcon() == null && isClickable() && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i2);
    }

    @Override // android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.showDropdown || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.widget.Spinner.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!Spinner.this.mPopup.isShowing()) {
                    Spinner.this.mPopup.show(Spinner.this.getTextDirection(), Spinner.this.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver2 = Spinner.this.getViewTreeObserver();
                if (viewTreeObserver2 != null) {
                    viewTreeObserver2.removeOnGlobalLayoutListener(this);
                }
            }
        });
    }

    @Override // android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SpinnerPopup spinnerPopup = this.mPopup;
        savedState.showDropdown = spinnerPopup != null && spinnerPopup.isShowing();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.mForwardingListener;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (zPerformClick) {
            return zPerformClick;
        }
        if (!this.mPopup.isShowing()) {
            this.mPopup.show(getTextDirection(), getTextAlignment());
        }
        return true;
    }

    public void setDropDownHorizontalOffset(int i2) {
        this.mPopup.setHorizontalOffset(i2);
    }

    public void setDropDownVerticalOffset(int i2) {
        this.mPopup.setVerticalOffset(i2);
    }

    public void setDropDownWidth(int i2) {
        if (this.mPopup instanceof DropdownPopup) {
            this.mDropDownWidth = i2;
        } else {
            Log.e(TAG, "Cannot set dropdown width for MODE_DIALOG, ignoring");
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        if (this.mDisableChildrenWhenDisabled) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).setEnabled(z2);
            }
        }
    }

    public void setGravity(int i2) {
        if (this.mGravity != i2) {
            if ((i2 & 7) == 0) {
                i2 |= 8388611;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    public void setOnItemClickListenerInt(AdapterView.OnItemClickListener onItemClickListener) {
        super.setOnItemClickListener(onItemClickListener);
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        SpinnerPopup spinnerPopup = this.mPopup;
        if (spinnerPopup instanceof DropdownPopup) {
            spinnerPopup.setBackgroundDrawable(drawable);
        } else {
            Log.e(TAG, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring...");
        }
    }

    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(getPopupContext().getDrawable(i2));
    }

    public void setPrompt(CharSequence charSequence) {
        this.mPopup.setPromptText(charSequence);
    }

    public void setPromptId(int i2) {
        setPrompt(getContext().getText(i2));
    }

    public Spinner(Context context, int i2) {
        this(context, null, 16842881, i2);
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (this.mPopup == null) {
            this.mTempAdapter = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        this.mRecycler.clear();
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 21 && spinnerAdapter != null && spinnerAdapter.getViewTypeCount() != 1) {
            throw new IllegalArgumentException("Spinner adapter view type count must be 1");
        }
        Context context = this.mPopupContext;
        if (context == null) {
            context = this.mContext;
        }
        this.mPopup.setAdapter(new DropDownAdapter(spinnerAdapter, context.getTheme()));
    }

    public Spinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842881);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0, -1);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, 0, i3);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i2, int i3, int i4) {
        this(context, attributeSet, i2, i3, i4, null);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i2, int i3, int i4, Resources.Theme theme) {
        super(context, attributeSet, i2, i3);
        this.mTempRect = new Rect();
        int[] iArr = R.styleable.Spinner;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        if (theme != null) {
            this.mPopupContext = new ContextThemeWrapper(context, theme);
        } else {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(7, 0);
            if (resourceId != 0) {
                this.mPopupContext = new ContextThemeWrapper(context, resourceId);
            } else {
                this.mPopupContext = context;
            }
        }
        int i5 = i4 == -1 ? typedArrayObtainStyledAttributes.getInt(5, 0) : i4;
        if (i5 == 0) {
            DialogPopup dialogPopup = new DialogPopup();
            this.mPopup = dialogPopup;
            dialogPopup.setPromptText(typedArrayObtainStyledAttributes.getString(3));
        } else if (i5 == 1) {
            final DropdownPopup dropdownPopup = new DropdownPopup(this.mPopupContext, attributeSet, i2, i3);
            TypedArray typedArrayObtainStyledAttributes2 = this.mPopupContext.obtainStyledAttributes(attributeSet, iArr, i2, i3);
            this.mDropDownWidth = typedArrayObtainStyledAttributes2.getLayoutDimension(4, -2);
            if (typedArrayObtainStyledAttributes2.hasValueOrEmpty(1)) {
                dropdownPopup.setListSelector(typedArrayObtainStyledAttributes2.getDrawable(1));
            }
            dropdownPopup.setBackgroundDrawable(typedArrayObtainStyledAttributes2.getDrawable(2));
            dropdownPopup.setPromptText(typedArrayObtainStyledAttributes.getString(3));
            typedArrayObtainStyledAttributes2.recycle();
            this.mPopup = dropdownPopup;
            this.mForwardingListener = new ForwardingListener(this) { // from class: android.widget.Spinner.1
                @Override // android.widget.ForwardingListener
                public ShowableListMenu getPopup() {
                    return dropdownPopup;
                }

                @Override // android.widget.ForwardingListener
                public boolean onForwardingStarted() {
                    if (Spinner.this.mPopup.isShowing()) {
                        return true;
                    }
                    Spinner.this.mPopup.show(Spinner.this.getTextDirection(), Spinner.this.getTextAlignment());
                    return true;
                }
            };
        }
        this.mGravity = typedArrayObtainStyledAttributes.getInt(0, 17);
        this.mDisableChildrenWhenDisabled = typedArrayObtainStyledAttributes.getBoolean(8, false);
        typedArrayObtainStyledAttributes.recycle();
        SpinnerAdapter spinnerAdapter = this.mTempAdapter;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.mTempAdapter = null;
        }
    }
}
