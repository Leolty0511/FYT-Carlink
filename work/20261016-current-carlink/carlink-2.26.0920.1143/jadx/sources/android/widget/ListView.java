package android.widget;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.util.SparseBooleanArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.RemotableViewMethod;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import android.view.ViewRootImpl;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.android.internal.R;
import com.google.android.collect.Lists;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class ListView extends AbsListView {
    private static final float MAX_SCROLL_FACTOR = 0.33f;
    private static final int MIN_SCROLL_PREVIEW_PIXELS = 2;
    static final int NO_POSITION = -1;
    static final String TAG = "ListView";
    private boolean mAreAllItemsSelectable;
    private final ArrowScrollFocusResult mArrowScrollFocusResult;
    Drawable mDivider;
    int mDividerHeight;
    private boolean mDividerIsOpaque;
    private Paint mDividerPaint;
    private FocusSelector mFocusSelector;
    private boolean mFooterDividersEnabled;
    ArrayList<FixedViewInfo> mFooterViewInfos;
    private boolean mHeaderDividersEnabled;
    ArrayList<FixedViewInfo> mHeaderViewInfos;
    private boolean mIsCacheColorOpaque;
    private boolean mItemsCanFocus;
    Drawable mOverScrollFooter;
    Drawable mOverScrollHeader;
    private final Rect mTempRect;

    public static class ArrowScrollFocusResult {
        private int mAmountToScroll;
        private int mSelectedPosition;

        private ArrowScrollFocusResult() {
        }

        public int getAmountToScroll() {
            return this.mAmountToScroll;
        }

        public int getSelectedPosition() {
            return this.mSelectedPosition;
        }

        public void populate(int i2, int i3) {
            this.mSelectedPosition = i2;
            this.mAmountToScroll = i3;
        }
    }

    public class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public View view;

        public FixedViewInfo() {
        }
    }

    public class FocusSelector implements Runnable {
        private static final int STATE_REQUEST_FOCUS = 3;
        private static final int STATE_SET_SELECTION = 1;
        private static final int STATE_WAIT_FOR_LAYOUT = 2;
        private int mAction;
        private int mPosition;
        private int mPositionTop;

        private FocusSelector() {
        }

        public void onLayoutComplete() {
            if (this.mAction == 2) {
                this.mAction = -1;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.mAction;
            if (i2 == 1) {
                ListView.this.setSelectionFromTop(this.mPosition, this.mPositionTop);
                this.mAction = 2;
            } else if (i2 == 3) {
                int i3 = this.mPosition;
                ListView listView = ListView.this;
                View childAt = listView.getChildAt(i3 - listView.mFirstPosition);
                if (childAt != null) {
                    childAt.requestFocus();
                }
                this.mAction = -1;
            }
        }

        public Runnable setupFocusIfValid(int i2) {
            if (this.mAction != 2 || i2 != this.mPosition) {
                return null;
            }
            this.mAction = 3;
            return this;
        }

        public FocusSelector setupForSetSelection(int i2, int i3) {
            this.mPosition = i2;
            this.mPositionTop = i3;
            this.mAction = 1;
            return this;
        }
    }

    public ListView(Context context) {
        this(context, null);
    }

    private View addViewAbove(View view, int i2) {
        int i3 = i2 - 1;
        View viewObtainView = obtainView(i3, this.mIsScrap);
        setupChild(viewObtainView, i3, view.getTop() - this.mDividerHeight, false, this.mListPadding.left, false, this.mIsScrap[0]);
        return viewObtainView;
    }

    private View addViewBelow(View view, int i2) {
        int i3 = i2 + 1;
        View viewObtainView = obtainView(i3, this.mIsScrap);
        setupChild(viewObtainView, i3, view.getBottom() + this.mDividerHeight, true, this.mListPadding.left, false, this.mIsScrap[0]);
        return viewObtainView;
    }

    private void adjustViewsUpOrDown() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i2 = 0;
            if (this.mStackFromBottom) {
                int bottom = getChildAt(childCount - 1).getBottom() - (getHeight() - this.mListPadding.bottom);
                if (this.mFirstPosition + childCount < this.mItemCount) {
                    bottom += this.mDividerHeight;
                }
                if (bottom <= 0) {
                    i2 = bottom;
                }
            } else {
                int top = getChildAt(0).getTop() - this.mListPadding.top;
                if (this.mFirstPosition != 0) {
                    top -= this.mDividerHeight;
                }
                if (top >= 0) {
                    i2 = top;
                }
            }
            if (i2 != 0) {
                offsetChildrenTopAndBottom(-i2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0089  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0089 -> B:27:0x0083). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private int amountToScroll(int r7, int r8) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.ListView.amountToScroll(int, int):int");
    }

    private int amountToScrollToNewFocus(int i2, View view, int i3) {
        int i4;
        int arrowScrollPreviewLength;
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        if (i2 == 33) {
            int i5 = this.mTempRect.top;
            int i6 = this.mListPadding.top;
            if (i5 < i6) {
                i4 = i6 - i5;
                if (i3 <= 0) {
                    return i4;
                }
                arrowScrollPreviewLength = getArrowScrollPreviewLength();
                return i4 + arrowScrollPreviewLength;
            }
            return 0;
        }
        int height = getHeight() - this.mListPadding.bottom;
        int i7 = this.mTempRect.bottom;
        if (i7 > height) {
            i4 = i7 - height;
            if (i3 >= this.mItemCount - 1) {
                return i4;
            }
            arrowScrollPreviewLength = getArrowScrollPreviewLength();
            return i4 + arrowScrollPreviewLength;
        }
        return 0;
    }

    private ArrowScrollFocusResult arrowScrollFocused(int i2) {
        View viewFindNextFocusFromRect;
        int iLookForSelectablePositionOnScreen;
        View selectedView = getSelectedView();
        if (selectedView == null || !selectedView.hasFocus()) {
            if (i2 == 130) {
                int arrowScrollPreviewLength = this.mListPadding.top + (this.mFirstPosition > 0 ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getTop() > arrowScrollPreviewLength) {
                    arrowScrollPreviewLength = selectedView.getTop();
                }
                this.mTempRect.set(0, arrowScrollPreviewLength, 0, arrowScrollPreviewLength);
            } else {
                int height = (getHeight() - this.mListPadding.bottom) - ((getChildCount() + this.mFirstPosition) - 1 < this.mItemCount ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getBottom() < height) {
                    height = selectedView.getBottom();
                }
                this.mTempRect.set(0, height, 0, height);
            }
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, this.mTempRect, i2);
        } else {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, selectedView.findFocus(), i2);
        }
        if (viewFindNextFocusFromRect != null) {
            int iPositionOfNewFocus = positionOfNewFocus(viewFindNextFocusFromRect);
            int i3 = this.mSelectedPosition;
            if (i3 != -1 && iPositionOfNewFocus != i3 && (iLookForSelectablePositionOnScreen = lookForSelectablePositionOnScreen(i2)) != -1 && ((i2 == 130 && iLookForSelectablePositionOnScreen < iPositionOfNewFocus) || (i2 == 33 && iLookForSelectablePositionOnScreen > iPositionOfNewFocus))) {
                return null;
            }
            int iAmountToScrollToNewFocus = amountToScrollToNewFocus(i2, viewFindNextFocusFromRect, iPositionOfNewFocus);
            int maxScrollAmount = getMaxScrollAmount();
            if (iAmountToScrollToNewFocus < maxScrollAmount) {
                viewFindNextFocusFromRect.requestFocus(i2);
                this.mArrowScrollFocusResult.populate(iPositionOfNewFocus, iAmountToScrollToNewFocus);
                return this.mArrowScrollFocusResult;
            }
            if (distanceToView(viewFindNextFocusFromRect) < maxScrollAmount) {
                viewFindNextFocusFromRect.requestFocus(i2);
                this.mArrowScrollFocusResult.populate(iPositionOfNewFocus, maxScrollAmount);
                return this.mArrowScrollFocusResult;
            }
        }
        return null;
    }

    private boolean arrowScrollImpl(int i2) {
        View viewFindFocus;
        View focusedChild;
        if (getChildCount() <= 0) {
            return false;
        }
        View selectedView = getSelectedView();
        int i3 = this.mSelectedPosition;
        int iNextSelectedPositionForDirection = nextSelectedPositionForDirection(selectedView, i3, i2);
        int iAmountToScroll = amountToScroll(i2, iNextSelectedPositionForDirection);
        View view = null;
        ArrowScrollFocusResult arrowScrollFocusResultArrowScrollFocused = this.mItemsCanFocus ? arrowScrollFocused(i2) : null;
        if (arrowScrollFocusResultArrowScrollFocused != null) {
            iNextSelectedPositionForDirection = arrowScrollFocusResultArrowScrollFocused.getSelectedPosition();
            iAmountToScroll = arrowScrollFocusResultArrowScrollFocused.getAmountToScroll();
        }
        boolean z2 = arrowScrollFocusResultArrowScrollFocused != null;
        if (iNextSelectedPositionForDirection != -1) {
            handleNewSelectionChange(selectedView, i2, iNextSelectedPositionForDirection, arrowScrollFocusResultArrowScrollFocused != null);
            setSelectedPositionInt(iNextSelectedPositionForDirection);
            setNextSelectedPositionInt(iNextSelectedPositionForDirection);
            selectedView = getSelectedView();
            if (this.mItemsCanFocus && arrowScrollFocusResultArrowScrollFocused == null && (focusedChild = getFocusedChild()) != null) {
                focusedChild.clearFocus();
            }
            checkSelectionChanged();
            i3 = iNextSelectedPositionForDirection;
            z2 = true;
        }
        if (iAmountToScroll > 0) {
            if (i2 != 33) {
                iAmountToScroll = -iAmountToScroll;
            }
            scrollListItemsBy(iAmountToScroll);
            z2 = true;
        }
        if (this.mItemsCanFocus && arrowScrollFocusResultArrowScrollFocused == null && selectedView != null && selectedView.hasFocus() && (viewFindFocus = selectedView.findFocus()) != null && (!isViewAncestorOf(viewFindFocus, this) || distanceToView(viewFindFocus) > 0)) {
            viewFindFocus.clearFocus();
        }
        if (iNextSelectedPositionForDirection != -1 || selectedView == null || isViewAncestorOf(selectedView, this)) {
            view = selectedView;
        } else {
            hideSelector();
            this.mResurrectToPosition = -1;
        }
        if (!z2) {
            return false;
        }
        if (view != null) {
            positionSelectorLikeFocus(i3, view);
            this.mSelectedTop = view.getTop();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        invokeOnItemScrollListener();
        return true;
    }

    private void clearRecycledState(ArrayList<FixedViewInfo> arrayList) {
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) arrayList.get(i2).view.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.recycledHeaderFooter = false;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ac  */
    private boolean commonKey(int i2, int i3, KeyEvent keyEvent) throws Throwable {
        boolean zResurrectSelectionIfNeeded;
        int i4;
        if (this.mAdapter == null || !isAttachedToWindow()) {
            return false;
        }
        if (this.mDataChanged) {
            layoutChildren();
        }
        int action = keyEvent.getAction();
        if (KeyEvent.isConfirmKey(i2) && keyEvent.hasNoModifiers() && action != 1) {
            zResurrectSelectionIfNeeded = resurrectSelectionIfNeeded();
            if (!zResurrectSelectionIfNeeded && keyEvent.getRepeatCount() == 0 && getChildCount() > 0) {
                keyPressed();
                zResurrectSelectionIfNeeded = true;
            }
        } else {
            zResurrectSelectionIfNeeded = false;
        }
        if (!zResurrectSelectionIfNeeded && action != 1) {
            if (i2 != 61) {
                if (i2 != 92) {
                    if (i2 != 93) {
                        if (i2 != 122) {
                            if (i2 != 123) {
                                switch (i2) {
                                    case 19:
                                        if (keyEvent.hasNoModifiers()) {
                                            zResurrectSelectionIfNeeded = resurrectSelectionIfNeeded();
                                            if (!zResurrectSelectionIfNeeded) {
                                                while (true) {
                                                    i4 = i3 - 1;
                                                    if (i3 > 0 && arrowScroll(33)) {
                                                        zResurrectSelectionIfNeeded = true;
                                                        i3 = i4;
                                                    }
                                                }
                                                i3 = i4;
                                            }
                                        } else if (keyEvent.hasModifiers(2)) {
                                            if (resurrectSelectionIfNeeded() || fullScroll(33)) {
                                                zResurrectSelectionIfNeeded = true;
                                            } else {
                                                zResurrectSelectionIfNeeded = false;
                                            }
                                        }
                                        break;
                                    case 20:
                                        if (keyEvent.hasNoModifiers()) {
                                            zResurrectSelectionIfNeeded = resurrectSelectionIfNeeded();
                                            if (!zResurrectSelectionIfNeeded) {
                                                while (true) {
                                                    i4 = i3 - 1;
                                                    if (i3 > 0 && arrowScroll(130)) {
                                                        zResurrectSelectionIfNeeded = true;
                                                        i3 = i4;
                                                    }
                                                }
                                                i3 = i4;
                                            }
                                        } else if (keyEvent.hasModifiers(2)) {
                                            if (resurrectSelectionIfNeeded() || fullScroll(130)) {
                                                zResurrectSelectionIfNeeded = true;
                                            } else {
                                                zResurrectSelectionIfNeeded = false;
                                            }
                                        }
                                        break;
                                    case 21:
                                        if (keyEvent.hasNoModifiers()) {
                                            zResurrectSelectionIfNeeded = handleHorizontalFocusWithinListItem(17);
                                        }
                                        break;
                                    case 22:
                                        if (keyEvent.hasNoModifiers()) {
                                            zResurrectSelectionIfNeeded = handleHorizontalFocusWithinListItem(66);
                                        }
                                        break;
                                }
                            } else if (keyEvent.hasNoModifiers()) {
                                if (resurrectSelectionIfNeeded() || fullScroll(130)) {
                                    zResurrectSelectionIfNeeded = true;
                                } else {
                                    zResurrectSelectionIfNeeded = false;
                                }
                            }
                        } else if (keyEvent.hasNoModifiers()) {
                            if (resurrectSelectionIfNeeded() || fullScroll(33)) {
                                zResurrectSelectionIfNeeded = true;
                            } else {
                                zResurrectSelectionIfNeeded = false;
                            }
                        }
                    } else if (keyEvent.hasNoModifiers()) {
                        if (resurrectSelectionIfNeeded() || pageScroll(130)) {
                            zResurrectSelectionIfNeeded = true;
                        } else {
                            zResurrectSelectionIfNeeded = false;
                        }
                    } else if (keyEvent.hasModifiers(2)) {
                        if (resurrectSelectionIfNeeded() || fullScroll(130)) {
                            zResurrectSelectionIfNeeded = true;
                        } else {
                            zResurrectSelectionIfNeeded = false;
                        }
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    if (resurrectSelectionIfNeeded() || pageScroll(33)) {
                        zResurrectSelectionIfNeeded = true;
                    } else {
                        zResurrectSelectionIfNeeded = false;
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    if (resurrectSelectionIfNeeded() || fullScroll(33)) {
                        zResurrectSelectionIfNeeded = true;
                    } else {
                        zResurrectSelectionIfNeeded = false;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                if (resurrectSelectionIfNeeded() || arrowScroll(130)) {
                    zResurrectSelectionIfNeeded = true;
                } else {
                    zResurrectSelectionIfNeeded = false;
                }
            } else if (keyEvent.hasModifiers(1)) {
                if (resurrectSelectionIfNeeded() || arrowScroll(33)) {
                    zResurrectSelectionIfNeeded = true;
                } else {
                    zResurrectSelectionIfNeeded = false;
                }
            }
        }
        if (zResurrectSelectionIfNeeded || sendToTextFilter(i2, i3, keyEvent)) {
            return true;
        }
        if (action == 0) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (action == 1) {
            return super.onKeyUp(i2, keyEvent);
        }
        if (action != 2) {
            return false;
        }
        return super.onKeyMultiple(i2, i3, keyEvent);
    }

    private void correctTooHigh(int i2) {
        if ((this.mFirstPosition + i2) - 1 != this.mItemCount - 1 || i2 <= 0) {
            return;
        }
        int bottom = ((this.mBottom - this.mTop) - this.mListPadding.bottom) - getChildAt(i2 - 1).getBottom();
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        if (bottom > 0) {
            int i3 = this.mFirstPosition;
            if (i3 > 0 || top < this.mListPadding.top) {
                if (i3 == 0) {
                    bottom = Math.min(bottom, this.mListPadding.top - top);
                }
                offsetChildrenTopAndBottom(bottom);
                int i4 = this.mFirstPosition;
                if (i4 > 0) {
                    fillUp(i4 - 1, childAt.getTop() - this.mDividerHeight);
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private void correctTooLow(int i2) {
        if (this.mFirstPosition != 0 || i2 <= 0) {
            return;
        }
        int top = getChildAt(0).getTop();
        Rect rect = this.mListPadding;
        int i3 = rect.top;
        int i4 = (this.mBottom - this.mTop) - rect.bottom;
        int iMin = top - i3;
        View childAt = getChildAt(i2 - 1);
        int bottom = childAt.getBottom();
        int i5 = (this.mFirstPosition + i2) - 1;
        if (iMin > 0) {
            int i6 = this.mItemCount;
            if (i5 >= i6 - 1 && bottom <= i4) {
                if (i5 == i6 - 1) {
                    adjustViewsUpOrDown();
                    return;
                }
                return;
            }
            if (i5 == i6 - 1) {
                iMin = Math.min(iMin, bottom - i4);
            }
            offsetChildrenTopAndBottom(-iMin);
            if (i5 < this.mItemCount - 1) {
                fillDown(i5 + 1, childAt.getBottom() + this.mDividerHeight);
                adjustViewsUpOrDown();
            }
        }
    }

    private int distanceToView(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int i2 = this.mBottom - this.mTop;
        Rect rect = this.mListPadding;
        int i3 = i2 - rect.bottom;
        Rect rect2 = this.mTempRect;
        int i4 = rect2.bottom;
        int i5 = rect.top;
        if (i4 < i5) {
            return i5 - i4;
        }
        int i6 = rect2.top;
        if (i6 > i3) {
            return i6 - i3;
        }
        return 0;
    }

    private void fillAboveAndBelow(View view, int i2) {
        int i3 = this.mDividerHeight;
        if (this.mStackFromBottom) {
            fillDown(i2 + 1, view.getBottom() + i3);
            adjustViewsUpOrDown();
            fillUp(i2 - 1, view.getTop() - i3);
        } else {
            fillUp(i2 - 1, view.getTop() - i3);
            adjustViewsUpOrDown();
            fillDown(i2 + 1, view.getBottom() + i3);
        }
    }

    private View fillDown(int i2, int i3) {
        int i4 = this.mBottom - this.mTop;
        View view = null;
        if ((this.mGroupFlags & 34) == 34) {
            i4 -= this.mListPadding.bottom;
        }
        int bottom = i3;
        while (true) {
            if (bottom >= i4 || i2 >= this.mItemCount) {
                break;
            }
            boolean z2 = i2 == this.mSelectedPosition;
            View viewMakeAndAddView = makeAndAddView(i2, bottom, true, this.mListPadding.left, z2);
            bottom = viewMakeAndAddView.getBottom() + this.mDividerHeight;
            if (z2) {
                view = viewMakeAndAddView;
            }
            i2++;
        }
        int i5 = this.mFirstPosition;
        setVisibleRangeHint(i5, (getChildCount() + i5) - 1);
        return view;
    }

    private View fillFromMiddle(int i2, int i3) {
        int i4 = i3 - i2;
        int iReconcileSelectedPosition = reconcileSelectedPosition();
        View viewMakeAndAddView = makeAndAddView(iReconcileSelectedPosition, i2, true, this.mListPadding.left, true);
        this.mFirstPosition = iReconcileSelectedPosition;
        int measuredHeight = viewMakeAndAddView.getMeasuredHeight();
        if (measuredHeight <= i4) {
            viewMakeAndAddView.offsetTopAndBottom((i4 - measuredHeight) / 2);
        }
        fillAboveAndBelow(viewMakeAndAddView, iReconcileSelectedPosition);
        if (this.mStackFromBottom) {
            correctTooLow(getChildCount());
        } else {
            correctTooHigh(getChildCount());
        }
        return viewMakeAndAddView;
    }

    private View fillFromSelection(int i2, int i3, int i4) {
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i5 = this.mSelectedPosition;
        int topSelectionPixel = getTopSelectionPixel(i3, verticalFadingEdgeLength, i5);
        int bottomSelectionPixel = getBottomSelectionPixel(i4, verticalFadingEdgeLength, i5);
        View viewMakeAndAddView = makeAndAddView(i5, i2, true, this.mListPadding.left, true);
        if (viewMakeAndAddView.getBottom() > bottomSelectionPixel) {
            viewMakeAndAddView.offsetTopAndBottom(-Math.min(viewMakeAndAddView.getTop() - topSelectionPixel, viewMakeAndAddView.getBottom() - bottomSelectionPixel));
        } else if (viewMakeAndAddView.getTop() < topSelectionPixel) {
            viewMakeAndAddView.offsetTopAndBottom(Math.min(topSelectionPixel - viewMakeAndAddView.getTop(), bottomSelectionPixel - viewMakeAndAddView.getBottom()));
        }
        fillAboveAndBelow(viewMakeAndAddView, i5);
        if (this.mStackFromBottom) {
            correctTooLow(getChildCount());
        } else {
            correctTooHigh(getChildCount());
        }
        return viewMakeAndAddView;
    }

    private View fillFromTop(int i2) {
        int iMin = Math.min(this.mFirstPosition, this.mSelectedPosition);
        this.mFirstPosition = iMin;
        int iMin2 = Math.min(iMin, this.mItemCount - 1);
        this.mFirstPosition = iMin2;
        if (iMin2 < 0) {
            this.mFirstPosition = 0;
        }
        return fillDown(this.mFirstPosition, i2);
    }

    private View fillSpecific(int i2, int i3) {
        View viewFillUp;
        View viewFillDown;
        boolean z2 = i2 == this.mSelectedPosition;
        View viewMakeAndAddView = makeAndAddView(i2, i3, true, this.mListPadding.left, z2);
        this.mFirstPosition = i2;
        int i4 = this.mDividerHeight;
        if (this.mStackFromBottom) {
            View viewFillDown2 = fillDown(i2 + 1, viewMakeAndAddView.getBottom() + i4);
            adjustViewsUpOrDown();
            View viewFillUp2 = fillUp(i2 - 1, viewMakeAndAddView.getTop() - i4);
            int childCount = getChildCount();
            if (childCount > 0) {
                correctTooLow(childCount);
            }
            viewFillUp = viewFillUp2;
            viewFillDown = viewFillDown2;
        } else {
            viewFillUp = fillUp(i2 - 1, viewMakeAndAddView.getTop() - i4);
            adjustViewsUpOrDown();
            viewFillDown = fillDown(i2 + 1, viewMakeAndAddView.getBottom() + i4);
            int childCount2 = getChildCount();
            if (childCount2 > 0) {
                correctTooHigh(childCount2);
            }
        }
        if (z2) {
            return viewMakeAndAddView;
        }
        return viewFillUp != null ? viewFillUp : viewFillDown;
    }

    private View fillUp(int i2, int i3) {
        View view = null;
        int i4 = (this.mGroupFlags & 34) == 34 ? this.mListPadding.top : 0;
        while (true) {
            if (i3 <= i4 || i2 < 0) {
                break;
            }
            boolean z2 = i2 == this.mSelectedPosition;
            View viewMakeAndAddView = makeAndAddView(i2, i3, false, this.mListPadding.left, z2);
            i3 = viewMakeAndAddView.getTop() - this.mDividerHeight;
            if (z2) {
                view = viewMakeAndAddView;
            }
            i2--;
        }
        int i5 = i2 + 1;
        this.mFirstPosition = i5;
        setVisibleRangeHint(i5, (getChildCount() + i5) - 1);
        return view;
    }

    private int getArrowScrollPreviewLength() {
        return Math.max(2, getVerticalFadingEdgeLength());
    }

    private int getBottomSelectionPixel(int i2, int i3, int i4) {
        return i4 != this.mItemCount + (-1) ? i2 - i3 : i2;
    }

    private int getTopSelectionPixel(int i2, int i3, int i4) {
        return i4 > 0 ? i2 + i3 : i2;
    }

    private boolean handleHorizontalFocusWithinListItem(int i2) {
        View selectedView;
        if (i2 != 17 && i2 != 66) {
            throw new IllegalArgumentException("direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}");
        }
        int childCount = getChildCount();
        if (!this.mItemsCanFocus || childCount <= 0 || this.mSelectedPosition == -1 || (selectedView = getSelectedView()) == null || !selectedView.hasFocus() || !(selectedView instanceof ViewGroup)) {
            return false;
        }
        View viewFindFocus = selectedView.findFocus();
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) selectedView, viewFindFocus, i2);
        if (viewFindNextFocus != null) {
            Rect rect = this.mTempRect;
            if (viewFindFocus != null) {
                viewFindFocus.getFocusedRect(rect);
                offsetDescendantRectToMyCoords(viewFindFocus, rect);
                offsetRectIntoDescendantCoords(viewFindNextFocus, rect);
            } else {
                rect = null;
            }
            if (viewFindNextFocus.requestFocus(i2, rect)) {
                return true;
            }
        }
        View viewFindNextFocus2 = FocusFinder.getInstance().findNextFocus((ViewGroup) getRootView(), viewFindFocus, i2);
        if (viewFindNextFocus2 != null) {
            return isViewAncestorOf(viewFindNextFocus2, this);
        }
        return false;
    }

    private void handleNewSelectionChange(View view, int i2, int i3, boolean z2) {
        View childAt;
        boolean z3;
        if (i3 == -1) {
            throw new IllegalArgumentException("newSelectedPosition needs to be valid");
        }
        int i4 = this.mSelectedPosition;
        int i5 = this.mFirstPosition;
        int i6 = i4 - i5;
        int i7 = i3 - i5;
        if (i2 == 33) {
            z3 = true;
            childAt = view;
            view = getChildAt(i7);
            i6 = i7;
            i7 = i6;
        } else {
            childAt = getChildAt(i7);
            z3 = false;
        }
        int childCount = getChildCount();
        if (view != null) {
            view.setSelected(!z2 && z3);
            measureAndAdjustDown(view, i6, childCount);
        }
        if (childAt != null) {
            childAt.setSelected((z2 || z3) ? false : true);
            measureAndAdjustDown(childAt, i7, childCount);
        }
    }

    private boolean isDirectChildHeaderOrFooter(View view) {
        ArrayList<FixedViewInfo> arrayList = this.mHeaderViewInfos;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (view == arrayList.get(i2).view) {
                return true;
            }
        }
        ArrayList<FixedViewInfo> arrayList2 = this.mFooterViewInfos;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (view == arrayList2.get(i3).view) {
                return true;
            }
        }
        return false;
    }

    private boolean isViewAncestorOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewAncestorOf((View) parent, view2);
    }

    private int lookForSelectablePositionOnScreen(int i2) {
        int i3 = this.mFirstPosition;
        if (i2 == 130) {
            int i4 = this.mSelectedPosition;
            int i5 = i4 != -1 ? i4 + 1 : i3;
            if (i5 >= this.mAdapter.getCount()) {
                return -1;
            }
            if (i5 < i3) {
                i5 = i3;
            }
            int lastVisiblePosition = getLastVisiblePosition();
            ListAdapter adapter = getAdapter();
            while (i5 <= lastVisiblePosition) {
                if (adapter.isEnabled(i5) && getChildAt(i5 - i3).getVisibility() == 0) {
                    return i5;
                }
                i5++;
            }
        } else {
            int childCount = (getChildCount() + i3) - 1;
            int childCount2 = this.mSelectedPosition;
            if (childCount2 == -1) {
                childCount2 = getChildCount() + i3;
            }
            int i6 = childCount2 - 1;
            if (i6 >= 0 && i6 < this.mAdapter.getCount()) {
                if (i6 <= childCount) {
                    childCount = i6;
                }
                ListAdapter adapter2 = getAdapter();
                while (childCount >= i3) {
                    if (adapter2.isEnabled(childCount) && getChildAt(childCount - i3).getVisibility() == 0) {
                        return childCount;
                    }
                    childCount--;
                }
            }
        }
        return -1;
    }

    private View makeAndAddView(int i2, int i3, boolean z2, int i4, boolean z3) {
        View activeView;
        if (!this.mDataChanged && (activeView = this.mRecycler.getActiveView(i2)) != null) {
            setupChild(activeView, i2, i3, z2, i4, z3, true);
            return activeView;
        }
        View viewObtainView = obtainView(i2, this.mIsScrap);
        setupChild(viewObtainView, i2, i3, z2, i4, z3, this.mIsScrap[0]);
        return viewObtainView;
    }

    private void measureAndAdjustDown(View view, int i2, int i3) {
        int height = view.getHeight();
        measureItem(view);
        if (view.getMeasuredHeight() == height) {
            return;
        }
        relayoutMeasuredItem(view);
        int measuredHeight = view.getMeasuredHeight() - height;
        while (true) {
            i2++;
            if (i2 >= i3) {
                return;
            } else {
                getChildAt(i2).offsetTopAndBottom(measuredHeight);
            }
        }
    }

    private void measureItem(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int i2 = this.mWidthMeasureSpec;
        Rect rect = this.mListPadding;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, rect.left + rect.right, layoutParams.width);
        int i3 = layoutParams.height;
        view.measure(childMeasureSpec, i3 > 0 ? View.MeasureSpec.makeMeasureSpec(i3, 1073741824) : View.MeasureSpec.makeSafeMeasureSpec(getMeasuredHeight(), 0));
    }

    private void measureScrapChild(View view, int i2, int i3, int i4) {
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        layoutParams.viewType = this.mAdapter.getItemViewType(i2);
        layoutParams.isEnabled = this.mAdapter.isEnabled(i2);
        layoutParams.forceAdd = true;
        Rect rect = this.mListPadding;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, rect.left + rect.right, layoutParams.width);
        int i5 = layoutParams.height;
        view.measure(childMeasureSpec, i5 > 0 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeSafeMeasureSpec(i4, 0));
        view.forceLayout();
    }

    private View moveSelection(View view, View view2, int i2, int i3, int i4) {
        View viewMakeAndAddView;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i5 = this.mSelectedPosition;
        int topSelectionPixel = getTopSelectionPixel(i3, verticalFadingEdgeLength, i5);
        int bottomSelectionPixel = getBottomSelectionPixel(i3, verticalFadingEdgeLength, i5);
        if (i2 > 0) {
            View viewMakeAndAddView2 = makeAndAddView(i5 - 1, view.getTop(), true, this.mListPadding.left, false);
            int i6 = this.mDividerHeight;
            viewMakeAndAddView = makeAndAddView(i5, viewMakeAndAddView2.getBottom() + i6, true, this.mListPadding.left, true);
            if (viewMakeAndAddView.getBottom() > bottomSelectionPixel) {
                int i7 = -Math.min(Math.min(viewMakeAndAddView.getTop() - topSelectionPixel, viewMakeAndAddView.getBottom() - bottomSelectionPixel), (i4 - i3) / 2);
                viewMakeAndAddView2.offsetTopAndBottom(i7);
                viewMakeAndAddView.offsetTopAndBottom(i7);
            }
            if (this.mStackFromBottom) {
                fillDown(this.mSelectedPosition + 1, viewMakeAndAddView.getBottom() + i6);
                adjustViewsUpOrDown();
                fillUp(this.mSelectedPosition - 2, viewMakeAndAddView.getTop() - i6);
            } else {
                fillUp(this.mSelectedPosition - 2, viewMakeAndAddView.getTop() - i6);
                adjustViewsUpOrDown();
                fillDown(this.mSelectedPosition + 1, viewMakeAndAddView.getBottom() + i6);
            }
        } else if (i2 < 0) {
            viewMakeAndAddView = view2 != null ? makeAndAddView(i5, view2.getTop(), true, this.mListPadding.left, true) : makeAndAddView(i5, view.getTop(), false, this.mListPadding.left, true);
            if (viewMakeAndAddView.getTop() < topSelectionPixel) {
                viewMakeAndAddView.offsetTopAndBottom(Math.min(Math.min(topSelectionPixel - viewMakeAndAddView.getTop(), bottomSelectionPixel - viewMakeAndAddView.getBottom()), (i4 - i3) / 2));
            }
            fillAboveAndBelow(viewMakeAndAddView, i5);
        } else {
            int top = view.getTop();
            viewMakeAndAddView = makeAndAddView(i5, top, true, this.mListPadding.left, true);
            if (top < i3 && viewMakeAndAddView.getBottom() < i3 + 20) {
                viewMakeAndAddView.offsetTopAndBottom(i3 - viewMakeAndAddView.getTop());
            }
            fillAboveAndBelow(viewMakeAndAddView, i5);
        }
        return viewMakeAndAddView;
    }

    private final int nextSelectedPositionForDirection(View view, int i2, int i3) {
        int i4;
        if (i3 != 130) {
            int i5 = this.mListPadding.top;
            if (view != null && view.getTop() >= i5) {
                int childCount = (getChildCount() + this.mFirstPosition) - 1;
                i4 = (i2 == -1 || i2 > childCount) ? childCount : i2 - 1;
            }
            return -1;
        }
        int height = getHeight() - this.mListPadding.bottom;
        if (view == null || view.getBottom() > height) {
            return -1;
        }
        i4 = (i2 == -1 || i2 < this.mFirstPosition) ? this.mFirstPosition : i2 + 1;
        if (i4 >= 0 && i4 < this.mAdapter.getCount()) {
            return lookForSelectablePosition(i4, i3 == 130);
        }
        return -1;
    }

    private int positionOfNewFocus(View view) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (isViewAncestorOf(view, getChildAt(i2))) {
                return this.mFirstPosition + i2;
            }
        }
        throw new IllegalArgumentException("newFocus is not a child of any of the children of the list!");
    }

    private void relayoutMeasuredItem(View view) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = this.mListPadding.left;
        int top = view.getTop();
        view.layout(i2, top, measuredWidth + i2, measuredHeight + top);
    }

    private void removeFixedViewInfo(View view, ArrayList<FixedViewInfo> arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).view == view) {
                arrayList.remove(i2);
                return;
            }
        }
    }

    private void removeUnusedFixedViews(List<FixedViewInfo> list) {
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            View view = list.get(size).view;
            AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
            if (view.getParent() == null && layoutParams != null && layoutParams.recycledHeaderFooter) {
                removeDetachedView(view, false);
                layoutParams.recycledHeaderFooter = false;
            }
        }
    }

    private void scrollListItemsBy(int i2) {
        int i3;
        offsetChildrenTopAndBottom(i2);
        int height = getHeight();
        Rect rect = this.mListPadding;
        int i4 = height - rect.bottom;
        int i5 = rect.top;
        AbsListView.RecycleBin recycleBin = this.mRecycler;
        if (i2 < 0) {
            int childCount = getChildCount();
            View childAt = getChildAt(childCount - 1);
            while (childAt.getBottom() < i4 && (i3 = (this.mFirstPosition + childCount) - 1) < this.mItemCount - 1) {
                childAt = addViewBelow(childAt, i3);
                childCount++;
            }
            if (childAt.getBottom() < i4) {
                offsetChildrenTopAndBottom(i4 - childAt.getBottom());
            }
            View childAt2 = getChildAt(0);
            while (childAt2 != null && childAt2.getBottom() < i5) {
                if (recycleBin.shouldRecycleViewType(((AbsListView.LayoutParams) childAt2.getLayoutParams()).viewType)) {
                    recycleBin.addScrapView(childAt2, this.mFirstPosition);
                }
                detachViewFromParent(childAt2);
                childAt2 = getChildAt(0);
                this.mFirstPosition++;
            }
        } else {
            View childAt3 = getChildAt(0);
            while (childAt3 != null && childAt3.getTop() > i5) {
                int i6 = this.mFirstPosition;
                if (i6 <= 0) {
                    break;
                }
                childAt3 = addViewAbove(childAt3, i6);
                this.mFirstPosition--;
            }
            if (childAt3 != null && childAt3.getTop() > i5) {
                offsetChildrenTopAndBottom(i5 - childAt3.getTop());
            }
            int childCount2 = getChildCount() - 1;
            View childAt4 = getChildAt(childCount2);
            while (childAt4 != null && childAt4.getTop() > i4) {
                if (recycleBin.shouldRecycleViewType(((AbsListView.LayoutParams) childAt4.getLayoutParams()).viewType)) {
                    recycleBin.addScrapView(childAt4, this.mFirstPosition + childCount2);
                }
                detachViewFromParent(childAt4);
                childCount2--;
                childAt4 = getChildAt(childCount2);
            }
        }
        recycleBin.fullyDetachScrapViews();
        removeUnusedFixedViews(this.mHeaderViewInfos);
        removeUnusedFixedViews(this.mFooterViewInfos);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupChild(View view, int i2, int i3, boolean z2, int i4, boolean z3, boolean z4) {
        SparseBooleanArray sparseBooleanArray;
        Trace.traceBegin(8L, "setupListItem");
        boolean z5 = z3 && shouldShowSelector();
        boolean z6 = z5 != view.isSelected();
        int i5 = this.mTouchMode;
        boolean z7 = i5 > 0 && i5 < 3 && this.mMotionPosition == i2;
        boolean z8 = z7 != view.isPressed();
        boolean z9 = !z4 || z6 || view.isLayoutRequested();
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
        }
        layoutParams.viewType = this.mAdapter.getItemViewType(i2);
        layoutParams.isEnabled = this.mAdapter.isEnabled(i2);
        if (z6) {
            view.setSelected(z5);
        }
        if (z8) {
            view.setPressed(z7);
        }
        if (this.mChoiceMode != 0 && (sparseBooleanArray = this.mCheckStates) != null) {
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(sparseBooleanArray.get(i2));
            } else if (getContext().getApplicationInfo().targetSdkVersion >= 11) {
                view.setActivated(this.mCheckStates.get(i2));
            }
        }
        if ((!z4 || layoutParams.forceAdd) && !(layoutParams.recycledHeaderFooter && layoutParams.viewType == -2)) {
            layoutParams.forceAdd = false;
            if (layoutParams.viewType == -2) {
                layoutParams.recycledHeaderFooter = true;
            }
            addViewInLayout(view, z2 ? -1 : 0, layoutParams, true);
            view.resolveRtlPropertiesIfNeeded();
        } else {
            attachViewToParent(view, z2 ? -1 : 0, layoutParams);
            if (z4 && ((AbsListView.LayoutParams) view.getLayoutParams()).scrappedFromPosition != i2) {
                view.jumpDrawablesToCurrentState();
            }
        }
        if (z9) {
            int i6 = this.mWidthMeasureSpec;
            Rect rect = this.mListPadding;
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i6, rect.left + rect.right, layoutParams.width);
            int i7 = layoutParams.height;
            view.measure(childMeasureSpec, i7 > 0 ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeSafeMeasureSpec(getMeasuredHeight(), 0));
        } else {
            cleanupLayoutState(view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i8 = z2 ? i3 : i3 - measuredHeight;
        if (z9) {
            view.layout(i4, i8, measuredWidth + i4, measuredHeight + i8);
        } else {
            view.offsetLeftAndRight(i4 - view.getLeft());
            view.offsetTopAndBottom(i8 - view.getTop());
        }
        if (this.mCachingStarted && !view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        Trace.traceEnd(8L);
    }

    private boolean shouldAdjustHeightForDivider(int i2) {
        int i3 = this.mDividerHeight;
        Drawable drawable = this.mOverScrollHeader;
        Drawable drawable2 = this.mOverScrollFooter;
        int i4 = drawable != null ? 1 : 0;
        boolean z2 = drawable2 != null;
        if (i3 > 0 && this.mDivider != null) {
            boolean z3 = isOpaque() && !super.isOpaque();
            int i5 = this.mItemCount;
            int headerViewsCount = getHeaderViewsCount();
            int size = i5 - this.mFooterViewInfos.size();
            boolean z4 = i2 < headerViewsCount;
            boolean z5 = i2 >= size;
            boolean z6 = this.mHeaderDividersEnabled;
            boolean z7 = this.mFooterDividersEnabled;
            if ((z6 || !z4) && (z7 || !z5)) {
                ListAdapter listAdapter = this.mAdapter;
                if (this.mStackFromBottom) {
                    boolean z8 = i2 == i4;
                    if (!z8) {
                        int i6 = i2 - 1;
                        if ((listAdapter.isEnabled(i2) && ((z6 || (!z4 && i6 >= headerViewsCount)) && (z8 || (listAdapter.isEnabled(i6) && (z7 || (!z5 && i6 < size)))))) || z3) {
                            return true;
                        }
                    }
                } else {
                    boolean z9 = i2 == i5 - 1;
                    if (!z2 || !z9) {
                        int i7 = i2 + 1;
                        if ((listAdapter.isEnabled(i2) && ((z6 || (!z4 && i7 >= headerViewsCount)) && (z9 || (listAdapter.isEnabled(i7) && (z7 || (!z5 && i7 < size)))))) || z3) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private boolean showingBottomFadingEdge() {
        int childCount = getChildCount();
        return (this.mFirstPosition + childCount) - 1 < this.mItemCount - 1 || getChildAt(childCount + (-1)).getBottom() < (getHeight() + this.mScrollY) - this.mListPadding.bottom;
    }

    private boolean showingTopFadingEdge() {
        return this.mFirstPosition > 0 || getChildAt(0).getTop() > this.mScrollY + this.mListPadding.top;
    }

    public void addFooterView(View view, Object obj, boolean z2) {
        if (view.getParent() != null && view.getParent() != this && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "The specified child already has a parent. You must call removeView() on the child's parent first.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        fixedViewInfo.view = view;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z2;
        this.mFooterViewInfos.add(fixedViewInfo);
        this.mAreAllItemsSelectable &= z2;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            if (!(listAdapter instanceof HeaderViewListAdapter)) {
                wrapHeaderListAdapterInternal();
            }
            AbsListView.AdapterDataSetObserver adapterDataSetObserver = this.mDataSetObserver;
            if (adapterDataSetObserver != null) {
                adapterDataSetObserver.onChanged();
            }
        }
    }

    public void addHeaderView(View view, Object obj, boolean z2) {
        if (view.getParent() != null && view.getParent() != this && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "The specified child already has a parent. You must call removeView() on the child's parent first.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        fixedViewInfo.view = view;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z2;
        this.mHeaderViewInfos.add(fixedViewInfo);
        this.mAreAllItemsSelectable &= z2;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            if (!(listAdapter instanceof HeaderViewListAdapter)) {
                wrapHeaderListAdapterInternal();
            }
            AbsListView.AdapterDataSetObserver adapterDataSetObserver = this.mDataSetObserver;
            if (adapterDataSetObserver != null) {
                adapterDataSetObserver.onChanged();
            }
        }
    }

    public boolean areFooterDividersEnabled() {
        return this.mFooterDividersEnabled;
    }

    public boolean areHeaderDividersEnabled() {
        return this.mHeaderDividersEnabled;
    }

    boolean arrowScroll(int i2) {
        try {
            this.mInLayout = true;
            boolean zArrowScrollImpl = arrowScrollImpl(i2);
            if (zArrowScrollImpl) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
            }
            return zArrowScrollImpl;
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup
    public boolean canAnimate() {
        return super.canAnimate() && this.mItemCount > 0;
    }

    public void dispatchDataSetObserverOnChangedInternal() {
        AbsListView.AdapterDataSetObserver adapterDataSetObserver = this.mDataSetObserver;
        if (adapterDataSetObserver != null) {
            adapterDataSetObserver.onChanged();
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        Drawable drawable;
        int i5;
        int i6;
        int i7;
        boolean z2;
        int i8;
        ListAdapter listAdapter;
        Paint paint;
        if (this.mCachingStarted) {
            this.mCachingActive = true;
        }
        int i9 = this.mDividerHeight;
        Drawable drawable2 = this.mOverScrollHeader;
        Drawable drawable3 = this.mOverScrollFooter;
        int i10 = drawable2 != null ? 1 : 0;
        boolean z3 = drawable3 != null;
        boolean z4 = i9 > 0 && this.mDivider != null;
        if (z4 || i10 != 0 || z3) {
            Rect rect = this.mTempRect;
            rect.left = this.mPaddingLeft;
            rect.right = (this.mRight - this.mLeft) - this.mPaddingRight;
            int childCount = getChildCount();
            int headerViewsCount = getHeaderViewsCount();
            int i11 = this.mItemCount;
            int size = i11 - this.mFooterViewInfos.size();
            boolean z5 = this.mHeaderDividersEnabled;
            boolean z6 = this.mFooterDividersEnabled;
            int i12 = this.mFirstPosition;
            ListAdapter listAdapter2 = this.mAdapter;
            boolean z7 = isOpaque() && !super.isOpaque();
            if (z7) {
                i2 = i11;
                if (this.mDividerPaint == null && this.mIsCacheColorOpaque) {
                    Paint paint2 = new Paint();
                    this.mDividerPaint = paint2;
                    paint2.setColor(getCacheColorHint());
                }
            } else {
                i2 = i11;
            }
            Paint paint3 = this.mDividerPaint;
            if ((this.mGroupFlags & 34) == 34) {
                Rect rect2 = this.mListPadding;
                int i13 = rect2.top;
                i3 = rect2.bottom;
                i4 = i13;
            } else {
                i3 = 0;
                i4 = 0;
            }
            boolean z8 = z3;
            int i14 = (this.mBottom - this.mTop) - i3;
            int i15 = this.mScrollY;
            int i16 = i14 + i15;
            if (this.mStackFromBottom) {
                boolean z9 = z4;
                Drawable drawable4 = drawable3;
                if (childCount > 0 && i10 != 0) {
                    rect.top = i15;
                    rect.bottom = getChildAt(0).getTop();
                    drawOverscrollHeader(canvas, drawable2, rect);
                }
                int i17 = i10;
                while (i17 < childCount) {
                    int i18 = i12 + i17;
                    boolean z10 = i18 < headerViewsCount;
                    boolean z11 = i18 >= size;
                    if ((z5 || !z10) && (z6 || !z11)) {
                        drawable = drawable4;
                        int top = getChildAt(i17).getTop();
                        i5 = i15;
                        if (z9) {
                            int i19 = i4;
                            if (top > i19) {
                                boolean z12 = i17 == i10;
                                i6 = i19;
                                int i20 = i18 - 1;
                                if (listAdapter2.isEnabled(i18) && ((z5 || (!z10 && i20 >= headerViewsCount)) && (z12 || (listAdapter2.isEnabled(i20) && (z6 || (!z11 && i20 < size)))))) {
                                    rect.top = top - i9;
                                    rect.bottom = top;
                                    drawDivider(canvas, rect, i17 - 1);
                                } else if (z7) {
                                    rect.top = top - i9;
                                    rect.bottom = top;
                                    canvas.drawRect(rect, paint3);
                                }
                            } else {
                                i6 = i19;
                            }
                        }
                        i17++;
                        i15 = i5;
                        drawable4 = drawable;
                        i4 = i6;
                    } else {
                        i5 = i15;
                        drawable = drawable4;
                    }
                    i6 = i4;
                    i17++;
                    i15 = i5;
                    drawable4 = drawable;
                    i4 = i6;
                }
                int i21 = i15;
                Drawable drawable5 = drawable4;
                if (childCount > 0 && i21 > 0) {
                    if (z8) {
                        int i22 = this.mBottom;
                        rect.top = i22;
                        rect.bottom = i22 + i21;
                        drawOverscrollFooter(canvas, drawable5, rect);
                    } else if (z9) {
                        rect.top = i16;
                        rect.bottom = i16 + i9;
                        drawDivider(canvas, rect, -1);
                    }
                }
            } else {
                if (childCount > 0 && i15 < 0) {
                    if (i10 != 0) {
                        rect.bottom = 0;
                        rect.top = i15;
                        drawOverscrollHeader(canvas, drawable2, rect);
                    } else if (z4) {
                        rect.bottom = 0;
                        rect.top = -i9;
                        drawDivider(canvas, rect, -1);
                    }
                }
                int bottom = 0;
                int i23 = 0;
                while (i23 < childCount) {
                    int i24 = i12 + i23;
                    boolean z13 = i24 < headerViewsCount;
                    boolean z14 = i24 >= size;
                    if ((z5 || !z13) && (z6 || !z14)) {
                        bottom = getChildAt(i23).getBottom();
                        i7 = i12;
                        boolean z15 = i23 == childCount + (-1);
                        z2 = z4;
                        if (z4) {
                            int i25 = i16;
                            if (bottom >= i25 || (z8 && z15)) {
                                i16 = i25;
                            } else {
                                i16 = i25;
                                int i26 = i24 + 1;
                                i8 = childCount;
                                listAdapter = listAdapter2;
                                if (listAdapter.isEnabled(i24) && ((z5 || (!z13 && i26 >= headerViewsCount)) && (z15 || (listAdapter.isEnabled(i26) && (z6 || (!z14 && i26 < size)))))) {
                                    rect.top = bottom;
                                    rect.bottom = bottom + i9;
                                    drawDivider(canvas, rect, i23);
                                } else if (z7) {
                                    rect.top = bottom;
                                    rect.bottom = bottom + i9;
                                    paint = paint3;
                                    canvas.drawRect(rect, paint);
                                }
                                paint = paint3;
                            }
                        }
                        i23++;
                        paint3 = paint;
                        listAdapter2 = listAdapter;
                        i12 = i7;
                        z4 = z2;
                        childCount = i8;
                    } else {
                        i7 = i12;
                        z2 = z4;
                    }
                    i8 = childCount;
                    listAdapter = listAdapter2;
                    paint = paint3;
                    i23++;
                    paint3 = paint;
                    listAdapter2 = listAdapter;
                    i12 = i7;
                    z4 = z2;
                    childCount = i8;
                }
                int i27 = i12;
                int i28 = childCount;
                int i29 = this.mBottom + this.mScrollY;
                if (z8 && i27 + i28 == i2 && i29 > bottom) {
                    rect.top = bottom;
                    rect.bottom = i29;
                    drawOverscrollFooter(canvas, drawable3, rect);
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        return (zDispatchKeyEvent || getFocusedChild() == null || keyEvent.getAction() != 0) ? zDispatchKeyEvent : onKeyDown(keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        boolean zDrawChild = super.drawChild(canvas, view, j2);
        if (this.mCachingActive && view.mCachingFailed) {
            this.mCachingActive = false;
        }
        return zDrawChild;
    }

    public void drawDivider(Canvas canvas, Rect rect, int i2) {
        Drawable drawable = this.mDivider;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    public void drawOverscrollFooter(Canvas canvas, Drawable drawable, Rect rect) {
        int minimumHeight = drawable.getMinimumHeight();
        canvas.save();
        canvas.clipRect(rect);
        int i2 = rect.bottom;
        int i3 = rect.top;
        if (i2 - i3 < minimumHeight) {
            rect.bottom = i3 + minimumHeight;
        }
        drawable.setBounds(rect);
        drawable.draw(canvas);
        canvas.restore();
    }

    public void drawOverscrollHeader(Canvas canvas, Drawable drawable, Rect rect) {
        int minimumHeight = drawable.getMinimumHeight();
        canvas.save();
        canvas.clipRect(rect);
        int i2 = rect.bottom;
        if (i2 - rect.top < minimumHeight) {
            rect.top = i2 - minimumHeight;
        }
        drawable.setBounds(rect);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("recycleOnMeasure", recycleOnMeasure());
    }

    @Override // android.widget.AbsListView
    public void fillGap(boolean z2) {
        int childCount = getChildCount();
        if (!z2) {
            fillUp(this.mFirstPosition - 1, childCount > 0 ? getChildAt(0).getTop() - this.mDividerHeight : getHeight() - ((this.mGroupFlags & 34) == 34 ? getListPaddingBottom() : 0));
            correctTooLow(getChildCount());
            return;
        }
        int listPaddingTop = (this.mGroupFlags & 34) == 34 ? getListPaddingTop() : 0;
        if (childCount > 0) {
            listPaddingTop = this.mDividerHeight + getChildAt(childCount - 1).getBottom();
        }
        fillDown(this.mFirstPosition + childCount, listPaddingTop);
        correctTooHigh(getChildCount());
    }

    @Override // android.widget.AbsListView
    public int findMotionRow(int i2) {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return -1;
        }
        if (this.mStackFromBottom) {
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                if (i2 >= getChildAt(i3).getTop()) {
                    return this.mFirstPosition + i3;
                }
            }
            return -1;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            if (i2 <= getChildAt(i4).getBottom()) {
                return this.mFirstPosition + i4;
            }
        }
        return -1;
    }

    public View findViewByPredicateInHeadersOrFooters(ArrayList<FixedViewInfo> arrayList, Predicate<View> predicate, View view) {
        View viewFindViewByPredicate;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = arrayList.get(i2).view;
            if (view2 != view && !view2.isRootNamespace() && (viewFindViewByPredicate = view2.findViewByPredicate(predicate)) != null) {
                return viewFindViewByPredicate;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        T t2 = (T) super.findViewByPredicateTraversal(predicate, view);
        if (t2 == null) {
            T t3 = (T) findViewByPredicateInHeadersOrFooters(this.mHeaderViewInfos, predicate, view);
            if (t3 != null) {
                return t3;
            }
            t2 = (T) findViewByPredicateInHeadersOrFooters(this.mFooterViewInfos, predicate, view);
            if (t2 != null) {
            }
        }
        return t2;
    }

    public View findViewInHeadersOrFooters(ArrayList<FixedViewInfo> arrayList, int i2) {
        View viewFindViewById;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = arrayList.get(i3).view;
            if (!view.isRootNamespace() && (viewFindViewById = view.findViewById(i2)) != null) {
                return viewFindViewById;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewTraversal(int i2) {
        T t2 = (T) super.findViewTraversal(i2);
        if (t2 == null) {
            T t3 = (T) findViewInHeadersOrFooters(this.mHeaderViewInfos, i2);
            if (t3 != null) {
                return t3;
            }
            t2 = (T) findViewInHeadersOrFooters(this.mFooterViewInfos, i2);
            if (t2 != null) {
            }
        }
        return t2;
    }

    public View findViewWithTagInHeadersOrFooters(ArrayList<FixedViewInfo> arrayList, Object obj) {
        View viewFindViewWithTag;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2).view;
            if (!view.isRootNamespace() && (viewFindViewWithTag = view.findViewWithTag(obj)) != null) {
                return viewFindViewWithTag;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewWithTagTraversal(Object obj) {
        T t2 = (T) super.findViewWithTagTraversal(obj);
        if (t2 == null) {
            T t3 = (T) findViewWithTagInHeadersOrFooters(this.mHeaderViewInfos, obj);
            if (t3 != null) {
                return t3;
            }
            t2 = (T) findViewWithTagInHeadersOrFooters(this.mFooterViewInfos, obj);
            if (t2 != null) {
            }
        }
        return t2;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    boolean fullScroll(int i2) throws Throwable {
        int i3;
        int i4;
        boolean z2 = true;
        if (i2 == 33) {
            int i5 = this.mSelectedPosition;
            if (i5 != 0) {
                int iLookForSelectablePositionAfter = lookForSelectablePositionAfter(i5, 0, true);
                if (iLookForSelectablePositionAfter >= 0) {
                    ((AbsListView) this).mLayoutMode = 1;
                    setSelectionInt(iLookForSelectablePositionAfter);
                    invokeOnItemScrollListener();
                }
            } else {
                z2 = false;
            }
        } else if (i2 != 130 || (i4 = this.mSelectedPosition) >= (i3 = this.mItemCount - 1)) {
            z2 = false;
        } else {
            int iLookForSelectablePositionAfter2 = lookForSelectablePositionAfter(i4, i3, false);
            if (iLookForSelectablePositionAfter2 >= 0) {
                ((AbsListView) this).mLayoutMode = 3;
                setSelectionInt(iLookForSelectablePositionAfter2);
                invokeOnItemScrollListener();
            }
        }
        if (z2 && !awakenScrollBars()) {
            awakenScrollBars();
            invalidate();
        }
        return z2;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ListView.class.getName();
    }

    @Deprecated
    public long[] getCheckItemIds() {
        SparseBooleanArray sparseBooleanArray;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null && listAdapter.hasStableIds()) {
            return getCheckedItemIds();
        }
        if (this.mChoiceMode == 0 || (sparseBooleanArray = this.mCheckStates) == null || this.mAdapter == null) {
            return new long[0];
        }
        int size = sparseBooleanArray.size();
        long[] jArr = new long[size];
        ListAdapter listAdapter2 = this.mAdapter;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            if (sparseBooleanArray.valueAt(i3)) {
                jArr[i2] = listAdapter2.getItemId(sparseBooleanArray.keyAt(i3));
                i2++;
            }
        }
        if (i2 == size) {
            return jArr;
        }
        long[] jArr2 = new long[i2];
        System.arraycopy(jArr, 0, jArr2, 0, i2);
        return jArr2;
    }

    public Drawable getDivider() {
        return this.mDivider;
    }

    public int getDividerHeight() {
        return this.mDividerHeight;
    }

    @Override // android.widget.AbsListView
    public int getFooterViewsCount() {
        return this.mFooterViewInfos.size();
    }

    @Override // android.widget.AbsListView
    public int getHeaderViewsCount() {
        return this.mHeaderViewInfos.size();
    }

    @Override // android.widget.AbsListView
    public int getHeightForPosition(int i2) {
        int heightForPosition = super.getHeightForPosition(i2);
        return shouldAdjustHeightForDivider(i2) ? heightForPosition + this.mDividerHeight : heightForPosition;
    }

    public boolean getItemsCanFocus() {
        return this.mItemsCanFocus;
    }

    public int getMaxScrollAmount() {
        return (int) ((this.mBottom - this.mTop) * MAX_SCROLL_FACTOR);
    }

    public Drawable getOverscrollFooter() {
        return this.mOverScrollFooter;
    }

    public Drawable getOverscrollHeader() {
        return this.mOverScrollHeader;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        boolean z2 = (this.mCachingActive && this.mIsCacheColorOpaque && this.mDividerIsOpaque && hasOpaqueScrollbars()) || super.isOpaque();
        if (z2) {
            Rect rect = this.mListPadding;
            int i2 = rect != null ? rect.top : this.mPaddingTop;
            View childAt = getChildAt(0);
            if (childAt != null && childAt.getTop() <= i2) {
                int height = getHeight();
                Rect rect2 = this.mListPadding;
                int i3 = height - (rect2 != null ? rect2.bottom : this.mPaddingBottom);
                View childAt2 = getChildAt(getChildCount() - 1);
                if (childAt2 == null || childAt2.getBottom() < i3) {
                }
            }
            return false;
        }
        return z2;
    }

    @Override // android.widget.AbsListView
    public void layoutChildren() throws Throwable {
        View view;
        View childAt;
        View view2;
        int positionForView;
        View accessibilityFocusedHost;
        AccessibilityNodeInfo accessibilityFocusedVirtualView;
        View viewFindFocus;
        View view3;
        AccessibilityNodeInfo accessibilityNodeInfo;
        View viewFillFromTop;
        View viewFillSpecific;
        FocusSelector focusSelector;
        Runnable runnable;
        View childAt2;
        View accessibilityFocusedChild;
        boolean z2 = this.mBlockLayoutRequests;
        if (z2) {
            return;
        }
        this.mBlockLayoutRequests = true;
        int i2 = 0;
        try {
            super.layoutChildren();
            invalidate();
            if (this.mAdapter == null) {
                resetList();
                invokeOnItemScrollListener();
                FocusSelector focusSelector2 = this.mFocusSelector;
                if (focusSelector2 != null) {
                    focusSelector2.onLayoutComplete();
                }
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            Rect rect = this.mListPadding;
            int top = rect.top;
            int i3 = (this.mBottom - this.mTop) - rect.bottom;
            int childCount = getChildCount();
            int i4 = ((AbsListView) this).mLayoutMode;
            if (i4 == 1) {
                view = null;
                childAt = null;
                view2 = null;
            } else {
                if (i4 == 2) {
                    int i5 = this.mNextSelectedPosition - this.mFirstPosition;
                    if (i5 >= 0 && i5 < childCount) {
                        childAt = getChildAt(i5);
                        view = null;
                    }
                    view2 = null;
                } else if (i4 != 3 && i4 != 4 && i4 != 5) {
                    int i6 = this.mSelectedPosition - this.mFirstPosition;
                    View childAt3 = (i6 < 0 || i6 >= childCount) ? null : getChildAt(i6);
                    View childAt4 = getChildAt(0);
                    int i7 = this.mNextSelectedPosition;
                    int i8 = i7 >= 0 ? i7 - this.mSelectedPosition : 0;
                    View view4 = childAt3;
                    childAt = getChildAt(i6 + i8);
                    view = view4;
                    int i9 = i8;
                    view2 = childAt4;
                    i2 = i9;
                }
                view = null;
                childAt = null;
                view2 = null;
            }
            boolean z3 = this.mDataChanged;
            if (z3) {
                handleDataChanged();
            }
            int i10 = this.mItemCount;
            if (i10 == 0) {
                resetList();
                invokeOnItemScrollListener();
                FocusSelector focusSelector3 = this.mFocusSelector;
                if (focusSelector3 != null) {
                    focusSelector3.onLayoutComplete();
                }
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            if (i10 != this.mAdapter.getCount()) {
                for (int i11 = 0; i11 < this.mAdapter.getCount(); i11++) {
                    Log.d(TAG, "adapter count " + i11 + " is: " + this.mAdapter.getItem(i11));
                }
                IllegalStateException illegalStateException = new IllegalStateException("The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView(" + getId() + ", " + getClass() + ") with Adapter(" + this.mAdapter.getClass() + ")], mItemCount = " + this.mItemCount + ", but adapter's count = " + this.mAdapter.getCount());
                if (!ActivityManager.isUserAMonkey()) {
                    throw illegalStateException;
                }
                Log.e(TAG, "ListView get into error state while monkey testing!!!", illegalStateException);
                FocusSelector focusSelector4 = this.mFocusSelector;
                if (focusSelector4 != null) {
                    focusSelector4.onLayoutComplete();
                }
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            setSelectedPositionInt(this.mNextSelectedPosition);
            ViewRootImpl viewRootImpl = getViewRootImpl();
            if (viewRootImpl == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null || (accessibilityFocusedChild = getAccessibilityFocusedChild(accessibilityFocusedHost)) == null) {
                positionForView = -1;
                accessibilityFocusedHost = null;
                accessibilityFocusedVirtualView = null;
            } else {
                if (!z3 || isDirectChildHeaderOrFooter(accessibilityFocusedChild) || (accessibilityFocusedChild.hasTransientState() && this.mAdapterHasStableIds)) {
                    accessibilityFocusedVirtualView = viewRootImpl.getAccessibilityFocusedVirtualView();
                } else {
                    accessibilityFocusedHost = null;
                    accessibilityFocusedVirtualView = null;
                }
                positionForView = getPositionForView(accessibilityFocusedChild);
            }
            View focusedChild = getFocusedChild();
            if (focusedChild != null) {
                if (!z3 || isDirectChildHeaderOrFooter(focusedChild) || focusedChild.hasTransientState() || this.mAdapterHasStableIds) {
                    viewFindFocus = findFocus();
                    if (viewFindFocus != null) {
                        viewFindFocus.dispatchStartTemporaryDetach();
                    }
                } else {
                    viewFindFocus = null;
                    focusedChild = null;
                }
                requestFocus();
            } else {
                viewFindFocus = null;
                focusedChild = null;
            }
            try {
                int i12 = this.mFirstPosition;
                int i13 = positionForView;
                AbsListView.RecycleBin recycleBin = this.mRecycler;
                if (z3) {
                    int i14 = 0;
                    while (i14 < childCount) {
                        recycleBin.addScrapView(getChildAt(i14), i12 + i14);
                        i14++;
                        accessibilityFocusedVirtualView = accessibilityFocusedVirtualView;
                        accessibilityFocusedHost = accessibilityFocusedHost;
                    }
                    view3 = accessibilityFocusedHost;
                    accessibilityNodeInfo = accessibilityFocusedVirtualView;
                } else {
                    view3 = accessibilityFocusedHost;
                    accessibilityNodeInfo = accessibilityFocusedVirtualView;
                    recycleBin.fillActiveViews(childCount, i12);
                }
                detachAllViewsFromParent();
                recycleBin.removeSkippedScrap();
                switch (((AbsListView) this).mLayoutMode) {
                    case 1:
                        this.mFirstPosition = 0;
                        viewFillFromTop = fillFromTop(top);
                        adjustViewsUpOrDown();
                        break;
                    case 2:
                        viewFillFromTop = childAt != null ? fillFromSelection(childAt.getTop(), top, i3) : fillFromMiddle(top, i3);
                        break;
                    case 3:
                        viewFillFromTop = fillUp(this.mItemCount - 1, i3);
                        adjustViewsUpOrDown();
                        break;
                    case 4:
                        int iReconcileSelectedPosition = reconcileSelectedPosition();
                        viewFillSpecific = fillSpecific(iReconcileSelectedPosition, this.mSpecificTop);
                        if (viewFillSpecific == null && (focusSelector = this.mFocusSelector) != null && (runnable = focusSelector.setupFocusIfValid(iReconcileSelectedPosition)) != null) {
                            post(runnable);
                        }
                        viewFillFromTop = viewFillSpecific;
                        break;
                    case 5:
                        viewFillFromTop = fillSpecific(this.mSyncPosition, this.mSpecificTop);
                        break;
                    case 6:
                        viewFillFromTop = moveSelection(view, childAt, i2, top, i3);
                        break;
                    default:
                        if (childCount != 0) {
                            int i15 = this.mSelectedPosition;
                            if (i15 < 0 || i15 >= this.mItemCount) {
                                int i16 = this.mFirstPosition;
                                if (i16 < this.mItemCount) {
                                    if (view2 != null) {
                                        top = view2.getTop();
                                    }
                                    viewFillFromTop = fillSpecific(i16, top);
                                } else {
                                    viewFillSpecific = fillSpecific(0, top);
                                    viewFillFromTop = viewFillSpecific;
                                }
                            } else {
                                if (view != null) {
                                    top = view.getTop();
                                }
                                viewFillFromTop = fillSpecific(i15, top);
                            }
                        } else if (this.mStackFromBottom) {
                            setSelectedPositionInt(lookForSelectablePosition(this.mItemCount - 1, false));
                            viewFillFromTop = fillUp(this.mItemCount - 1, i3);
                        } else {
                            setSelectedPositionInt(lookForSelectablePosition(0, true));
                            viewFillFromTop = fillFromTop(top);
                        }
                        break;
                }
                recycleBin.scrapActiveViews();
                removeUnusedFixedViews(this.mHeaderViewInfos);
                removeUnusedFixedViews(this.mFooterViewInfos);
                if (viewFillFromTop != null) {
                    if (!this.mItemsCanFocus || !hasFocus() || viewFillFromTop.hasFocus()) {
                        positionSelector(-1, viewFillFromTop);
                    } else if ((viewFillFromTop == focusedChild && viewFindFocus != null && viewFindFocus.requestFocus()) || viewFillFromTop.requestFocus()) {
                        viewFillFromTop.setSelected(false);
                        this.mSelectorRect.setEmpty();
                    } else {
                        View focusedChild2 = getFocusedChild();
                        if (focusedChild2 != null) {
                            focusedChild2.clearFocus();
                        }
                        positionSelector(-1, viewFillFromTop);
                    }
                    this.mSelectedTop = viewFillFromTop.getTop();
                } else {
                    int i17 = this.mTouchMode;
                    if (i17 == 1 || i17 == 2) {
                        View childAt5 = getChildAt(this.mMotionPosition - this.mFirstPosition);
                        if (childAt5 != null) {
                            positionSelector(this.mMotionPosition, childAt5);
                        }
                    } else {
                        int i18 = this.mSelectorPosition;
                        if (i18 != -1) {
                            View childAt6 = getChildAt(i18 - this.mFirstPosition);
                            if (childAt6 != null) {
                                positionSelector(this.mSelectorPosition, childAt6);
                            }
                        } else {
                            this.mSelectedTop = 0;
                            this.mSelectorRect.setEmpty();
                        }
                    }
                    if (hasFocus() && viewFindFocus != null) {
                        viewFindFocus.requestFocus();
                    }
                }
                if (viewRootImpl != null && viewRootImpl.getAccessibilityFocusedHost() == null) {
                    if (view3 != null && view3.isAttachedToWindow()) {
                        AccessibilityNodeProvider accessibilityNodeProvider = view3.getAccessibilityNodeProvider();
                        if (accessibilityNodeInfo == null || accessibilityNodeProvider == null) {
                            view3.requestAccessibilityFocus();
                        } else {
                            accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo.getSourceNodeId()), 64, null);
                        }
                    } else if (i13 != -1 && (childAt2 = getChildAt(MathUtils.constrain(i13 - this.mFirstPosition, 0, getChildCount() - 1))) != null) {
                        childAt2.requestAccessibilityFocus();
                    }
                }
                if (viewFindFocus != null && viewFindFocus.getWindowToken() != null) {
                    viewFindFocus.dispatchFinishTemporaryDetach();
                }
                ((AbsListView) this).mLayoutMode = 0;
                this.mDataChanged = false;
                Runnable runnable2 = this.mPositionScrollAfterLayout;
                if (runnable2 != null) {
                    post(runnable2);
                    this.mPositionScrollAfterLayout = null;
                }
                this.mNeedSync = false;
                setNextSelectedPositionInt(this.mSelectedPosition);
                updateScrollIndicators();
                if (this.mItemCount > 0) {
                    checkSelectionChanged();
                }
                invokeOnItemScrollListener();
                FocusSelector focusSelector5 = this.mFocusSelector;
                if (focusSelector5 != null) {
                    focusSelector5.onLayoutComplete();
                }
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
            } catch (Throwable th) {
                th = th;
                FocusSelector focusSelector6 = this.mFocusSelector;
                if (focusSelector6 != null) {
                    focusSelector6.onLayoutComplete();
                }
                if (!z2) {
                    this.mBlockLayoutRequests = false;
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z2 = z2;
        }
    }

    @Override // android.widget.AdapterView
    int lookForSelectablePosition(int i2, boolean z2) {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null && !isInTouchMode()) {
            int count = listAdapter.getCount();
            if (!this.mAreAllItemsSelectable) {
                if (z2) {
                    i2 = Math.max(0, i2);
                    while (i2 < count && !listAdapter.isEnabled(i2)) {
                        i2++;
                    }
                } else {
                    i2 = Math.min(i2, count - 1);
                    while (i2 >= 0 && !listAdapter.isEnabled(i2)) {
                        i2--;
                    }
                }
            }
            if (i2 >= 0 && i2 < count) {
                return i2;
            }
        }
        return -1;
    }

    public int lookForSelectablePositionAfter(int i2, int i3, boolean z2) {
        int iMax;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null || isInTouchMode()) {
            return -1;
        }
        int iLookForSelectablePosition = lookForSelectablePosition(i3, z2);
        if (iLookForSelectablePosition != -1) {
            return iLookForSelectablePosition;
        }
        int count = listAdapter.getCount() - 1;
        int iConstrain = MathUtils.constrain(i2, -1, count);
        if (z2) {
            iMax = Math.min(i3 - 1, count);
            while (iMax > iConstrain && !listAdapter.isEnabled(iMax)) {
                iMax--;
            }
            if (iMax <= iConstrain) {
                return -1;
            }
        } else {
            iMax = Math.max(0, i3 + 1);
            while (iMax < iConstrain && !listAdapter.isEnabled(iMax)) {
                iMax++;
            }
            if (iMax >= iConstrain) {
                return -1;
            }
        }
        return iMax;
    }

    public final int measureHeightOfChildren(int i2, int i3, int i4, int i5, int i6) {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null) {
            Rect rect = this.mListPadding;
            return rect.top + rect.bottom;
        }
        Rect rect2 = this.mListPadding;
        int measuredHeight = rect2.top + rect2.bottom;
        int i7 = this.mDividerHeight;
        if (i4 == -1) {
            i4 = listAdapter.getCount() - 1;
        }
        AbsListView.RecycleBin recycleBin = this.mRecycler;
        boolean zRecycleOnMeasure = recycleOnMeasure();
        boolean[] zArr = this.mIsScrap;
        int i8 = 0;
        while (i3 <= i4) {
            View viewObtainView = obtainView(i3, zArr);
            measureScrapChild(viewObtainView, i3, i2, i5);
            if (i3 > 0) {
                measuredHeight += i7;
            }
            if (zRecycleOnMeasure && recycleBin.shouldRecycleViewType(((AbsListView.LayoutParams) viewObtainView.getLayoutParams()).viewType)) {
                recycleBin.addScrapView(viewObtainView, -1);
            }
            measuredHeight += viewObtainView.getMeasuredHeight();
            if (measuredHeight >= i5) {
                return (i6 < 0 || i3 <= i6 || i8 <= 0 || measuredHeight == i5) ? i5 : i8;
            }
            if (i6 >= 0 && i3 >= i6) {
                i8 = measuredHeight;
            }
            i3++;
        }
        return measuredHeight;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        FocusSelector focusSelector = this.mFocusSelector;
        if (focusSelector != null) {
            removeCallbacks(focusSelector);
            this.mFocusSelector = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i2 = 0; i2 < childCount; i2++) {
                addHeaderView(getChildAt(i2));
            }
            removeAllViews();
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) throws Throwable {
        super.onFocusChanged(z2, i2, rect);
        ListAdapter listAdapter = this.mAdapter;
        int i3 = -1;
        int i4 = 0;
        if (listAdapter != null && z2 && rect != null) {
            rect.offset(this.mScrollX, this.mScrollY);
            if (listAdapter.getCount() < getChildCount() + this.mFirstPosition) {
                ((AbsListView) this).mLayoutMode = 0;
                layoutChildren();
            }
            Rect rect2 = this.mTempRect;
            int childCount = getChildCount();
            int i5 = this.mFirstPosition;
            int i6 = Integer.MAX_VALUE;
            int top = 0;
            while (i4 < childCount) {
                if (listAdapter.isEnabled(i5 + i4)) {
                    View childAt = getChildAt(i4);
                    childAt.getDrawingRect(rect2);
                    offsetDescendantRectToMyCoords(childAt, rect2);
                    int distance = AbsListView.getDistance(rect, rect2, i2);
                    if (distance < i6) {
                        top = childAt.getTop();
                        i3 = i4;
                        i6 = distance;
                    }
                }
                i4++;
            }
            i4 = top;
        }
        if (i3 >= 0) {
            setSelectionFromTop(i3 + this.mFirstPosition, i4);
        } else {
            requestLayout();
        }
    }

    @Override // android.widget.AbsListView
    public void onInitializeAccessibilityNodeInfoForItem(View view, int i2, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoForItem(view, i2, accessibilityNodeInfo);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, 1, 0, 1, layoutParams != null && layoutParams.viewType == -2, isItemChecked(i2)));
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        int count = getCount();
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(count, 1, false, getSelectionModeForAccessibility()));
        if (count > 0) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION);
        }
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return commonKey(i2, 1, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return commonKey(i2, i3, keyEvent);
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return commonKey(i2, 1, keyEvent);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onMeasure(int i2, int i3) {
        int measuredWidth;
        int measuredHeight;
        int verticalScrollbarWidth;
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        ListAdapter listAdapter = this.mAdapter;
        int i4 = 0;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        this.mItemCount = count;
        if (count <= 0 || !(mode == 0 || mode2 == 0)) {
            measuredWidth = 0;
            measuredHeight = 0;
        } else {
            View viewObtainView = obtainView(0, this.mIsScrap);
            measureScrapChild(viewObtainView, 0, i2, size2);
            measuredWidth = viewObtainView.getMeasuredWidth();
            measuredHeight = viewObtainView.getMeasuredHeight();
            int iCombineMeasuredStates = View.combineMeasuredStates(0, viewObtainView.getMeasuredState());
            if (recycleOnMeasure() && this.mRecycler.shouldRecycleViewType(((AbsListView.LayoutParams) viewObtainView.getLayoutParams()).viewType)) {
                this.mRecycler.addScrapView(viewObtainView, 0);
            }
            i4 = iCombineMeasuredStates;
        }
        if (mode == 0) {
            Rect rect = this.mListPadding;
            verticalScrollbarWidth = getVerticalScrollbarWidth() + rect.left + rect.right + measuredWidth;
        } else {
            verticalScrollbarWidth = ((-16777216) & i4) | size;
        }
        if (mode2 == 0) {
            Rect rect2 = this.mListPadding;
            size2 = (getVerticalFadingEdgeLength() * 2) + rect2.top + rect2.bottom + measuredHeight;
        }
        int iMeasureHeightOfChildren = size2;
        if (mode2 == Integer.MIN_VALUE) {
            iMeasureHeightOfChildren = measureHeightOfChildren(i2, 0, -1, iMeasureHeightOfChildren, -1);
        }
        setMeasuredDimension(verticalScrollbarWidth, iMeasureHeightOfChildren);
        this.mWidthMeasureSpec = i2;
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        View focusedChild;
        if (getChildCount() > 0 && (focusedChild = getFocusedChild()) != null) {
            int iIndexOfChild = indexOfChild(focusedChild) + this.mFirstPosition;
            int top = focusedChild.getTop() - Math.max(0, focusedChild.getBottom() - (i3 - this.mPaddingTop));
            if (this.mFocusSelector == null) {
                this.mFocusSelector = new FocusSelector();
            }
            post(this.mFocusSelector.setupForSetSelection(iIndexOfChild, top));
        }
        super.onSizeChanged(i2, i3, i4, i5);
    }

    boolean pageScroll(int i2) throws Throwable {
        int iMin;
        boolean z2;
        int iLookForSelectablePositionAfter;
        if (i2 != 33) {
            if (i2 == 130) {
                iMin = Math.min(this.mItemCount - 1, (getChildCount() + this.mSelectedPosition) - 1);
                z2 = true;
            }
            return false;
        }
        iMin = Math.max(0, (this.mSelectedPosition - getChildCount()) - 1);
        z2 = false;
        if (iMin >= 0 && (iLookForSelectablePositionAfter = lookForSelectablePositionAfter(this.mSelectedPosition, iMin, z2)) >= 0) {
            ((AbsListView) this).mLayoutMode = 4;
            this.mSpecificTop = getVerticalFadingEdgeLength() + this.mPaddingTop;
            if (z2 && iLookForSelectablePositionAfter > this.mItemCount - getChildCount()) {
                ((AbsListView) this).mLayoutMode = 3;
            }
            if (!z2 && iLookForSelectablePositionAfter < getChildCount()) {
                ((AbsListView) this).mLayoutMode = 1;
            }
            setSelectionInt(iLookForSelectablePositionAfter);
            invokeOnItemScrollListener();
            if (!awakenScrollBars()) {
                invalidate();
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i2, bundle)) {
            return true;
        }
        if (i2 != 16908343) {
            return false;
        }
        int i3 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
        int iMin = Math.min(i3, getCount() - 1);
        if (i3 < 0) {
            return false;
        }
        smoothScrollToPosition(iMin);
        return true;
    }

    @ViewDebug.ExportedProperty(category = "list")
    public boolean recycleOnMeasure() {
        return true;
    }

    public boolean removeFooterView(View view) {
        boolean z2 = false;
        if (this.mFooterViewInfos.size() > 0) {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null && ((HeaderViewListAdapter) listAdapter).removeFooter(view)) {
                AbsListView.AdapterDataSetObserver adapterDataSetObserver = this.mDataSetObserver;
                if (adapterDataSetObserver != null) {
                    adapterDataSetObserver.onChanged();
                }
                z2 = true;
            }
            removeFixedViewInfo(view, this.mFooterViewInfos);
        }
        return z2;
    }

    public boolean removeHeaderView(View view) {
        boolean z2 = false;
        if (this.mHeaderViewInfos.size() > 0) {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null && ((HeaderViewListAdapter) listAdapter).removeHeader(view)) {
                AbsListView.AdapterDataSetObserver adapterDataSetObserver = this.mDataSetObserver;
                if (adapterDataSetObserver != null) {
                    adapterDataSetObserver.onChanged();
                }
                z2 = true;
            }
            removeFixedViewInfo(view, this.mHeaderViewInfos);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        int iMax;
        int i2 = rect.top;
        rect.offset(view.getLeft(), view.getTop());
        rect.offset(-view.getScrollX(), -view.getScrollY());
        int height = getHeight();
        int scrollY = getScrollY();
        int i3 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (showingTopFadingEdge() && (this.mSelectedPosition > 0 || i2 > verticalFadingEdgeLength)) {
            scrollY += verticalFadingEdgeLength;
        }
        int bottom = getChildAt(getChildCount() - 1).getBottom();
        if (showingBottomFadingEdge() && (this.mSelectedPosition < this.mItemCount - 1 || rect.bottom < bottom - verticalFadingEdgeLength)) {
            i3 -= verticalFadingEdgeLength;
        }
        int i4 = rect.bottom;
        if (i4 > i3 && rect.top > scrollY) {
            iMax = Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i3) + 0, bottom - i3);
        } else if (rect.top >= scrollY || i4 >= i3) {
            iMax = 0;
        } else {
            iMax = Math.max(rect.height() > height ? 0 - (i3 - rect.bottom) : 0 - (scrollY - rect.top), getChildAt(0).getTop() - scrollY);
        }
        boolean z3 = iMax != 0;
        if (z3) {
            scrollListItemsBy(-iMax);
            positionSelector(-1, view);
            this.mSelectedTop = view.getTop();
            invalidate();
        }
        return z3;
    }

    @Override // android.widget.AbsListView
    public void resetList() {
        clearRecycledState(this.mHeaderViewInfos);
        clearRecycledState(this.mFooterViewInfos);
        super.resetList();
        ((AbsListView) this).mLayoutMode = 0;
    }

    @Override // android.widget.AbsListView
    public void setCacheColorHint(int i2) {
        boolean z2 = (i2 >>> 24) == 255;
        this.mIsCacheColorOpaque = z2;
        if (z2) {
            if (this.mDividerPaint == null) {
                this.mDividerPaint = new Paint();
            }
            this.mDividerPaint.setColor(i2);
        }
        super.setCacheColorHint(i2);
    }

    public void setDivider(Drawable drawable) {
        if (drawable != null) {
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerHeight = 0;
        }
        this.mDivider = drawable;
        this.mDividerIsOpaque = drawable == null || drawable.getOpacity() == -1;
        requestLayout();
        invalidate();
    }

    public void setDividerHeight(int i2) {
        this.mDividerHeight = i2;
        requestLayout();
        invalidate();
    }

    public void setFooterDividersEnabled(boolean z2) {
        this.mFooterDividersEnabled = z2;
        invalidate();
    }

    public void setHeaderDividersEnabled(boolean z2) {
        this.mHeaderDividersEnabled = z2;
        invalidate();
    }

    public void setItemsCanFocus(boolean z2) {
        this.mItemsCanFocus = z2;
        if (z2) {
            return;
        }
        setDescendantFocusability(393216);
    }

    public void setOverscrollFooter(Drawable drawable) {
        this.mOverScrollFooter = drawable;
        invalidate();
    }

    public void setOverscrollHeader(Drawable drawable) {
        this.mOverScrollHeader = drawable;
        if (this.mScrollY < 0) {
            invalidate();
        }
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod(asyncImpl = "setRemoteViewsAdapterAsync")
    public void setRemoteViewsAdapter(Intent intent) {
        super.setRemoteViewsAdapter(intent);
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i2) {
        setSelectionFromTop(i2, 0);
    }

    public void setSelectionAfterHeaderView() {
        int headerViewsCount = getHeaderViewsCount();
        if (headerViewsCount > 0) {
            this.mNextSelectedPosition = 0;
        } else if (this.mAdapter != null) {
            setSelection(headerViewsCount);
        } else {
            this.mNextSelectedPosition = headerViewsCount;
            ((AbsListView) this).mLayoutMode = 2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011  */
    @Override // android.widget.AbsListView
    public void setSelectionInt(int i2) throws Throwable {
        boolean z2;
        setNextSelectedPositionInt(i2);
        int i3 = this.mSelectedPosition;
        if (i3 >= 0) {
            z2 = true;
            if (i2 != i3 - 1 && i2 != i3 + 1) {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        AbsListView.AbsPositionScroller absPositionScroller = this.mPositionScroller;
        if (absPositionScroller != null) {
            absPositionScroller.stop();
        }
        layoutChildren();
        if (z2) {
            awakenScrollBars();
        }
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod
    public void smoothScrollByOffset(int i2) {
        super.smoothScrollByOffset(i2);
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod
    public void smoothScrollToPosition(int i2) {
        super.smoothScrollToPosition(i2);
    }

    @Override // android.widget.AbsListView
    public boolean trackMotionScroll(int i2, int i3) {
        boolean zTrackMotionScroll = super.trackMotionScroll(i2, i3);
        removeUnusedFixedViews(this.mHeaderViewInfos);
        removeUnusedFixedViews(this.mFooterViewInfos);
        return zTrackMotionScroll;
    }

    public HeaderViewListAdapter wrapHeaderListAdapterInternal(ArrayList<FixedViewInfo> arrayList, ArrayList<FixedViewInfo> arrayList2, ListAdapter listAdapter) {
        return new HeaderViewListAdapter(arrayList, arrayList2, listAdapter);
    }

    public ListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        AbsListView.AdapterDataSetObserver adapterDataSetObserver;
        ListAdapter listAdapter2 = this.mAdapter;
        if (listAdapter2 != null && (adapterDataSetObserver = this.mDataSetObserver) != null) {
            listAdapter2.unregisterDataSetObserver(adapterDataSetObserver);
        }
        resetList();
        this.mRecycler.clear();
        if (this.mHeaderViewInfos.size() > 0 || this.mFooterViewInfos.size() > 0) {
            this.mAdapter = wrapHeaderListAdapterInternal(this.mHeaderViewInfos, this.mFooterViewInfos, listAdapter);
        } else {
            this.mAdapter = listAdapter;
        }
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        super.setAdapter(listAdapter);
        ListAdapter listAdapter3 = this.mAdapter;
        if (listAdapter3 != null) {
            this.mAreAllItemsSelectable = listAdapter3.areAllItemsEnabled();
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = this.mAdapter.getCount();
            checkFocus();
            AbsListView.AdapterDataSetObserver adapterDataSetObserver2 = new AbsListView.AdapterDataSetObserver();
            this.mDataSetObserver = adapterDataSetObserver2;
            this.mAdapter.registerDataSetObserver(adapterDataSetObserver2);
            this.mRecycler.setViewTypeCount(this.mAdapter.getViewTypeCount());
            int iLookForSelectablePosition = this.mStackFromBottom ? lookForSelectablePosition(this.mItemCount - 1, false) : lookForSelectablePosition(0, true);
            setSelectedPositionInt(iLookForSelectablePosition);
            setNextSelectedPositionInt(iLookForSelectablePosition);
            if (this.mItemCount == 0) {
                checkSelectionChanged();
            }
        } else {
            this.mAreAllItemsSelectable = true;
            checkFocus();
            checkSelectionChanged();
        }
        requestLayout();
    }

    public void wrapHeaderListAdapterInternal() {
        this.mAdapter = wrapHeaderListAdapterInternal(this.mHeaderViewInfos, this.mFooterViewInfos, this.mAdapter);
    }

    public ListView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListView(Context context, AttributeSet attributeSet, int i2, int i3) {
        int dimensionPixelSize;
        super(context, attributeSet, i2, i3);
        this.mHeaderViewInfos = Lists.newArrayList();
        this.mFooterViewInfos = Lists.newArrayList();
        this.mAreAllItemsSelectable = true;
        this.mItemsCanFocus = false;
        this.mTempRect = new Rect();
        this.mArrowScrollFocusResult = new ArrowScrollFocusResult();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListView, i2, i3);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(0);
        if (textArray != null) {
            setAdapter((ListAdapter) new ArrayAdapter(context, 17367043, textArray));
        }
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setDivider(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(5);
        if (drawable2 != null) {
            setOverscrollHeader(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(6);
        if (drawable3 != null) {
            setOverscrollFooter(drawable3);
        }
        if (typedArrayObtainStyledAttributes.hasValueOrEmpty(2) && (dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0)) != 0) {
            setDividerHeight(dimensionPixelSize);
        }
        this.mHeaderDividersEnabled = typedArrayObtainStyledAttributes.getBoolean(3, true);
        this.mFooterDividersEnabled = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void addFooterView(View view) {
        addFooterView(view, null, true);
    }

    public void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }
}
