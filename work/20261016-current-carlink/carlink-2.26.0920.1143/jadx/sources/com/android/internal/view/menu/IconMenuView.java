package com.android.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class IconMenuView extends ViewGroup implements MenuBuilder.ItemInvoker, MenuView, Runnable {
    private static final int ITEM_CAPTION_CYCLE_DELAY = 1000;
    private int mAnimations;
    private boolean mHasStaleChildren;
    private Drawable mHorizontalDivider;
    private int mHorizontalDividerHeight;
    private ArrayList<Rect> mHorizontalDividerRects;
    private Drawable mItemBackground;
    private boolean mLastChildrenCaptionMode;
    private int[] mLayout;
    private int mLayoutNumRows;
    private int mMaxItems;
    private int mMaxItemsPerRow;
    private int mMaxRows;
    private MenuBuilder mMenu;
    private boolean mMenuBeingLongpressed;
    private Drawable mMoreIcon;
    private int mNumActualItemsShown;
    private int mRowHeight;
    private Drawable mVerticalDivider;
    private ArrayList<Rect> mVerticalDividerRects;
    private int mVerticalDividerWidth;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        int bottom;
        int desiredWidth;
        int left;
        int maxNumItemsOnRow;
        int right;
        int top;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.view.menu.IconMenuView.SavedState.1
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
        int focusedPosition;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.focusedPosition);
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.focusedPosition = i2;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.focusedPosition = parcel.readInt();
        }
    }

    public IconMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMenuBeingLongpressed = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.IconMenuView, 0, 0);
        this.mRowHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 64);
        this.mMaxRows = typedArrayObtainStyledAttributes.getInt(1, 2);
        this.mMaxItems = typedArrayObtainStyledAttributes.getInt(4, 6);
        this.mMaxItemsPerRow = typedArrayObtainStyledAttributes.getInt(2, 3);
        this.mMoreIcon = typedArrayObtainStyledAttributes.getDrawable(3);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.MenuView, 0, 0);
        this.mItemBackground = typedArrayObtainStyledAttributes2.getDrawable(5);
        this.mHorizontalDivider = typedArrayObtainStyledAttributes2.getDrawable(2);
        this.mHorizontalDividerRects = new ArrayList<>();
        this.mVerticalDivider = typedArrayObtainStyledAttributes2.getDrawable(3);
        this.mVerticalDividerRects = new ArrayList<>();
        this.mAnimations = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
        typedArrayObtainStyledAttributes2.recycle();
        Drawable drawable = this.mHorizontalDivider;
        if (drawable != null) {
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.mHorizontalDividerHeight = intrinsicHeight;
            if (intrinsicHeight == -1) {
                this.mHorizontalDividerHeight = 1;
            }
        }
        Drawable drawable2 = this.mVerticalDivider;
        if (drawable2 != null) {
            int intrinsicWidth = drawable2.getIntrinsicWidth();
            this.mVerticalDividerWidth = intrinsicWidth;
            if (intrinsicWidth == -1) {
                this.mVerticalDividerWidth = 1;
            }
        }
        this.mLayout = new int[this.mMaxRows];
        setWillNotDraw(false);
        setFocusableInTouchMode(true);
        setDescendantFocusability(262144);
    }

    private void calculateItemFittingMetadata(int i2) {
        int i3 = this.mMaxItemsPerRow;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i4).getLayoutParams();
            layoutParams.maxNumItemsOnRow = 1;
            for (int i5 = i3; i5 > 0; i5--) {
                if (layoutParams.desiredWidth < i2 / i5) {
                    layoutParams.maxNumItemsOnRow = i5;
                    break;
                }
            }
        }
    }

    private boolean doItemsFit() {
        int[] iArr = this.mLayout;
        int i2 = this.mLayoutNumRows;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = iArr[i4];
            if (i5 == 1) {
                i3++;
            } else {
                int i6 = i5;
                while (i6 > 0) {
                    int i7 = i3 + 1;
                    if (((LayoutParams) getChildAt(i3).getLayoutParams()).maxNumItemsOnRow < i5) {
                        return false;
                    }
                    i6--;
                    i3 = i7;
                }
            }
        }
        return true;
    }

    private void layoutItems(int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mLayoutNumRows = 0;
            return;
        }
        for (int iMin = Math.min((int) Math.ceil(childCount / this.mMaxItemsPerRow), this.mMaxRows); iMin <= this.mMaxRows; iMin++) {
            layoutItemsUsingGravity(iMin, childCount);
            if (iMin >= childCount || doItemsFit()) {
                return;
            }
        }
    }

    private void layoutItemsUsingGravity(int i2, int i3) {
        int i4 = i3 / i2;
        int i5 = i2 - (i3 % i2);
        int[] iArr = this.mLayout;
        for (int i6 = 0; i6 < i2; i6++) {
            iArr[i6] = i4;
            if (i6 >= i5) {
                iArr[i6] = i4 + 1;
            }
        }
        this.mLayoutNumRows = i2;
    }

    private void positionChildren(int i2, int i3) {
        if (this.mHorizontalDivider != null) {
            this.mHorizontalDividerRects.clear();
        }
        if (this.mVerticalDivider != null) {
            this.mVerticalDividerRects.clear();
        }
        int i4 = this.mLayoutNumRows;
        int i5 = i4 - 1;
        int[] iArr = this.mLayout;
        float f2 = (i3 - (this.mHorizontalDividerHeight * i5)) / i4;
        LayoutParams layoutParams = null;
        int i6 = 0;
        int i7 = 0;
        float f3 = 0.0f;
        while (i6 < i4) {
            int i8 = this.mVerticalDividerWidth;
            int i9 = iArr[i6];
            float f4 = (i2 - ((i9 - 1) * i8)) / i9;
            int i10 = 0;
            float f5 = 0.0f;
            while (i10 < iArr[i6]) {
                View childAt = getChildAt(i7);
                childAt.measure(View.MeasureSpec.makeMeasureSpec((int) f4, 1073741824), View.MeasureSpec.makeMeasureSpec((int) f2, 1073741824));
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                layoutParams2.left = (int) f5;
                float f6 = f5 + f4;
                int i11 = (int) f6;
                layoutParams2.right = i11;
                int i12 = (int) f3;
                layoutParams2.top = i12;
                int i13 = (int) (f3 + f2);
                layoutParams2.bottom = i13;
                i7++;
                int i14 = i4;
                if (this.mVerticalDivider != null) {
                    this.mVerticalDividerRects.add(new Rect(i11, i12, (int) (this.mVerticalDividerWidth + f6), i13));
                }
                f5 = f6 + this.mVerticalDividerWidth;
                i10++;
                i4 = i14;
                iArr = iArr;
                layoutParams = layoutParams2;
            }
            int i15 = i4;
            int[] iArr2 = iArr;
            if (layoutParams != null) {
                layoutParams.right = i2;
            }
            f3 += f2;
            if (this.mHorizontalDivider != null && i6 < i5) {
                this.mHorizontalDividerRects.add(new Rect(0, (int) f3, i2, (int) (this.mHorizontalDividerHeight + f3)));
                f3 += this.mHorizontalDividerHeight;
            }
            i6++;
            i4 = i15;
            iArr = iArr2;
        }
    }

    private void setChildrenCaptionMode(boolean z2) {
        this.mLastChildrenCaptionMode = z2;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            ((IconMenuItemView) getChildAt(childCount)).setCaptionMode(z2);
        }
    }

    private void setCycleShortcutCaptionMode(boolean z2) {
        if (z2) {
            setChildrenCaptionMode(true);
            return;
        }
        removeCallbacks(this);
        setChildrenCaptionMode(false);
        this.mMenuBeingLongpressed = false;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public IconMenuItemView createMoreItemView() {
        Context context = getContext();
        IconMenuItemView iconMenuItemView = (IconMenuItemView) LayoutInflater.from(context).inflate(R.layout.icon_menu_item_layout, (ViewGroup) null);
        iconMenuItemView.initialize(context.getResources().getText(R.string.more_item_label), this.mMoreIcon);
        iconMenuItemView.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.view.menu.IconMenuView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IconMenuView.this.mMenu.changeMenuMode();
            }
        });
        return iconMenuItemView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 82) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                removeCallbacks(this);
                postDelayed(this, ViewConfiguration.getLongPressTimeout());
            } else if (keyEvent.getAction() == 1) {
                if (this.mMenuBeingLongpressed) {
                    setCycleShortcutCaptionMode(false);
                    return true;
                }
                removeCallbacks(this);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public Drawable getItemBackgroundDrawable() {
        return this.mItemBackground.getConstantState().newDrawable(getContext().getResources());
    }

    public int[] getLayout() {
        return this.mLayout;
    }

    public int getLayoutNumRows() {
        return this.mLayoutNumRows;
    }

    public int getMaxItems() {
        return this.mMaxItems;
    }

    public int getNumActualItemsShown() {
        return this.mNumActualItemsShown;
    }

    @Override // com.android.internal.view.menu.MenuView
    public int getWindowAnimations() {
        return this.mAnimations;
    }

    @Override // com.android.internal.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    @Override // com.android.internal.view.menu.MenuBuilder.ItemInvoker
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    public void markStaleChildren() {
        if (this.mHasStaleChildren) {
            return;
        }
        this.mHasStaleChildren = true;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestFocus();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        setCycleShortcutCaptionMode(false);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.mHorizontalDivider;
        if (drawable != null) {
            ArrayList<Rect> arrayList = this.mHorizontalDividerRects;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                drawable.setBounds(arrayList.get(size));
                drawable.draw(canvas);
            }
        }
        Drawable drawable2 = this.mVerticalDivider;
        if (drawable2 != null) {
            ArrayList<Rect> arrayList2 = this.mVerticalDividerRects;
            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                drawable2.setBounds(arrayList2.get(size2));
                drawable2.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            childAt.layout(layoutParams.left, layoutParams.top, layoutParams.right, layoutParams.bottom);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int iResolveSize = View.resolveSize(Integer.MAX_VALUE, i2);
        calculateItemFittingMetadata(iResolveSize);
        layoutItems(iResolveSize);
        int i4 = this.mLayoutNumRows;
        int i5 = this.mRowHeight;
        int i6 = this.mHorizontalDividerHeight;
        setMeasuredDimension(iResolveSize, View.resolveSize(((i5 + i6) * i4) - i6, i3));
        if (i4 > 0) {
            positionChildren(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View childAt;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.focusedPosition < getChildCount() && (childAt = getChildAt(savedState.focusedPosition)) != null) {
            childAt.requestFocus();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        View focusedChild = getFocusedChild();
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (getChildAt(childCount) == focusedChild) {
                return new SavedState(parcelableOnSaveInstanceState, childCount);
            }
        }
        return new SavedState(parcelableOnSaveInstanceState, -1);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        if (!z2) {
            setCycleShortcutCaptionMode(false);
        }
        super.onWindowFocusChanged(z2);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mMenuBeingLongpressed) {
            setChildrenCaptionMode(!this.mLastChildrenCaptionMode);
        } else {
            this.mMenuBeingLongpressed = true;
            setCycleShortcutCaptionMode(true);
        }
        postDelayed(this, 1000L);
    }

    public void setNumActualItemsShown(int i2) {
        this.mNumActualItemsShown = i2;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
