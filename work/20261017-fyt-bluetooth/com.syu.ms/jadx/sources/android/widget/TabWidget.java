package android.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class TabWidget extends LinearLayout implements View.OnFocusChangeListener {
    private final Rect mBounds;
    private boolean mDrawBottomStrips;
    private int[] mImposedTabWidths;
    private int mImposedTabsHeight;
    private Drawable mLeftStrip;
    private Drawable mRightStrip;
    private int mSelectedTab;
    private OnTabSelectionChanged mSelectionChangedListener;
    private boolean mStripMoved;

    public interface OnTabSelectionChanged {
        void onTabSelectionChanged(int i2, boolean z2);
    }

    public class TabClickListener implements View.OnClickListener {
        private final int mTabIndex;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabWidget.this.mSelectionChangedListener.onTabSelectionChanged(this.mTabIndex, true);
        }

        private TabClickListener(int i2) {
            this.mTabIndex = i2;
        }
    }

    public TabWidget(Context context) {
        this(context, null);
    }

    private void initTabWidget() {
        setChildrenDrawingOrderEnabled(true);
        Context context = this.mContext;
        Resources resources = context.getResources();
        if (context.getApplicationInfo().targetSdkVersion <= 4) {
            if (this.mLeftStrip == null) {
                this.mLeftStrip = resources.getDrawable(17303059);
            }
            if (this.mRightStrip == null) {
                this.mRightStrip = resources.getDrawable(17303061);
            }
        } else {
            if (this.mLeftStrip == null) {
                this.mLeftStrip = resources.getDrawable(17303058);
            }
            if (this.mRightStrip == null) {
                this.mRightStrip = resources.getDrawable(17303060);
            }
        }
        setFocusable(true);
        setOnFocusChangeListener(this);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (view.getLayoutParams() == null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            layoutParams.setMargins(0, 0, 0, 0);
            view.setLayoutParams(layoutParams);
        }
        view.setFocusable(true);
        view.setClickable(true);
        super.addView(view);
        view.setOnClickListener(new TabClickListener(getTabCount() - 1));
        view.setOnFocusChangeListener(this);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void childDrawableStateChanged(View view) {
        if (getTabCount() > 0 && view == getChildTabViewAt(this.mSelectedTab)) {
            invalidate();
        }
        super.childDrawableStateChanged(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (getTabCount() != 0 && this.mDrawBottomStrips) {
            View childTabViewAt = getChildTabViewAt(this.mSelectedTab);
            Drawable drawable = this.mLeftStrip;
            Drawable drawable2 = this.mRightStrip;
            drawable.setState(childTabViewAt.getDrawableState());
            drawable2.setState(childTabViewAt.getDrawableState());
            if (this.mStripMoved) {
                Rect rect = this.mBounds;
                rect.left = childTabViewAt.getLeft();
                rect.right = childTabViewAt.getRight();
                int height = getHeight();
                drawable.setBounds(Math.min(0, rect.left - drawable.getIntrinsicWidth()), height - drawable.getIntrinsicHeight(), rect.left, height);
                drawable2.setBounds(rect.right, height - drawable2.getIntrinsicHeight(), Math.max(getWidth(), rect.right + drawable2.getIntrinsicWidth()), height);
                this.mStripMoved = false;
            }
            drawable.draw(canvas);
            drawable2.draw(canvas);
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        View childTabViewAt;
        onPopulateAccessibilityEvent(accessibilityEvent);
        int i2 = this.mSelectedTab;
        if (i2 == -1 || (childTabViewAt = getChildTabViewAt(i2)) == null || childTabViewAt.getVisibility() != 0) {
            return false;
        }
        return childTabViewAt.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    public void focusCurrentTab(int i2) {
        int i3 = this.mSelectedTab;
        setCurrentTab(i2);
        if (i3 != i2) {
            getChildTabViewAt(i2).requestFocus();
        }
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        int i4 = this.mSelectedTab;
        if (i4 == -1) {
            return i3;
        }
        if (i3 == i2 - 1) {
            return i4;
        }
        return i3 >= i4 ? i3 + 1 : i3;
    }

    public View getChildTabViewAt(int i2) {
        return getChildAt(i2);
    }

    public int getTabCount() {
        return getChildCount();
    }

    public boolean isStripEnabled() {
        return this.mDrawBottomStrips;
    }

    @Override // android.widget.LinearLayout
    public void measureChildBeforeLayout(View view, int i2, int i3, int i4, int i5, int i6) {
        if (!isMeasureWithLargestChildEnabled() && this.mImposedTabsHeight >= 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(this.mImposedTabWidths[i2] + i4, 1073741824);
            i5 = View.MeasureSpec.makeMeasureSpec(this.mImposedTabsHeight, 1073741824);
        }
        super.measureChildBeforeLayout(view, i2, i3, i4, i5, i6);
    }

    @Override // android.widget.LinearLayout
    public void measureHorizontal(int i2, int i3) {
        if (View.MeasureSpec.getMode(i2) == 0) {
            super.measureHorizontal(i2, i3);
            return;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mImposedTabsHeight = -1;
        super.measureHorizontal(iMakeMeasureSpec, i3);
        int measuredWidth = getMeasuredWidth() - View.MeasureSpec.getSize(i2);
        if (measuredWidth > 0) {
            int childCount = getChildCount();
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                if (getChildAt(i5).getVisibility() != 8) {
                    i4++;
                }
            }
            if (i4 > 0) {
                int[] iArr = this.mImposedTabWidths;
                if (iArr == null || iArr.length != childCount) {
                    this.mImposedTabWidths = new int[childCount];
                }
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt.getVisibility() != 8) {
                        int measuredWidth2 = childAt.getMeasuredWidth();
                        int iMax = Math.max(0, measuredWidth2 - (measuredWidth / i4));
                        this.mImposedTabWidths[i6] = iMax;
                        measuredWidth -= measuredWidth2 - iMax;
                        i4--;
                        this.mImposedTabsHeight = Math.max(this.mImposedTabsHeight, childAt.getMeasuredHeight());
                    }
                }
            }
        }
        super.measureHorizontal(i2, i3);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z2) {
        if (view == this && z2 && getTabCount() > 0) {
            getChildTabViewAt(this.mSelectedTab).requestFocus();
            return;
        }
        if (z2) {
            int tabCount = getTabCount();
            for (int i2 = 0; i2 < tabCount; i2++) {
                if (getChildTabViewAt(i2) == view) {
                    setCurrentTab(i2);
                    this.mSelectionChangedListener.onTabSelectionChanged(i2, false);
                    if (isShown()) {
                        sendAccessibilityEvent(8);
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TabWidget.class.getName());
        accessibilityEvent.setItemCount(getTabCount());
        accessibilityEvent.setCurrentItemIndex(this.mSelectedTab);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TabWidget.class.getName());
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        this.mStripMoved = true;
        super.onSizeChanged(i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        this.mSelectedTab = -1;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 8 && isFocused()) {
            accessibilityEvent.recycle();
        } else {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setCurrentTab(int i2) {
        int i3;
        if (i2 < 0 || i2 >= getTabCount() || i2 == (i3 = this.mSelectedTab)) {
            return;
        }
        if (i3 != -1) {
            getChildTabViewAt(i3).setSelected(false);
        }
        this.mSelectedTab = i2;
        getChildTabViewAt(i2).setSelected(true);
        this.mStripMoved = true;
        if (isShown()) {
            sendAccessibilityEvent(4);
        }
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        super.setDividerDrawable(drawable);
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        int tabCount = getTabCount();
        for (int i2 = 0; i2 < tabCount; i2++) {
            getChildTabViewAt(i2).setEnabled(z2);
        }
    }

    public void setLeftStripDrawable(Drawable drawable) {
        this.mLeftStrip = drawable;
        requestLayout();
        invalidate();
    }

    public void setRightStripDrawable(Drawable drawable) {
        this.mRightStrip = drawable;
        requestLayout();
        invalidate();
    }

    public void setStripEnabled(boolean z2) {
        this.mDrawBottomStrips = z2;
        invalidate();
    }

    public void setTabSelectionListener(OnTabSelectionChanged onTabSelectionChanged) {
        this.mSelectionChangedListener = onTabSelectionChanged;
    }

    public TabWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabWidgetStyle);
    }

    public void setDividerDrawable(int i2) {
        setDividerDrawable(getResources().getDrawable(i2));
    }

    public TabWidget(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mSelectedTab = -1;
        this.mDrawBottomStrips = true;
        this.mBounds = new Rect();
        this.mImposedTabsHeight = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.TabWidget, i2, 0);
        setStripEnabled(typedArrayObtainStyledAttributes.getBoolean(3, true));
        setLeftStripDrawable(typedArrayObtainStyledAttributes.getDrawable(1));
        setRightStripDrawable(typedArrayObtainStyledAttributes.getDrawable(2));
        typedArrayObtainStyledAttributes.recycle();
        initTabWidget();
    }

    public void setLeftStripDrawable(int i2) {
        setLeftStripDrawable(getResources().getDrawable(i2));
    }

    public void setRightStripDrawable(int i2) {
        setRightStripDrawable(getResources().getDrawable(i2));
    }
}
