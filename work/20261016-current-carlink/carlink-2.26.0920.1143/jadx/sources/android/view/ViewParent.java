package android.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ViewParent {
    void bringChildToFront(View view);

    boolean canResolveLayoutDirection();

    boolean canResolveTextAlignment();

    boolean canResolveTextDirection();

    void childDrawableStateChanged(View view);

    void childHasTransientStateChanged(View view, boolean z2);

    void clearChildFocus(View view);

    void createContextMenu(ContextMenu contextMenu);

    View focusSearch(View view, int i2);

    void focusableViewAvailable(View view);

    boolean getChildVisibleRect(View view, Rect rect, Point point);

    int getLayoutDirection();

    ViewParent getParent();

    ViewParent getParentForAccessibility();

    int getTextAlignment();

    int getTextDirection();

    @Deprecated
    void invalidateChild(View view, Rect rect);

    @Deprecated
    ViewParent invalidateChildInParent(int[] iArr, Rect rect);

    boolean isLayoutDirectionResolved();

    boolean isLayoutRequested();

    boolean isTextAlignmentResolved();

    boolean isTextDirectionResolved();

    View keyboardNavigationClusterSearch(View view, int i2);

    void notifySubtreeAccessibilityStateChanged(View view, View view2, int i2);

    void onDescendantInvalidated(View view, View view2);

    boolean onNestedFling(View view, float f2, float f3, boolean z2);

    boolean onNestedPreFling(View view, float f2, float f3);

    boolean onNestedPrePerformAccessibilityAction(View view, int i2, Bundle bundle);

    void onNestedPreScroll(View view, int i2, int i3, int[] iArr);

    void onNestedScroll(View view, int i2, int i3, int i4, int i5);

    void onNestedScrollAccepted(View view, View view2, int i2);

    boolean onStartNestedScroll(View view, View view2, int i2);

    void onStopNestedScroll(View view);

    void recomputeViewAttributes(View view);

    void requestChildFocus(View view, View view2);

    boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2);

    void requestDisallowInterceptTouchEvent(boolean z2);

    void requestFitSystemWindows();

    void requestLayout();

    boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent);

    void requestTransparentRegion(View view);

    boolean showContextMenuForChild(View view);

    boolean showContextMenuForChild(View view, float f2, float f3);

    ActionMode startActionModeForChild(View view, ActionMode.Callback callback);

    ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2);
}
