package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: classes.dex */
public class ViewSwitcher extends ViewAnimator {
    public ViewFactory mFactory;

    public interface ViewFactory {
        View makeView();
    }

    public ViewSwitcher(Context context) {
        super(context);
    }

    private View obtainView() {
        View viewMakeView = this.mFactory.makeView();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewMakeView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        }
        addView(viewMakeView, layoutParams);
        return viewMakeView;
    }

    @Override // android.widget.ViewAnimator, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() >= 2) {
            throw new IllegalStateException("Can't add more than 2 views to a ViewSwitcher");
        }
        super.addView(view, i2, layoutParams);
    }

    public View getNextView() {
        return getChildAt(this.mWhichChild == 0 ? 1 : 0);
    }

    @Override // android.widget.ViewAnimator, android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ViewSwitcher.class.getName());
    }

    @Override // android.widget.ViewAnimator, android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ViewSwitcher.class.getName());
    }

    public void reset() {
        this.mFirstTime = true;
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setVisibility(8);
        }
        View childAt2 = getChildAt(1);
        if (childAt2 != null) {
            childAt2.setVisibility(8);
        }
    }

    public void setFactory(ViewFactory viewFactory) {
        this.mFactory = viewFactory;
        obtainView();
        obtainView();
    }

    public ViewSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
