package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.IBinder;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import i.a;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class PopupWindow {
    private static final int[] ABOVE_ANCHOR_STATE_SET = {R.attr.state_above_anchor};
    private static final int DEFAULT_ANCHORED_GRAVITY = 8388659;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    private boolean mAboveAnchor;
    private Drawable mAboveAnchorBackgroundDrawable;
    private boolean mAllowScrollingAnchorParent;
    private WeakReference<View> mAnchor;
    private int mAnchorXoff;
    private int mAnchorYoff;
    private int mAnchoredGravity;
    private int mAnimationStyle;
    private Drawable mBackground;
    private Drawable mBelowAnchorBackgroundDrawable;
    private boolean mClipToScreen;
    private boolean mClippingEnabled;
    private View mContentView;
    private Context mContext;
    private int[] mDrawingLocation;
    private boolean mFocusable;
    private int mHeight;
    private int mHeightMode;
    private boolean mIgnoreCheekPress;
    private int mInputMethodMode;
    private boolean mIsDropdown;
    private boolean mIsShowing;
    private int mLastHeight;
    private int mLastWidth;
    private boolean mLayoutInScreen;
    private boolean mLayoutInsetDecor;
    private boolean mNotTouchModal;
    private OnDismissListener mOnDismissListener;
    private ViewTreeObserver.OnScrollChangedListener mOnScrollChangedListener;
    private boolean mOutsideTouchable;
    private int mPopupHeight;
    private View mPopupView;
    private boolean mPopupViewInitialLayoutDirectionInherited;
    private int mPopupWidth;
    private int[] mScreenLocation;
    private int mSoftInputMode;
    private int mSplitTouchEnabled;
    private Rect mTempRect;
    private View.OnTouchListener mTouchInterceptor;
    private boolean mTouchable;
    private int mWidth;
    private int mWidthMode;
    private int mWindowLayoutType;
    private WindowManager mWindowManager;

    public interface OnDismissListener {
        void onDismiss();
    }

    public class PopupViewContainer extends FrameLayout {
        private static final String TAG = "PopupWindow.PopupViewContainer";

        public PopupViewContainer(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            KeyEvent.DispatcherState keyDispatcherState;
            if (keyEvent.getKeyCode() != 4) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (getKeyDispatcherState() == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                }
                return true;
            }
            if (keyEvent.getAction() != 1 || (keyDispatcherState = getKeyDispatcherState()) == null || !keyDispatcherState.isTracking(keyEvent) || keyEvent.isCanceled()) {
                return super.dispatchKeyEvent(keyEvent);
            }
            PopupWindow.this.dismiss();
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (PopupWindow.this.mTouchInterceptor == null || !PopupWindow.this.mTouchInterceptor.onTouch(this, motionEvent)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public int[] onCreateDrawableState(int i2) {
            if (!PopupWindow.this.mAboveAnchor) {
                return super.onCreateDrawableState(i2);
            }
            int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
            View.mergeDrawableStates(iArrOnCreateDrawableState, PopupWindow.ABOVE_ANCHOR_STATE_SET);
            return iArrOnCreateDrawableState;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0 && (x2 < 0 || x2 >= getWidth() || y2 < 0 || y2 >= getHeight())) {
                PopupWindow.this.dismiss();
                return true;
            }
            if (motionEvent.getAction() != 4) {
                return super.onTouchEvent(motionEvent);
            }
            PopupWindow.this.dismiss();
            return true;
        }

        @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
        public void sendAccessibilityEvent(int i2) {
            if (PopupWindow.this.mContentView != null) {
                PopupWindow.this.mContentView.sendAccessibilityEvent(i2);
            } else {
                super.sendAccessibilityEvent(i2);
            }
        }
    }

    public PopupWindow(Context context) {
        this(context, (AttributeSet) null);
    }

    private int computeAnimationResource() {
        int i2 = this.mAnimationStyle;
        if (i2 != -1) {
            return i2;
        }
        if (this.mIsDropdown) {
            return this.mAboveAnchor ? 16974322 : 16974321;
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f A[PHI: r4
  0x001f: PHI (r4v3 int) = (r4v2 int), (r4v19 int) binds: [B:11:0x001d, B:8:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    private int computeFlags(int i2) {
        int i3 = i2 & (-8815129);
        if (this.mIgnoreCheekPress) {
            i3 |= 32768;
        }
        if (!this.mFocusable) {
            i3 |= 8;
            if (this.mInputMethodMode == 1) {
                i3 |= 131072;
            }
        } else if (this.mInputMethodMode == 2) {
            i3 |= 131072;
        }
        if (!this.mTouchable) {
            i3 |= 16;
        }
        if (this.mOutsideTouchable) {
            i3 |= 262144;
        }
        if (!this.mClippingEnabled) {
            i3 |= 512;
        }
        if (isSplitTouchEnabled()) {
            i3 |= 8388608;
        }
        if (this.mLayoutInScreen) {
            i3 |= 256;
        }
        if (this.mLayoutInsetDecor) {
            i3 |= 65536;
        }
        return this.mNotTouchModal ? i3 | 32 : i3;
    }

    private WindowManager.LayoutParams createPopupLayout(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = DEFAULT_ANCHORED_GRAVITY;
        int i2 = this.mWidth;
        this.mLastWidth = i2;
        layoutParams.width = i2;
        int i3 = this.mHeight;
        this.mLastHeight = i3;
        layoutParams.height = i3;
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            layoutParams.format = drawable.getOpacity();
        } else {
            layoutParams.format = -3;
        }
        layoutParams.flags = computeFlags(layoutParams.flags);
        layoutParams.type = this.mWindowLayoutType;
        layoutParams.token = iBinder;
        layoutParams.softInputMode = this.mSoftInputMode;
        layoutParams.setTitle("PopupWindow:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean findDropDownPosition(View view, WindowManager.LayoutParams layoutParams, int i2, int i3, int i4) {
        int height = view.getHeight();
        view.getLocationInWindow(this.mDrawingLocation);
        int[] iArr = this.mDrawingLocation;
        boolean z2 = false;
        layoutParams.f206x = iArr[0] + i2;
        layoutParams.f207y = iArr[1] + height + i3;
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, view.getLayoutDirection()) & 7;
        if (absoluteGravity == 5) {
            layoutParams.f206x -= this.mPopupWidth - view.getWidth();
        }
        layoutParams.gravity = 51;
        view.getLocationOnScreen(this.mScreenLocation);
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int i5 = this.mScreenLocation[1] + height + i3;
        View rootView = view.getRootView();
        if (i5 + this.mPopupHeight > rect.bottom || (layoutParams.f206x + this.mPopupWidth) - rootView.getWidth() > 0) {
            if (this.mAllowScrollingAnchorParent) {
                int scrollX = view.getScrollX();
                int scrollY = view.getScrollY();
                view.requestRectangleOnScreen(new Rect(scrollX, scrollY, this.mPopupWidth + scrollX + i2, this.mPopupHeight + scrollY + view.getHeight() + i3), true);
            }
            view.getLocationInWindow(this.mDrawingLocation);
            int[] iArr2 = this.mDrawingLocation;
            layoutParams.f206x = iArr2[0] + i2;
            layoutParams.f207y = iArr2[1] + view.getHeight() + i3;
            if (absoluteGravity == 5) {
                layoutParams.f206x -= this.mPopupWidth - view.getWidth();
            }
            view.getLocationOnScreen(this.mScreenLocation);
            z2 = ((rect.bottom - this.mScreenLocation[1]) - view.getHeight()) - i3 < (this.mScreenLocation[1] - i3) - rect.top;
            if (z2) {
                layoutParams.gravity = 83;
                layoutParams.f207y = (rootView.getHeight() - this.mDrawingLocation[1]) + i3;
            } else {
                layoutParams.f207y = this.mDrawingLocation[1] + view.getHeight() + i3;
            }
        }
        if (this.mClipToScreen) {
            int i6 = rect.right;
            int i7 = rect.left;
            int i8 = i6 - i7;
            int i9 = layoutParams.f206x;
            int i10 = layoutParams.width;
            int i11 = i9 + i10;
            if (i11 > i8) {
                layoutParams.f206x = i9 - (i11 - i8);
            }
            if (layoutParams.f206x < i7) {
                layoutParams.f206x = i7;
                layoutParams.width = Math.min(i10, i8);
            }
            if (z2) {
                int i12 = (this.mScreenLocation[1] + i3) - this.mPopupHeight;
                if (i12 < 0) {
                    layoutParams.f207y += i12;
                }
            } else {
                layoutParams.f207y = Math.max(layoutParams.f207y, rect.top);
            }
        }
        layoutParams.gravity |= 268435456;
        return z2;
    }

    private void invokePopup(WindowManager.LayoutParams layoutParams) {
        Context context = this.mContext;
        if (context != null) {
            layoutParams.packageName = context.getPackageName();
        }
        this.mPopupView.setFitsSystemWindows(this.mLayoutInsetDecor);
        setLayoutDirectionFromAnchor();
        this.mWindowManager.addView(this.mPopupView, layoutParams);
    }

    private void preparePopup(WindowManager.LayoutParams layoutParams) {
        View view = this.mContentView;
        if (view == null || this.mContext == null || this.mWindowManager == null) {
            throw new IllegalStateException("You must specify a valid content view by calling setContentView() before attempting to show the popup.");
        }
        if (this.mBackground != null) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            int i2 = (layoutParams2 == null || layoutParams2.height != -2) ? -1 : -2;
            PopupViewContainer popupViewContainer = new PopupViewContainer(this.mContext);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, i2);
            popupViewContainer.setBackgroundDrawable(this.mBackground);
            popupViewContainer.addView(this.mContentView, layoutParams3);
            this.mPopupView = popupViewContainer;
        } else {
            this.mPopupView = view;
        }
        this.mPopupViewInitialLayoutDirectionInherited = this.mPopupView.getRawLayoutDirection() == 2;
        this.mPopupWidth = layoutParams.width;
        this.mPopupHeight = layoutParams.height;
    }

    private void registerForScrollChanged(View view, int i2, int i3, int i4) {
        unregisterForScrollChanged();
        this.mAnchor = new WeakReference<>(view);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnScrollChangedListener(this.mOnScrollChangedListener);
        }
        this.mAnchorXoff = i2;
        this.mAnchorYoff = i3;
        this.mAnchoredGravity = i4;
    }

    private void setLayoutDirectionFromAnchor() {
        View view;
        WeakReference<View> weakReference = this.mAnchor;
        if (weakReference == null || (view = weakReference.get()) == null || !this.mPopupViewInitialLayoutDirectionInherited) {
            return;
        }
        this.mPopupView.setLayoutDirection(view.getLayoutDirection());
    }

    private void unregisterForScrollChanged() {
        WeakReference<View> weakReference = this.mAnchor;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            view.getViewTreeObserver().removeOnScrollChangedListener(this.mOnScrollChangedListener);
        }
        this.mAnchor = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAboveAnchor(boolean z2) {
        if (z2 != this.mAboveAnchor) {
            this.mAboveAnchor = z2;
            if (this.mBackground != null) {
                Drawable drawable = this.mAboveAnchorBackgroundDrawable;
                if (drawable == null) {
                    this.mPopupView.refreshDrawableState();
                } else if (z2) {
                    this.mPopupView.setBackgroundDrawable(drawable);
                } else {
                    this.mPopupView.setBackgroundDrawable(this.mBelowAnchorBackgroundDrawable);
                }
            }
        }
    }

    public void dismiss() {
        if (!isShowing() || this.mPopupView == null) {
            return;
        }
        this.mIsShowing = false;
        unregisterForScrollChanged();
        try {
            this.mWindowManager.removeViewImmediate(this.mPopupView);
        } finally {
            View view = this.mPopupView;
            View view2 = this.mContentView;
            if (view != view2 && (view instanceof ViewGroup)) {
                ((ViewGroup) view).removeView(view2);
            }
            this.mPopupView = null;
            OnDismissListener onDismissListener = this.mOnDismissListener;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }
    }

    public int getAnimationStyle() {
        return this.mAnimationStyle;
    }

    public Drawable getBackground() {
        return this.mBackground;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getInputMethodMode() {
        return this.mInputMethodMode;
    }

    public int getMaxAvailableHeight(View view) {
        return getMaxAvailableHeight(view, 0);
    }

    public int getSoftInputMode() {
        return this.mSoftInputMode;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getWindowLayoutType() {
        return this.mWindowLayoutType;
    }

    public boolean isAboveAnchor() {
        return this.mAboveAnchor;
    }

    public boolean isClippingEnabled() {
        return this.mClippingEnabled;
    }

    public boolean isFocusable() {
        return this.mFocusable;
    }

    public boolean isLayoutInScreenEnabled() {
        return this.mLayoutInScreen;
    }

    public boolean isOutsideTouchable() {
        return this.mOutsideTouchable;
    }

    public boolean isShowing() {
        return this.mIsShowing;
    }

    public boolean isSplitTouchEnabled() {
        Context context;
        int i2 = this.mSplitTouchEnabled;
        if (i2 >= 0 || (context = this.mContext) == null) {
            return i2 == 1;
        }
        return context.getApplicationInfo().targetSdkVersion >= 11;
    }

    public boolean isTouchable() {
        return this.mTouchable;
    }

    public void setAllowScrollingAnchorParent(boolean z2) {
        this.mAllowScrollingAnchorParent = z2;
    }

    public void setAnimationStyle(int i2) {
        this.mAnimationStyle = i2;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mBackground = drawable;
    }

    public void setClipToScreenEnabled(boolean z2) {
        this.mClipToScreen = z2;
        setClippingEnabled(!z2);
    }

    public void setClippingEnabled(boolean z2) {
        this.mClippingEnabled = z2;
    }

    public void setContentView(View view) {
        if (isShowing()) {
            return;
        }
        this.mContentView = view;
        if (this.mContext == null && view != null) {
            this.mContext = view.getContext();
        }
        if (this.mWindowManager != null || this.mContentView == null) {
            return;
        }
        this.mWindowManager = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
    }

    public void setFocusable(boolean z2) {
        this.mFocusable = z2;
    }

    public void setHeight(int i2) {
        this.mHeight = i2;
    }

    public void setIgnoreCheekPress() {
        this.mIgnoreCheekPress = true;
    }

    public void setInputMethodMode(int i2) {
        this.mInputMethodMode = i2;
    }

    public void setLayoutInScreenEnabled(boolean z2) {
        this.mLayoutInScreen = z2;
    }

    public void setLayoutInsetDecor(boolean z2) {
        this.mLayoutInsetDecor = z2;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void setOutsideTouchable(boolean z2) {
        this.mOutsideTouchable = z2;
    }

    public void setSoftInputMode(int i2) {
        this.mSoftInputMode = i2;
    }

    public void setSplitTouchEnabled(boolean z2) {
        this.mSplitTouchEnabled = z2 ? 1 : 0;
    }

    public void setTouchInterceptor(View.OnTouchListener onTouchListener) {
        this.mTouchInterceptor = onTouchListener;
    }

    public void setTouchModal(boolean z2) {
        this.mNotTouchModal = !z2;
    }

    public void setTouchable(boolean z2) {
        this.mTouchable = z2;
    }

    public void setWidth(int i2) {
        this.mWidth = i2;
    }

    public void setWindowLayoutMode(int i2, int i3) {
        this.mWidthMode = i2;
        this.mHeightMode = i3;
    }

    public void setWindowLayoutType(int i2) {
        this.mWindowLayoutType = i2;
    }

    public void showAsDropDown(View view) {
        showAsDropDown(view, 0, 0);
    }

    public void showAtLocation(View view, int i2, int i3, int i4) {
        showAtLocation(view.getWindowToken(), i2, i3, i4);
    }

    public void update() {
        if (!isShowing() || this.mContentView == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.mPopupView.getLayoutParams();
        boolean z2 = false;
        int iComputeAnimationResource = computeAnimationResource();
        boolean z3 = true;
        if (iComputeAnimationResource != layoutParams.windowAnimations) {
            layoutParams.windowAnimations = iComputeAnimationResource;
            z2 = true;
        }
        int iComputeFlags = computeFlags(layoutParams.flags);
        if (iComputeFlags != layoutParams.flags) {
            layoutParams.flags = iComputeFlags;
        } else {
            z3 = z2;
        }
        if (z3) {
            setLayoutDirectionFromAnchor();
            this.mWindowManager.updateViewLayout(this.mPopupView, layoutParams);
        }
    }

    public PopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.popupWindowStyle);
    }

    public int getMaxAvailableHeight(View view, int i2) {
        return getMaxAvailableHeight(view, i2, false);
    }

    public void showAsDropDown(View view, int i2, int i3) {
        showAsDropDown(view, i2, i3, DEFAULT_ANCHORED_GRAVITY);
    }

    public void showAtLocation(IBinder iBinder, int i2, int i3, int i4) {
        if (isShowing() || this.mContentView == null) {
            return;
        }
        unregisterForScrollChanged();
        this.mIsShowing = true;
        this.mIsDropdown = false;
        WindowManager.LayoutParams layoutParamsCreatePopupLayout = createPopupLayout(iBinder);
        layoutParamsCreatePopupLayout.windowAnimations = computeAnimationResource();
        preparePopup(layoutParamsCreatePopupLayout);
        if (i2 == 0) {
            i2 = DEFAULT_ANCHORED_GRAVITY;
        }
        layoutParamsCreatePopupLayout.gravity = i2;
        layoutParamsCreatePopupLayout.f206x = i3;
        layoutParamsCreatePopupLayout.f207y = i4;
        int i5 = this.mHeightMode;
        if (i5 < 0) {
            this.mLastHeight = i5;
            layoutParamsCreatePopupLayout.height = i5;
        }
        int i6 = this.mWidthMode;
        if (i6 < 0) {
            this.mLastWidth = i6;
            layoutParamsCreatePopupLayout.width = i6;
        }
        invokePopup(layoutParamsCreatePopupLayout);
    }

    public PopupWindow(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public int getMaxAvailableHeight(View view, int i2, boolean z2) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int[] iArr = this.mDrawingLocation;
        view.getLocationOnScreen(iArr);
        int i3 = rect.bottom;
        if (z2) {
            i3 = view.getContext().getResources().getDisplayMetrics().heightPixels;
        }
        int iMax = Math.max((i3 - (iArr[1] + view.getHeight())) - i2, (iArr[1] - rect.top) + i2);
        Drawable drawable = this.mBackground;
        if (drawable == null) {
            return iMax;
        }
        drawable.getPadding(this.mTempRect);
        Rect rect2 = this.mTempRect;
        return iMax - (rect2.top + rect2.bottom);
    }

    public void showAsDropDown(View view, int i2, int i3, int i4) {
        if (isShowing() || this.mContentView == null) {
            return;
        }
        registerForScrollChanged(view, i2, i3, i4);
        this.mIsShowing = true;
        this.mIsDropdown = true;
        WindowManager.LayoutParams layoutParamsCreatePopupLayout = createPopupLayout(view.getWindowToken());
        preparePopup(layoutParamsCreatePopupLayout);
        updateAboveAnchor(findDropDownPosition(view, layoutParamsCreatePopupLayout, i2, i3, i4));
        int i5 = this.mHeightMode;
        if (i5 < 0) {
            this.mLastHeight = i5;
            layoutParamsCreatePopupLayout.height = i5;
        }
        int i6 = this.mWidthMode;
        if (i6 < 0) {
            this.mLastWidth = i6;
            layoutParamsCreatePopupLayout.width = i6;
        }
        layoutParamsCreatePopupLayout.windowAnimations = computeAnimationResource();
        invokePopup(layoutParamsCreatePopupLayout);
    }

    public PopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        int i4 = 0;
        this.mInputMethodMode = 0;
        this.mSoftInputMode = 1;
        this.mTouchable = true;
        this.mOutsideTouchable = false;
        this.mClippingEnabled = true;
        this.mSplitTouchEnabled = -1;
        this.mAllowScrollingAnchorParent = true;
        this.mLayoutInsetDecor = false;
        this.mDrawingLocation = new int[2];
        this.mScreenLocation = new int[2];
        this.mTempRect = new Rect();
        this.mWindowLayoutType = 1000;
        this.mIgnoreCheekPress = false;
        this.mAnimationStyle = -1;
        this.mOnScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.widget.PopupWindow.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                View view = PopupWindow.this.mAnchor != null ? (View) PopupWindow.this.mAnchor.get() : null;
                if (view == null || PopupWindow.this.mPopupView == null) {
                    return;
                }
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) PopupWindow.this.mPopupView.getLayoutParams();
                PopupWindow popupWindow = PopupWindow.this;
                popupWindow.updateAboveAnchor(popupWindow.findDropDownPosition(view, layoutParams, popupWindow.mAnchorXoff, PopupWindow.this.mAnchorYoff, PopupWindow.this.mAnchoredGravity));
                PopupWindow.this.update(layoutParams.f206x, layoutParams.f207y, -1, -1, true);
            }
        };
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.PopupWindow, i2, i3);
        this.mBackground = typedArrayObtainStyledAttributes.getDrawable(0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.mAnimationStyle = resourceId == 16974328 ? -1 : resourceId;
        Drawable drawable = this.mBackground;
        if (drawable instanceof StateListDrawable) {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            int stateDrawableIndex = stateListDrawable.getStateDrawableIndex(ABOVE_ANCHOR_STATE_SET);
            int stateCount = stateListDrawable.getStateCount();
            while (true) {
                if (i4 >= stateCount) {
                    i4 = -1;
                    break;
                } else if (i4 != stateDrawableIndex) {
                    break;
                } else {
                    i4++;
                }
            }
            if (stateDrawableIndex != -1 && i4 != -1) {
                this.mAboveAnchorBackgroundDrawable = stateListDrawable.getStateDrawable(stateDrawableIndex);
                this.mBelowAnchorBackgroundDrawable = stateListDrawable.getStateDrawable(i4);
            } else {
                this.mBelowAnchorBackgroundDrawable = null;
                this.mAboveAnchorBackgroundDrawable = null;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void update(int i2, int i3) {
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.mPopupView.getLayoutParams();
        update(layoutParams.f206x, layoutParams.f207y, i2, i3, false);
    }

    public void update(int i2, int i3, int i4, int i5) {
        update(i2, i3, i4, i5, false);
    }

    public void update(int i2, int i3, int i4, int i5, boolean z2) {
        if (i4 != -1) {
            this.mLastWidth = i4;
            setWidth(i4);
        }
        if (i5 != -1) {
            this.mLastHeight = i5;
            setHeight(i5);
        }
        if (!isShowing() || this.mContentView == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.mPopupView.getLayoutParams();
        int i6 = this.mWidthMode;
        if (i6 >= 0) {
            i6 = this.mLastWidth;
        }
        boolean z3 = true;
        if (i4 != -1 && layoutParams.width != i6) {
            this.mLastWidth = i6;
            layoutParams.width = i6;
            z2 = true;
        }
        int i7 = this.mHeightMode;
        if (i7 >= 0) {
            i7 = this.mLastHeight;
        }
        if (i5 != -1 && layoutParams.height != i7) {
            this.mLastHeight = i7;
            layoutParams.height = i7;
            z2 = true;
        }
        if (layoutParams.f206x != i2) {
            layoutParams.f206x = i2;
            z2 = true;
        }
        if (layoutParams.f207y != i3) {
            layoutParams.f207y = i3;
            z2 = true;
        }
        int iComputeAnimationResource = computeAnimationResource();
        if (iComputeAnimationResource != layoutParams.windowAnimations) {
            layoutParams.windowAnimations = iComputeAnimationResource;
            z2 = true;
        }
        int iComputeFlags = computeFlags(layoutParams.flags);
        if (iComputeFlags != layoutParams.flags) {
            layoutParams.flags = iComputeFlags;
        } else {
            z3 = z2;
        }
        if (z3) {
            setLayoutDirectionFromAnchor();
            this.mWindowManager.updateViewLayout(this.mPopupView, layoutParams);
        }
    }

    public PopupWindow() {
        this((View) null, 0, 0);
    }

    public PopupWindow(View view) {
        this(view, 0, 0);
    }

    public PopupWindow(int i2, int i3) {
        this((View) null, i2, i3);
    }

    public PopupWindow(View view, int i2, int i3) {
        this(view, i2, i3, false);
    }

    public void update(View view, int i2, int i3) {
        update(view, false, 0, 0, true, i2, i3, this.mAnchoredGravity);
    }

    public PopupWindow(View view, int i2, int i3, boolean z2) {
        this.mInputMethodMode = 0;
        this.mSoftInputMode = 1;
        this.mTouchable = true;
        this.mOutsideTouchable = false;
        this.mClippingEnabled = true;
        this.mSplitTouchEnabled = -1;
        this.mAllowScrollingAnchorParent = true;
        this.mLayoutInsetDecor = false;
        this.mDrawingLocation = new int[2];
        this.mScreenLocation = new int[2];
        this.mTempRect = new Rect();
        this.mWindowLayoutType = 1000;
        this.mIgnoreCheekPress = false;
        this.mAnimationStyle = -1;
        this.mOnScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.widget.PopupWindow.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                View view2 = PopupWindow.this.mAnchor != null ? (View) PopupWindow.this.mAnchor.get() : null;
                if (view2 == null || PopupWindow.this.mPopupView == null) {
                    return;
                }
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) PopupWindow.this.mPopupView.getLayoutParams();
                PopupWindow popupWindow = PopupWindow.this;
                popupWindow.updateAboveAnchor(popupWindow.findDropDownPosition(view2, layoutParams, popupWindow.mAnchorXoff, PopupWindow.this.mAnchorYoff, PopupWindow.this.mAnchoredGravity));
                PopupWindow.this.update(layoutParams.f206x, layoutParams.f207y, -1, -1, true);
            }
        };
        if (view != null) {
            Context context = view.getContext();
            this.mContext = context;
            this.mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        }
        setContentView(view);
        setWidth(i2);
        setHeight(i3);
        setFocusable(z2);
    }

    public void update(View view, int i2, int i3, int i4, int i5) {
        update(view, true, i2, i3, true, i4, i5, this.mAnchoredGravity);
    }

    private void update(View view, boolean z2, int i2, int i3, boolean z3, int i4, int i5, int i6) {
        int i7 = i4;
        int i8 = i5;
        if (!isShowing() || this.mContentView == null) {
            return;
        }
        WeakReference<View> weakReference = this.mAnchor;
        boolean z4 = true;
        boolean z5 = z2 && !(this.mAnchorXoff == i2 && this.mAnchorYoff == i3);
        if (weakReference == null || weakReference.get() != view || (z5 && !this.mIsDropdown)) {
            registerForScrollChanged(view, i2, i3, i6);
        } else if (z5) {
            this.mAnchorXoff = i2;
            this.mAnchorYoff = i3;
            this.mAnchoredGravity = i6;
        }
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.mPopupView.getLayoutParams();
        if (z3) {
            if (i7 == -1) {
                i7 = this.mPopupWidth;
            } else {
                this.mPopupWidth = i7;
            }
            if (i8 == -1) {
                i8 = this.mPopupHeight;
            } else {
                this.mPopupHeight = i8;
            }
        }
        int i9 = i7;
        int i10 = i8;
        int i11 = layoutParams.f206x;
        int i12 = layoutParams.f207y;
        if (z2) {
            updateAboveAnchor(findDropDownPosition(view, layoutParams, i2, i3, i6));
        } else {
            updateAboveAnchor(findDropDownPosition(view, layoutParams, this.mAnchorXoff, this.mAnchorYoff, this.mAnchoredGravity));
        }
        int i13 = layoutParams.f206x;
        int i14 = layoutParams.f207y;
        if (i11 == i13 && i12 == i14) {
            z4 = false;
        }
        update(i13, i14, i9, i10, z4);
    }
}
