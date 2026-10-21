package android.view.autofill;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.RemoteException;
import android.transition.Transition;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes2.dex */
public class AutofillPopupWindow extends PopupWindow {
    private static final String TAG = "AutofillPopupWindow";
    private final View.OnAttachStateChangeListener mOnAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: android.view.autofill.AutofillPopupWindow.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AutofillPopupWindow.this.dismiss();
        }
    };
    private WindowManager.LayoutParams mWindowLayoutParams;
    private final WindowPresenter mWindowPresenter;

    public class WindowPresenter {
        final IAutofillWindowPresenter mPresenter;

        public WindowPresenter(IAutofillWindowPresenter iAutofillWindowPresenter) {
            this.mPresenter = iAutofillWindowPresenter;
        }

        public void hide(Rect rect) {
            try {
                this.mPresenter.hide(rect);
            } catch (RemoteException e2) {
                Log.w(AutofillPopupWindow.TAG, "Error hiding fill window", e2);
                e2.rethrowFromSystemServer();
            }
        }

        public void show(WindowManager.LayoutParams layoutParams, Rect rect, boolean z2, int i2) {
            try {
                this.mPresenter.show(layoutParams, rect, z2, i2);
            } catch (RemoteException e2) {
                Log.w(AutofillPopupWindow.TAG, "Error showing fill window", e2);
                e2.rethrowFromSystemServer();
            }
        }
    }

    public AutofillPopupWindow(IAutofillWindowPresenter iAutofillWindowPresenter) {
        this.mWindowPresenter = new WindowPresenter(iAutofillWindowPresenter);
        setOutsideTouchable(true);
        setInputMethodMode(1);
    }

    @Override // android.widget.PopupWindow
    public void attachToAnchor(View view, int i2, int i3, int i4) {
        super.attachToAnchor(view, i2, i3, i4);
        view.addOnAttachStateChangeListener(this.mOnAttachStateChangeListener);
    }

    @Override // android.widget.PopupWindow
    public void detachFromAnchor() {
        View anchor = getAnchor();
        if (anchor != null) {
            anchor.removeOnAttachStateChangeListener(this.mOnAttachStateChangeListener);
        }
        super.detachFromAnchor();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (!isShowing() || isTransitioningToDismiss()) {
            return;
        }
        setShowing(false);
        setTransitioningToDismiss(true);
        this.mWindowPresenter.hide(getTransitionEpicenter());
        detachFromAnchor();
        if (getOnDismissListener() != null) {
            getOnDismissListener().onDismiss();
        }
    }

    @Override // android.widget.PopupWindow
    public int getAnimationStyle() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public Drawable getBackground() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public View getContentView() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public WindowManager.LayoutParams getDecorViewLayoutParams() {
        return this.mWindowLayoutParams;
    }

    @Override // android.widget.PopupWindow
    public float getElevation() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public Transition getEnterTransition() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public Transition getExitTransition() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public boolean hasContentView() {
        return true;
    }

    @Override // android.widget.PopupWindow
    public boolean hasDecorView() {
        return true;
    }

    @Override // android.widget.PopupWindow
    public void setAnimationStyle(int i2) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setBackgroundDrawable(Drawable drawable) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setContentView(View view) {
        if (view != null) {
            throw new IllegalStateException("You can't call this!");
        }
    }

    @Override // android.widget.PopupWindow
    public void setElevation(float f2) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setEnterTransition(Transition transition) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setExitTransition(Transition transition) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setTouchInterceptor(View.OnTouchListener onTouchListener) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i3, int i4) {
        if (Helper.sVerbose) {
            Log.v(TAG, "showAsDropDown(): anchor=" + view + ", xoff=" + i2 + ", yoff=" + i3 + ", isShowing(): " + isShowing());
        }
        if (isShowing()) {
            return;
        }
        setShowing(true);
        setDropDown(true);
        attachToAnchor(view, i2, i3, i4);
        WindowManager.LayoutParams layoutParamsCreatePopupLayoutParams = createPopupLayoutParams(view.getWindowToken());
        this.mWindowLayoutParams = layoutParamsCreatePopupLayoutParams;
        updateAboveAnchor(findDropDownPosition(view, layoutParamsCreatePopupLayoutParams, i2, i3, layoutParamsCreatePopupLayoutParams.width, layoutParamsCreatePopupLayoutParams.height, i4, getAllowScrollingAnchorParent()));
        layoutParamsCreatePopupLayoutParams.accessibilityIdOfAnchor = view.getAccessibilityViewId();
        layoutParamsCreatePopupLayoutParams.packageName = view.getContext().getPackageName();
        this.mWindowPresenter.show(layoutParamsCreatePopupLayoutParams, getTransitionEpicenter(), isLayoutInsetDecor(), view.getLayoutDirection());
    }

    public void update(final View view, int i2, int i3, int i4, int i5, final Rect rect) {
        View view2;
        if (rect != null) {
            View view3 = new View(view.getContext()) { // from class: android.view.autofill.AutofillPopupWindow.2
                @Override // android.view.View
                public void addOnAttachStateChangeListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
                    view.addOnAttachStateChangeListener(onAttachStateChangeListener);
                }

                @Override // android.view.View
                public int getAccessibilityViewId() {
                    return view.getAccessibilityViewId();
                }

                @Override // android.view.View
                public IBinder getApplicationWindowToken() {
                    return view.getApplicationWindowToken();
                }

                @Override // android.view.View
                public int getLayoutDirection() {
                    return view.getLayoutDirection();
                }

                @Override // android.view.View
                public void getLocationOnScreen(int[] iArr) {
                    Rect rect2 = rect;
                    iArr[0] = rect2.left;
                    iArr[1] = rect2.top;
                }

                @Override // android.view.View
                public View getRootView() {
                    return view.getRootView();
                }

                @Override // android.view.View
                public ViewTreeObserver getViewTreeObserver() {
                    return view.getViewTreeObserver();
                }

                @Override // android.view.View
                public void getWindowDisplayFrame(Rect rect2) {
                    view.getWindowDisplayFrame(rect2);
                }

                @Override // android.view.View
                public IBinder getWindowToken() {
                    return view.getWindowToken();
                }

                @Override // android.view.View
                public boolean isAttachedToWindow() {
                    return view.isAttachedToWindow();
                }

                @Override // android.view.View
                public void removeOnAttachStateChangeListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
                    view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                }

                @Override // android.view.View
                public boolean requestRectangleOnScreen(Rect rect2, boolean z2) {
                    return view.requestRectangleOnScreen(rect2, z2);
                }
            };
            view3.setLeftTopRightBottom(rect.left, rect.top, rect.right, rect.bottom);
            view3.setScrollX(view.getScrollX());
            view3.setScrollY(view.getScrollY());
            view2 = view3;
        } else {
            view2 = view;
        }
        if (isShowing()) {
            update(view2, i2, i3, i4, i5);
            return;
        }
        setWidth(i4);
        setHeight(i5);
        showAsDropDown(view2, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, WindowManager.LayoutParams layoutParams) {
        this.mWindowPresenter.show(layoutParams, getTransitionEpicenter(), isLayoutInsetDecor(), view != null ? view.getLayoutDirection() : 3);
    }
}
