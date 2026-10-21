package android.widget;

import android.app.m;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.MathUtils;
import android.util.SparseBooleanArray;
import android.view.Gravity;
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
import android.view.animation.GridLayoutAnimationController;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class GridView extends AbsListView {
    public static final int AUTO_FIT = -1;
    public static final int NO_STRETCH = 0;
    public static final int STRETCH_COLUMN_WIDTH = 2;
    public static final int STRETCH_SPACING = 1;
    public static final int STRETCH_SPACING_UNIFORM = 3;
    private int mColumnWidth;
    private int mGravity;
    private int mHorizontalSpacing;
    private int mNumColumns;
    private View mReferenceView;
    private View mReferenceViewInSelectedRow;
    private int mRequestedColumnWidth;
    private int mRequestedHorizontalSpacing;
    private int mRequestedNumColumns;
    private int mStretchMode;
    private final Rect mTempRect;
    private int mVerticalSpacing;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StretchMode {
    }

    public GridView(Context context) {
        this(context, null);
    }

    private void adjustForBottomFadingEdge(View view, int i2, int i3) {
        if (view.getBottom() > i3) {
            offsetChildrenTopAndBottom(-Math.min(view.getTop() - i2, view.getBottom() - i3));
        }
    }

    private void adjustForTopFadingEdge(View view, int i2, int i3) {
        if (view.getTop() < i2) {
            offsetChildrenTopAndBottom(Math.min(i2 - view.getTop(), i3 - view.getBottom()));
        }
    }

    private void adjustViewsUpOrDown() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i2 = 0;
            if (this.mStackFromBottom) {
                int bottom = getChildAt(childCount - 1).getBottom() - (getHeight() - this.mListPadding.bottom);
                if (this.mFirstPosition + childCount < this.mItemCount) {
                    bottom += this.mVerticalSpacing;
                }
                if (bottom <= 0) {
                    i2 = bottom;
                }
            } else {
                int top = getChildAt(0).getTop() - this.mListPadding.top;
                if (this.mFirstPosition != 0) {
                    top -= this.mVerticalSpacing;
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

    /* JADX WARN: Code duplicated, block: B:43:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0072  */
    private boolean commonKey(int i2, int i3, KeyEvent keyEvent) throws Throwable {
        boolean zResurrectSelectionIfNeeded;
        if (this.mAdapter == null) {
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
                                        if (!keyEvent.hasNoModifiers()) {
                                            if (keyEvent.hasModifiers(2)) {
                                                if (resurrectSelectionIfNeeded() || fullScroll(33)) {
                                                    zResurrectSelectionIfNeeded = true;
                                                } else {
                                                    zResurrectSelectionIfNeeded = false;
                                                }
                                            }
                                        } else if (resurrectSelectionIfNeeded() || arrowScroll(33)) {
                                            zResurrectSelectionIfNeeded = true;
                                        } else {
                                            zResurrectSelectionIfNeeded = false;
                                        }
                                        break;
                                    case 20:
                                        if (!keyEvent.hasNoModifiers()) {
                                            if (keyEvent.hasModifiers(2)) {
                                                if (resurrectSelectionIfNeeded() || fullScroll(130)) {
                                                    zResurrectSelectionIfNeeded = true;
                                                } else {
                                                    zResurrectSelectionIfNeeded = false;
                                                }
                                            }
                                        } else if (resurrectSelectionIfNeeded() || arrowScroll(130)) {
                                            zResurrectSelectionIfNeeded = true;
                                        } else {
                                            zResurrectSelectionIfNeeded = false;
                                        }
                                        break;
                                    case 21:
                                        if (keyEvent.hasNoModifiers()) {
                                            if (resurrectSelectionIfNeeded() || arrowScroll(17)) {
                                                zResurrectSelectionIfNeeded = true;
                                            } else {
                                                zResurrectSelectionIfNeeded = false;
                                            }
                                        }
                                        break;
                                    case 22:
                                        if (keyEvent.hasNoModifiers()) {
                                            if (resurrectSelectionIfNeeded() || arrowScroll(66)) {
                                                zResurrectSelectionIfNeeded = true;
                                            } else {
                                                zResurrectSelectionIfNeeded = false;
                                            }
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
                if (resurrectSelectionIfNeeded() || sequenceScroll(2)) {
                    zResurrectSelectionIfNeeded = true;
                } else {
                    zResurrectSelectionIfNeeded = false;
                }
            } else if (keyEvent.hasModifiers(1)) {
                if (resurrectSelectionIfNeeded() || sequenceScroll(1)) {
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

    private void correctTooHigh(int i2, int i3, int i4) {
        if ((this.mFirstPosition + i4) - 1 != this.mItemCount - 1 || i4 <= 0) {
            return;
        }
        int bottom = ((this.mBottom - this.mTop) - this.mListPadding.bottom) - getChildAt(i4 - 1).getBottom();
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        if (bottom > 0) {
            int i5 = this.mFirstPosition;
            if (i5 > 0 || top < this.mListPadding.top) {
                if (i5 == 0) {
                    bottom = Math.min(bottom, this.mListPadding.top - top);
                }
                offsetChildrenTopAndBottom(bottom);
                int i6 = this.mFirstPosition;
                if (i6 > 0) {
                    if (this.mStackFromBottom) {
                        i2 = 1;
                    }
                    fillUp(i6 - i2, childAt.getTop() - i3);
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private void correctTooLow(int i2, int i3, int i4) {
        if (this.mFirstPosition != 0 || i4 <= 0) {
            return;
        }
        int top = getChildAt(0).getTop();
        Rect rect = this.mListPadding;
        int i5 = rect.top;
        int i6 = (this.mBottom - this.mTop) - rect.bottom;
        int iMin = top - i5;
        View childAt = getChildAt(i4 - 1);
        int bottom = childAt.getBottom();
        int i7 = (this.mFirstPosition + i4) - 1;
        if (iMin > 0) {
            int i8 = this.mItemCount;
            if (i7 < i8 - 1 || bottom > i6) {
                if (i7 == i8 - 1) {
                    iMin = Math.min(iMin, bottom - i6);
                }
                offsetChildrenTopAndBottom(-iMin);
                if (i7 < this.mItemCount - 1) {
                    if (!this.mStackFromBottom) {
                        i2 = 1;
                    }
                    fillDown(i7 + i2, childAt.getBottom() + i3);
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private boolean determineColumns(int i2) {
        int i3 = this.mRequestedHorizontalSpacing;
        int i4 = this.mStretchMode;
        int i5 = this.mRequestedColumnWidth;
        int i6 = this.mRequestedNumColumns;
        if (i6 != -1) {
            this.mNumColumns = i6;
        } else if (i5 > 0) {
            this.mNumColumns = (i2 + i3) / (i5 + i3);
        } else {
            this.mNumColumns = 2;
        }
        if (this.mNumColumns <= 0) {
            this.mNumColumns = 1;
        }
        boolean z2 = false;
        if (i4 != 0) {
            int i7 = this.mNumColumns;
            int i8 = (i2 - (i7 * i5)) - ((i7 - 1) * i3);
            z2 = i8 < 0;
            if (i4 == 1) {
                this.mColumnWidth = i5;
                if (i7 > 1) {
                    this.mHorizontalSpacing = (i8 / (i7 - 1)) + i3;
                } else {
                    this.mHorizontalSpacing = i3 + i8;
                }
            } else if (i4 == 2) {
                this.mColumnWidth = (i8 / i7) + i5;
                this.mHorizontalSpacing = i3;
            } else if (i4 == 3) {
                this.mColumnWidth = i5;
                if (i7 > 1) {
                    this.mHorizontalSpacing = (i8 / (i7 + 1)) + i3;
                } else {
                    this.mHorizontalSpacing = i3 + i8;
                }
            }
        } else {
            this.mColumnWidth = i5;
            this.mHorizontalSpacing = i3;
        }
        return z2;
    }

    private View fillDown(int i2, int i3) {
        int i4 = this.mBottom - this.mTop;
        View view = null;
        if ((this.mGroupFlags & 34) == 34) {
            i4 -= this.mListPadding.bottom;
        }
        while (i3 < i4 && i2 < this.mItemCount) {
            View viewMakeRow = makeRow(i2, i3, true);
            if (viewMakeRow != null) {
                view = viewMakeRow;
            }
            i3 = this.mReferenceView.getBottom() + this.mVerticalSpacing;
            i2 += this.mNumColumns;
        }
        int i5 = this.mFirstPosition;
        setVisibleRangeHint(i5, (getChildCount() + i5) - 1);
        return view;
    }

    private View fillFromBottom(int i2, int i3) {
        int iMin = Math.min(Math.max(i2, this.mSelectedPosition), this.mItemCount - 1);
        int i4 = this.mItemCount;
        int i5 = (i4 - 1) - iMin;
        return fillUp((i4 - 1) - (i5 - (i5 % this.mNumColumns)), i3);
    }

    private View fillFromSelection(int i2, int i3, int i4) {
        int i5;
        int iMax;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i6 = this.mSelectedPosition;
        int i7 = this.mNumColumns;
        int i8 = this.mVerticalSpacing;
        if (this.mStackFromBottom) {
            int i9 = this.mItemCount;
            int i10 = (i9 - 1) - i6;
            i5 = (i9 - 1) - (i10 - (i10 % i7));
            iMax = Math.max(0, (i5 - i7) + 1);
        } else {
            iMax = i6 - (i6 % i7);
            i5 = -1;
        }
        int topSelectionPixel = getTopSelectionPixel(i3, verticalFadingEdgeLength, iMax);
        int bottomSelectionPixel = getBottomSelectionPixel(i4, verticalFadingEdgeLength, i7, iMax);
        View viewMakeRow = makeRow(this.mStackFromBottom ? i5 : iMax, i2, true);
        this.mFirstPosition = iMax;
        View view = this.mReferenceView;
        adjustForTopFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        adjustForBottomFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        if (this.mStackFromBottom) {
            fillDown(i5 + i7, view.getBottom() + i8);
            adjustViewsUpOrDown();
            fillUp(iMax - 1, view.getTop() - i8);
        } else {
            fillUp(iMax - i7, view.getTop() - i8);
            adjustViewsUpOrDown();
            fillDown(iMax + i7, view.getBottom() + i8);
        }
        return viewMakeRow;
    }

    private View fillFromTop(int i2) {
        int iMin = Math.min(this.mFirstPosition, this.mSelectedPosition);
        this.mFirstPosition = iMin;
        int iMin2 = Math.min(iMin, this.mItemCount - 1);
        this.mFirstPosition = iMin2;
        if (iMin2 < 0) {
            this.mFirstPosition = 0;
        }
        int i3 = this.mFirstPosition;
        int i4 = i3 - (i3 % this.mNumColumns);
        this.mFirstPosition = i4;
        return fillDown(i4, i2);
    }

    private View fillSelection(int i2, int i3) {
        int i4;
        int iMax;
        int iReconcileSelectedPosition = reconcileSelectedPosition();
        int i5 = this.mNumColumns;
        int i6 = this.mVerticalSpacing;
        if (this.mStackFromBottom) {
            int i7 = this.mItemCount;
            int i8 = (i7 - 1) - iReconcileSelectedPosition;
            i4 = (i7 - 1) - (i8 - (i8 % i5));
            iMax = Math.max(0, (i4 - i5) + 1);
        } else {
            iMax = iReconcileSelectedPosition - (iReconcileSelectedPosition % i5);
            i4 = -1;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        View viewMakeRow = makeRow(this.mStackFromBottom ? i4 : iMax, getTopSelectionPixel(i2, verticalFadingEdgeLength, iMax), true);
        this.mFirstPosition = iMax;
        View view = this.mReferenceView;
        if (this.mStackFromBottom) {
            offsetChildrenTopAndBottom(getBottomSelectionPixel(i3, verticalFadingEdgeLength, i5, iMax) - view.getBottom());
            fillUp(iMax - 1, view.getTop() - i6);
            pinToTop(i2);
            fillDown(i4 + i5, view.getBottom() + i6);
            adjustViewsUpOrDown();
        } else {
            fillDown(iMax + i5, view.getBottom() + i6);
            pinToBottom(i3);
            fillUp(iMax - i5, view.getTop() - i6);
            adjustViewsUpOrDown();
        }
        return viewMakeRow;
    }

    private View fillSpecific(int i2, int i3) {
        int i4;
        int iMax;
        View viewFillUp;
        View viewFillDown;
        int i5 = this.mNumColumns;
        if (this.mStackFromBottom) {
            int i6 = this.mItemCount;
            int i7 = (i6 - 1) - i2;
            i4 = (i6 - 1) - (i7 - (i7 % i5));
            iMax = Math.max(0, (i4 - i5) + 1);
        } else {
            iMax = i2 - (i2 % i5);
            i4 = -1;
        }
        View viewMakeRow = makeRow(this.mStackFromBottom ? i4 : iMax, i3, true);
        this.mFirstPosition = iMax;
        View view = this.mReferenceView;
        if (view == null) {
            return null;
        }
        int i8 = this.mVerticalSpacing;
        if (this.mStackFromBottom) {
            View viewFillDown2 = fillDown(i4 + i5, view.getBottom() + i8);
            adjustViewsUpOrDown();
            View viewFillUp2 = fillUp(iMax - 1, view.getTop() - i8);
            int childCount = getChildCount();
            if (childCount > 0) {
                correctTooLow(i5, i8, childCount);
            }
            viewFillUp = viewFillUp2;
            viewFillDown = viewFillDown2;
        } else {
            viewFillUp = fillUp(iMax - i5, view.getTop() - i8);
            adjustViewsUpOrDown();
            viewFillDown = fillDown(iMax + i5, view.getBottom() + i8);
            int childCount2 = getChildCount();
            if (childCount2 > 0) {
                correctTooHigh(i5, i8, childCount2);
            }
        }
        if (viewMakeRow != null) {
            return viewMakeRow;
        }
        return viewFillUp != null ? viewFillUp : viewFillDown;
    }

    private View fillUp(int i2, int i3) {
        View view = null;
        int i4 = (this.mGroupFlags & 34) == 34 ? this.mListPadding.top : 0;
        while (i3 > i4 && i2 >= 0) {
            View viewMakeRow = makeRow(i2, i3, false);
            if (viewMakeRow != null) {
                view = viewMakeRow;
            }
            i3 = this.mReferenceView.getTop() - this.mVerticalSpacing;
            this.mFirstPosition = i2;
            i2 -= this.mNumColumns;
        }
        if (this.mStackFromBottom) {
            this.mFirstPosition = Math.max(0, i2 + 1);
        }
        int i5 = this.mFirstPosition;
        setVisibleRangeHint(i5, (getChildCount() + i5) - 1);
        return view;
    }

    private int getBottomSelectionPixel(int i2, int i3, int i4, int i5) {
        return (i5 + i4) + (-1) < this.mItemCount + (-1) ? i2 - i3 : i2;
    }

    private int getTopSelectionPixel(int i2, int i3, int i4) {
        return i4 > 0 ? i2 + i3 : i2;
    }

    private boolean isCandidateSelection(int i2, int i3) {
        int iMax;
        int iMin;
        int childCount = getChildCount();
        int i4 = childCount - 1;
        int i5 = i4 - i2;
        if (this.mStackFromBottom) {
            int i6 = this.mNumColumns;
            int i7 = i4 - (i5 - (i5 % i6));
            iMax = Math.max(0, (i7 - i6) + 1);
            iMin = i7;
        } else {
            int i8 = this.mNumColumns;
            iMax = i2 - (i2 % i8);
            iMin = Math.min((i8 + iMax) - 1, childCount);
        }
        if (i3 == 1) {
            return i2 == iMin && iMin == i4;
        }
        if (i3 == 2) {
            return i2 == iMax && iMax == 0;
        }
        if (i3 == 17) {
            return i2 == iMin;
        }
        if (i3 == 33) {
            return iMin == i4;
        }
        if (i3 == 66) {
            return i2 == iMax;
        }
        if (i3 == 130) {
            return iMax == 0;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    private View makeAndAddView(int i2, int i3, boolean z2, int i4, boolean z3, int i5) {
        View activeView;
        if (!this.mDataChanged && (activeView = this.mRecycler.getActiveView(i2)) != null) {
            setupChild(activeView, i2, i3, z2, i4, z3, true, i5);
            return activeView;
        }
        View viewObtainView = obtainView(i2, this.mIsScrap);
        setupChild(viewObtainView, i2, i3, z2, i4, z3, this.mIsScrap[0], i5);
        return viewObtainView;
    }

    private View makeRow(int i2, int i3, boolean z2) {
        int width;
        int iMin;
        int i4;
        int i5 = this.mColumnWidth;
        int i6 = this.mHorizontalSpacing;
        boolean zIsLayoutRtl = isLayoutRtl();
        boolean z3 = false;
        if (zIsLayoutRtl) {
            width = ((getWidth() - this.mListPadding.right) - i5) - (this.mStretchMode == 3 ? i6 : 0);
        } else {
            width = this.mListPadding.left + (this.mStretchMode == 3 ? i6 : 0);
        }
        if (this.mStackFromBottom) {
            int i7 = i2 + 1;
            int iMax = Math.max(0, (i2 - this.mNumColumns) + 1);
            int i8 = i7 - iMax;
            int i9 = this.mNumColumns;
            if (i8 < i9) {
                width += (zIsLayoutRtl ? -1 : 1) * (i5 + i6) * (i9 - i8);
            }
            iMin = i7;
            i4 = iMax;
        } else {
            i4 = i2;
            iMin = Math.min(i2 + this.mNumColumns, this.mItemCount);
        }
        boolean zShouldShowSelector = shouldShowSelector();
        boolean z4 = touchModeDrawsInPressedState();
        int i10 = this.mSelectedPosition;
        int i11 = zIsLayoutRtl ? -1 : 1;
        View viewMakeAndAddView = null;
        View view = null;
        int i12 = width;
        int i13 = i4;
        while (i13 < iMin) {
            boolean z5 = i13 == i10 ? true : z3;
            int i14 = i13;
            int i15 = i10;
            viewMakeAndAddView = makeAndAddView(i13, i3, z2, i12, z5, z2 ? -1 : i13 - i4);
            int i16 = (i11 * i5) + i12;
            i12 = i14 < iMin + (-1) ? (i11 * i6) + i16 : i16;
            if (z5 && (zShouldShowSelector || z4)) {
                view = viewMakeAndAddView;
            }
            i13 = i14 + 1;
            i10 = i15;
            z3 = false;
        }
        this.mReferenceView = viewMakeAndAddView;
        if (view != null) {
            this.mReferenceViewInSelectedRow = viewMakeAndAddView;
        }
        return view;
    }

    private View moveSelection(int i2, int i3, int i4) {
        int i5;
        int iMax;
        int i6;
        View viewMakeRow;
        View view;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i7 = this.mSelectedPosition;
        int i8 = this.mNumColumns;
        int i9 = this.mVerticalSpacing;
        if (this.mStackFromBottom) {
            int i10 = this.mItemCount;
            int i11 = (i10 - 1) - i7;
            i5 = (i10 - 1) - (i11 - (i11 % i8));
            int iMax2 = Math.max(0, (i5 - i8) + 1);
            int i12 = this.mItemCount;
            int i13 = (i12 - 1) - (i7 - i2);
            iMax = Math.max(0, (((i12 - 1) - (i13 - (i13 % i8))) - i8) + 1);
            i6 = iMax2;
        } else {
            int i14 = i7 - i2;
            iMax = i14 - (i14 % i8);
            i6 = i7 - (i7 % i8);
            i5 = -1;
        }
        int i15 = i6 - iMax;
        int topSelectionPixel = getTopSelectionPixel(i3, verticalFadingEdgeLength, i6);
        int bottomSelectionPixel = getBottomSelectionPixel(i4, verticalFadingEdgeLength, i8, i6);
        this.mFirstPosition = i6;
        if (i15 > 0) {
            View view2 = this.mReferenceViewInSelectedRow;
            viewMakeRow = makeRow(this.mStackFromBottom ? i5 : i6, (view2 != null ? view2.getBottom() : 0) + i9, true);
            view = this.mReferenceView;
            adjustForBottomFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        } else if (i15 < 0) {
            View view3 = this.mReferenceViewInSelectedRow;
            viewMakeRow = makeRow(this.mStackFromBottom ? i5 : i6, (view3 == null ? 0 : view3.getTop()) - i9, false);
            view = this.mReferenceView;
            adjustForTopFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        } else {
            View view4 = this.mReferenceViewInSelectedRow;
            viewMakeRow = makeRow(this.mStackFromBottom ? i5 : i6, view4 != null ? view4.getTop() : 0, true);
            view = this.mReferenceView;
        }
        if (this.mStackFromBottom) {
            fillDown(i5 + i8, view.getBottom() + i9);
            adjustViewsUpOrDown();
            fillUp(i6 - 1, view.getTop() - i9);
        } else {
            fillUp(i6 - i8, view.getTop() - i9);
            adjustViewsUpOrDown();
            fillDown(i6 + i8, view.getBottom() + i9);
        }
        return viewMakeRow;
    }

    private void pinToBottom(int i2) {
        int bottom;
        int childCount = getChildCount();
        if (this.mFirstPosition + childCount != this.mItemCount || (bottom = i2 - getChildAt(childCount - 1).getBottom()) <= 0) {
            return;
        }
        offsetChildrenTopAndBottom(bottom);
    }

    private void pinToTop(int i2) {
        int top;
        if (this.mFirstPosition != 0 || (top = i2 - getChildAt(0).getTop()) >= 0) {
            return;
        }
        offsetChildrenTopAndBottom(top);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupChild(View view, int i2, int i3, boolean z2, int i4, boolean z3, boolean z4, int i5) {
        SparseBooleanArray sparseBooleanArray;
        int iB = i4;
        Trace.traceBegin(8L, "setupGridItem");
        boolean z5 = z3 && shouldShowSelector();
        boolean z6 = z5 != view.isSelected();
        int i6 = this.mTouchMode;
        boolean z7 = i6 > 0 && i6 < 3 && this.mMotionPosition == i2;
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
            if (z5) {
                requestFocus();
            }
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
        if (!z4 || layoutParams.forceAdd) {
            layoutParams.forceAdd = false;
            addViewInLayout(view, i5, layoutParams, true);
        } else {
            attachViewToParent(view, i5, layoutParams);
            if (!z4 || ((AbsListView.LayoutParams) view.getLayoutParams()).scrappedFromPosition != i2) {
                view.jumpDrawablesToCurrentState();
            }
        }
        if (z9) {
            view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(this.mColumnWidth, 1073741824), 0, layoutParams.width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
        } else {
            cleanupLayoutState(view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i7 = z2 ? i3 : i3 - measuredHeight;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection()) & 7;
        if (absoluteGravity == 1) {
            iB = m.b(this.mColumnWidth, measuredWidth, 2, iB);
        } else if (absoluteGravity == 5) {
            iB = (iB + this.mColumnWidth) - measuredWidth;
        }
        if (z9) {
            view.layout(iB, i7, measuredWidth + iB, measuredHeight + i7);
        } else {
            view.offsetLeftAndRight(iB - view.getLeft());
            view.offsetTopAndBottom(i7 - view.getTop());
        }
        if (this.mCachingStarted && !view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        Trace.traceEnd(8L);
    }

    public boolean arrowScroll(int i2) throws Throwable {
        int iMin;
        int iMax;
        boolean z2;
        int i3 = this.mSelectedPosition;
        int i4 = this.mNumColumns;
        boolean z3 = true;
        if (this.mStackFromBottom) {
            int i5 = this.mItemCount;
            iMin = (i5 - 1) - ((((i5 - 1) - i3) / i4) * i4);
            iMax = Math.max(0, (iMin - i4) + 1);
        } else {
            iMax = (i3 / i4) * i4;
            iMin = Math.min((iMax + i4) - 1, this.mItemCount - 1);
        }
        if (i2 != 33) {
            if (i2 == 130) {
                int i6 = this.mItemCount;
                if (iMin < i6 - 1) {
                    ((AbsListView) this).mLayoutMode = 6;
                    setSelectionInt(Math.min(i4 + i3, i6 - 1));
                    z2 = true;
                }
            }
            z2 = false;
        } else if (iMax > 0) {
            ((AbsListView) this).mLayoutMode = 6;
            setSelectionInt(Math.max(0, i3 - i4));
            z2 = true;
        } else {
            z2 = false;
        }
        boolean zIsLayoutRtl = isLayoutRtl();
        if (i3 > iMax && ((i2 == 17 && !zIsLayoutRtl) || (i2 == 66 && zIsLayoutRtl))) {
            ((AbsListView) this).mLayoutMode = 6;
            setSelectionInt(Math.max(0, i3 - 1));
        } else if (i3 >= iMin || (!(i2 == 17 && zIsLayoutRtl) && (i2 != 66 || zIsLayoutRtl))) {
            z3 = z2;
        } else {
            ((AbsListView) this).mLayoutMode = 6;
            setSelectionInt(Math.min(i3 + 1, this.mItemCount - 1));
        }
        if (z3) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
            invokeOnItemScrollListener();
        }
        if (z3) {
            awakenScrollBars();
        }
        return z3;
    }

    @Override // android.view.ViewGroup
    public void attachLayoutAnimationParameters(View view, ViewGroup.LayoutParams layoutParams, int i2, int i3) {
        GridLayoutAnimationController.AnimationParameters animationParameters = (GridLayoutAnimationController.AnimationParameters) layoutParams.layoutAnimationParameters;
        if (animationParameters == null) {
            animationParameters = new GridLayoutAnimationController.AnimationParameters();
            layoutParams.layoutAnimationParameters = animationParameters;
        }
        animationParameters.count = i3;
        animationParameters.index = i2;
        int i4 = this.mNumColumns;
        animationParameters.columnsCount = i4;
        int i5 = i3 / i4;
        animationParameters.rowsCount = i5;
        if (!this.mStackFromBottom) {
            animationParameters.column = i2 % i4;
            animationParameters.row = i2 / i4;
        } else {
            int i6 = (i3 - 1) - i2;
            animationParameters.column = (i4 - 1) - (i6 % i4);
            animationParameters.row = (i5 - 1) - (i6 / i4);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public int computeVerticalScrollExtent() {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return 0;
        }
        int i2 = this.mNumColumns;
        int iZ = (((childCount + i2) - 1) / i2) * 100;
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        int height = childAt.getHeight();
        if (height > 0) {
            iZ = m.z(top, 100, height, iZ);
        }
        View childAt2 = getChildAt(childCount - 1);
        int bottom = childAt2.getBottom();
        int height2 = childAt2.getHeight();
        return height2 > 0 ? iZ - (((bottom - getHeight()) * 100) / height2) : iZ;
    }

    @Override // android.widget.AbsListView, android.view.View
    public int computeVerticalScrollOffset() {
        if (this.mFirstPosition >= 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int top = childAt.getTop();
            int height = childAt.getHeight();
            if (height > 0) {
                int i2 = this.mNumColumns;
                int i3 = ((this.mItemCount + i2) - 1) / i2;
                return Math.max(((((this.mFirstPosition + (isStackFromBottom() ? (i3 * i2) - this.mItemCount : 0)) / i2) * 100) - ((top * 100) / height)) + ((int) ((this.mScrollY / getHeight()) * i3 * 100.0f)), 0);
            }
        }
        return 0;
    }

    @Override // android.widget.AbsListView, android.view.View
    public int computeVerticalScrollRange() {
        int i2 = this.mNumColumns;
        int i3 = ((this.mItemCount + i2) - 1) / i2;
        int iMax = Math.max(i3 * 100, 0);
        int i4 = this.mScrollY;
        return i4 != 0 ? iMax + Math.abs((int) ((i4 / getHeight()) * i3 * 100.0f)) : iMax;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("numColumns", getNumColumns());
    }

    @Override // android.widget.AbsListView
    public void fillGap(boolean z2) {
        int i2 = this.mNumColumns;
        int i3 = this.mVerticalSpacing;
        int childCount = getChildCount();
        if (!z2) {
            int top = childCount > 0 ? getChildAt(0).getTop() - i3 : getHeight() - ((this.mGroupFlags & 34) == 34 ? getListPaddingBottom() : 0);
            int i4 = this.mFirstPosition;
            fillUp(!this.mStackFromBottom ? i4 - i2 : i4 - 1, top);
            correctTooLow(i2, i3, getChildCount());
            return;
        }
        int listPaddingTop = (this.mGroupFlags & 34) == 34 ? getListPaddingTop() : 0;
        if (childCount > 0) {
            listPaddingTop = getChildAt(childCount - 1).getBottom() + i3;
        }
        int i5 = this.mFirstPosition + childCount;
        if (this.mStackFromBottom) {
            i5 += i2 - 1;
        }
        fillDown(i5, listPaddingTop);
        correctTooHigh(i2, i3, getChildCount());
    }

    @Override // android.widget.AbsListView
    public int findMotionRow(int i2) {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return -1;
        }
        int i3 = this.mNumColumns;
        if (this.mStackFromBottom) {
            for (int i4 = childCount - 1; i4 >= 0; i4 -= i3) {
                if (i2 >= getChildAt(i4).getTop()) {
                    return this.mFirstPosition + i4;
                }
            }
            return -1;
        }
        for (int i5 = 0; i5 < childCount; i5 += i3) {
            if (i2 <= getChildAt(i5).getBottom()) {
                return this.mFirstPosition + i5;
            }
        }
        return -1;
    }

    public boolean fullScroll(int i2) throws Throwable {
        boolean z2 = true;
        if (i2 == 33) {
            ((AbsListView) this).mLayoutMode = 2;
            setSelectionInt(0);
            invokeOnItemScrollListener();
        } else if (i2 == 130) {
            ((AbsListView) this).mLayoutMode = 2;
            setSelectionInt(this.mItemCount - 1);
            invokeOnItemScrollListener();
        } else {
            z2 = false;
        }
        if (z2) {
            awakenScrollBars();
        }
        return z2;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return GridView.class.getName();
    }

    public int getColumnWidth() {
        return this.mColumnWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    public int getHorizontalSpacing() {
        return this.mHorizontalSpacing;
    }

    @ViewDebug.ExportedProperty
    public int getNumColumns() {
        return this.mNumColumns;
    }

    public int getRequestedColumnWidth() {
        return this.mRequestedColumnWidth;
    }

    public int getRequestedHorizontalSpacing() {
        return this.mRequestedHorizontalSpacing;
    }

    public int getStretchMode() {
        return this.mStretchMode;
    }

    public int getVerticalSpacing() {
        return this.mVerticalSpacing;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0031. Please report as an issue. */
    @Override // android.widget.AbsListView
    public void layoutChildren() throws Throwable {
        boolean z2;
        int i2;
        View childAt;
        View childAt2;
        View childAt3;
        int positionForView;
        AccessibilityNodeInfo accessibilityFocusedVirtualView;
        View accessibilityFocusedHost;
        int i3;
        View viewFillFromTop;
        View childAt4;
        View accessibilityFocusedChild;
        boolean z3 = this.mBlockLayoutRequests;
        if (!z3) {
            this.mBlockLayoutRequests = true;
        }
        try {
            super.layoutChildren();
            invalidate();
            if (this.mAdapter == null) {
                resetList();
                invokeOnItemScrollListener();
                if (z3) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            Rect rect = this.mListPadding;
            int top = rect.top;
            int i4 = (this.mBottom - this.mTop) - rect.bottom;
            int childCount = getChildCount();
            switch (((AbsListView) this).mLayoutMode) {
                case 1:
                case 3:
                case 4:
                case 5:
                    i2 = 0;
                    childAt = null;
                    childAt2 = null;
                    childAt3 = null;
                    break;
                case 2:
                    int i5 = this.mNextSelectedPosition - this.mFirstPosition;
                    if (i5 >= 0 && i5 < childCount) {
                        childAt = getChildAt(i5);
                        childAt2 = null;
                        childAt3 = null;
                        i2 = 0;
                    } else {
                        i2 = 0;
                        childAt = null;
                        childAt2 = null;
                        childAt3 = null;
                    }
                    break;
                case 6:
                    int i6 = this.mNextSelectedPosition;
                    i2 = i6 >= 0 ? i6 - this.mSelectedPosition : 0;
                    childAt = null;
                    childAt2 = null;
                    childAt3 = null;
                    break;
                default:
                    int i7 = this.mSelectedPosition - this.mFirstPosition;
                    childAt2 = (i7 < 0 || i7 >= childCount) ? null : getChildAt(i7);
                    childAt3 = getChildAt(0);
                    childAt = null;
                    i2 = 0;
                    break;
            }
            boolean z4 = this.mDataChanged;
            if (z4) {
                handleDataChanged();
            }
            if (this.mItemCount == 0) {
                resetList();
                invokeOnItemScrollListener();
                if (z3) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            setSelectedPositionInt(this.mNextSelectedPosition);
            ViewRootImpl viewRootImpl = getViewRootImpl();
            if (viewRootImpl == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null || (accessibilityFocusedChild = getAccessibilityFocusedChild(accessibilityFocusedHost)) == null) {
                positionForView = -1;
                accessibilityFocusedVirtualView = null;
                accessibilityFocusedHost = null;
            } else {
                if (!z4 || accessibilityFocusedChild.hasTransientState() || this.mAdapterHasStableIds) {
                    accessibilityFocusedVirtualView = viewRootImpl.getAccessibilityFocusedVirtualView();
                } else {
                    accessibilityFocusedVirtualView = null;
                    accessibilityFocusedHost = null;
                }
                positionForView = getPositionForView(accessibilityFocusedChild);
            }
            int i8 = this.mFirstPosition;
            AbsListView.RecycleBin recycleBin = this.mRecycler;
            try {
                if (z4) {
                    int i9 = 0;
                    while (i9 < childCount) {
                        boolean z5 = z3;
                        recycleBin.addScrapView(getChildAt(i9), i8 + i9);
                        i9++;
                        z3 = z5;
                        positionForView = positionForView;
                    }
                    z2 = z3;
                    i3 = positionForView;
                } else {
                    z2 = z3;
                    i3 = positionForView;
                    recycleBin.fillActiveViews(childCount, i8);
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
                        viewFillFromTop = childAt == null ? fillSelection(top, i4) : fillFromSelection(childAt.getTop(), top, i4);
                        break;
                    case 3:
                        viewFillFromTop = fillUp(this.mItemCount - 1, i4);
                        adjustViewsUpOrDown();
                        break;
                    case 4:
                        viewFillFromTop = fillSpecific(this.mSelectedPosition, this.mSpecificTop);
                        break;
                    case 5:
                        viewFillFromTop = fillSpecific(this.mSyncPosition, this.mSpecificTop);
                        break;
                    case 6:
                        viewFillFromTop = moveSelection(i2, top, i4);
                        break;
                    default:
                        if (childCount != 0) {
                            int i10 = this.mSelectedPosition;
                            if (i10 >= 0 && i10 < this.mItemCount) {
                                if (childAt2 != null) {
                                    top = childAt2.getTop();
                                }
                                viewFillFromTop = fillSpecific(i10, top);
                            } else {
                                int i11 = this.mFirstPosition;
                                if (i11 >= this.mItemCount) {
                                    viewFillFromTop = fillSpecific(0, top);
                                } else {
                                    if (childAt3 != null) {
                                        top = childAt3.getTop();
                                    }
                                    viewFillFromTop = fillSpecific(i11, top);
                                }
                            }
                        } else if (!this.mStackFromBottom) {
                            setSelectedPositionInt((this.mAdapter == null || isInTouchMode()) ? -1 : 0);
                            viewFillFromTop = fillFromTop(top);
                        } else {
                            int i12 = this.mItemCount - 1;
                            setSelectedPositionInt((this.mAdapter == null || isInTouchMode()) ? -1 : i12);
                            viewFillFromTop = fillFromBottom(i12, i4);
                        }
                        break;
                }
                recycleBin.scrapActiveViews();
                if (viewFillFromTop != null) {
                    positionSelector(-1, viewFillFromTop);
                    this.mSelectedTop = viewFillFromTop.getTop();
                } else {
                    int i13 = this.mTouchMode;
                    if (i13 > 0 && i13 < 3) {
                        View childAt5 = getChildAt(this.mMotionPosition - this.mFirstPosition);
                        if (childAt5 != null) {
                            positionSelector(this.mMotionPosition, childAt5);
                        }
                    } else if (this.mSelectedPosition != -1) {
                        View childAt6 = getChildAt(this.mSelectorPosition - this.mFirstPosition);
                        if (childAt6 != null) {
                            positionSelector(this.mSelectorPosition, childAt6);
                        }
                    } else {
                        this.mSelectedTop = 0;
                        this.mSelectorRect.setEmpty();
                    }
                }
                if (viewRootImpl != null && viewRootImpl.getAccessibilityFocusedHost() == null) {
                    if (accessibilityFocusedHost == null || !accessibilityFocusedHost.isAttachedToWindow()) {
                        int i14 = i3;
                        if (i14 != -1 && (childAt4 = getChildAt(MathUtils.constrain(i14 - this.mFirstPosition, 0, getChildCount() - 1))) != null) {
                            childAt4.requestAccessibilityFocus();
                        }
                    } else {
                        AccessibilityNodeProvider accessibilityNodeProvider = accessibilityFocusedHost.getAccessibilityNodeProvider();
                        if (accessibilityFocusedVirtualView == null || accessibilityNodeProvider == null) {
                            accessibilityFocusedHost.requestAccessibilityFocus();
                        } else {
                            accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityFocusedVirtualView.getSourceNodeId()), 64, null);
                        }
                    }
                }
                ((AbsListView) this).mLayoutMode = 0;
                this.mDataChanged = false;
                Runnable runnable = this.mPositionScrollAfterLayout;
                if (runnable != null) {
                    post(runnable);
                    this.mPositionScrollAfterLayout = null;
                }
                this.mNeedSync = false;
                setNextSelectedPositionInt(this.mSelectedPosition);
                updateScrollIndicators();
                if (this.mItemCount > 0) {
                    checkSelectionChanged();
                }
                invokeOnItemScrollListener();
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
            } catch (Throwable th) {
                th = th;
                if (!z2) {
                    this.mBlockLayoutRequests = false;
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z2 = z3;
        }
    }

    @Override // android.widget.AdapterView
    public int lookForSelectablePosition(int i2, boolean z2) {
        if (this.mAdapter == null || isInTouchMode() || i2 < 0 || i2 >= this.mItemCount) {
            return -1;
        }
        return i2;
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        int i3 = -1;
        if (z2 && rect != null) {
            rect.offset(this.mScrollX, this.mScrollY);
            Rect rect2 = this.mTempRect;
            int childCount = getChildCount();
            int i4 = Integer.MAX_VALUE;
            for (int i5 = 0; i5 < childCount; i5++) {
                if (isCandidateSelection(i5, i2)) {
                    View childAt = getChildAt(i5);
                    childAt.getDrawingRect(rect2);
                    offsetDescendantRectToMyCoords(childAt, rect2);
                    int distance = AbsListView.getDistance(rect, rect2, i2);
                    if (distance < i4) {
                        i3 = i5;
                        i4 = distance;
                    }
                }
            }
        }
        if (i3 >= 0) {
            setSelection(i3 + this.mFirstPosition);
        } else {
            requestLayout();
        }
    }

    @Override // android.widget.AbsListView
    public void onInitializeAccessibilityNodeInfoForItem(View view, int i2, AccessibilityNodeInfo accessibilityNodeInfo) {
        int i3;
        int i4;
        super.onInitializeAccessibilityNodeInfoForItem(view, i2, accessibilityNodeInfo);
        int count = getCount();
        int numColumns = getNumColumns();
        int i5 = count / numColumns;
        if (this.mStackFromBottom) {
            int i6 = (count - 1) - i2;
            i3 = (i5 - 1) - (i6 / numColumns);
            i4 = (numColumns - 1) - (i6 % numColumns);
        } else {
            i4 = i2 % numColumns;
            i3 = i2 / numColumns;
        }
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i3, 1, i4, 1, layoutParams != null && layoutParams.viewType == -2, isItemChecked(i2)));
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        int numColumns = getNumColumns();
        int count = getCount() / numColumns;
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(count, numColumns, false, getSelectionModeForAccessibility()));
        if (numColumns > 0 || count > 0) {
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
        int measuredHeight;
        int i4;
        int i5;
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == 0) {
            int i6 = this.mColumnWidth;
            if (i6 > 0) {
                Rect rect = this.mListPadding;
                i5 = i6 + rect.left + rect.right;
            } else {
                Rect rect2 = this.mListPadding;
                i5 = rect2.right + rect2.left;
            }
            size = i5 + getVerticalScrollbarWidth();
        }
        Rect rect3 = this.mListPadding;
        boolean zDetermineColumns = determineColumns((size - rect3.left) - rect3.right);
        ListAdapter listAdapter = this.mAdapter;
        int i7 = 0;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        this.mItemCount = count;
        if (count > 0) {
            View viewObtainView = obtainView(0, this.mIsScrap);
            AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) viewObtainView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
                viewObtainView.setLayoutParams(layoutParams);
            }
            layoutParams.viewType = this.mAdapter.getItemViewType(0);
            layoutParams.isEnabled = this.mAdapter.isEnabled(0);
            layoutParams.forceAdd = true;
            viewObtainView.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(this.mColumnWidth, 1073741824), 0, layoutParams.width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i3), 0), 0, layoutParams.height));
            measuredHeight = viewObtainView.getMeasuredHeight();
            View.combineMeasuredStates(0, viewObtainView.getMeasuredState());
            if (this.mRecycler.shouldRecycleViewType(layoutParams.viewType)) {
                this.mRecycler.addScrapView(viewObtainView, -1);
            }
        } else {
            measuredHeight = 0;
        }
        if (mode2 == 0) {
            Rect rect4 = this.mListPadding;
            size2 = (getVerticalFadingEdgeLength() * 2) + rect4.top + rect4.bottom + measuredHeight;
        }
        if (mode2 == Integer.MIN_VALUE) {
            Rect rect5 = this.mListPadding;
            int i8 = rect5.top + rect5.bottom;
            int i9 = this.mNumColumns;
            do {
                if (i7 >= count) {
                    size2 = i8;
                    break;
                }
                i8 += measuredHeight;
                i7 += i9;
                if (i7 < count) {
                    i8 += this.mVerticalSpacing;
                }
            } while (i8 < size2);
        }
        if (mode == Integer.MIN_VALUE && (i4 = this.mRequestedNumColumns) != -1) {
            int i10 = ((i4 - 1) * this.mHorizontalSpacing) + (this.mColumnWidth * i4);
            Rect rect6 = this.mListPadding;
            if (i10 + rect6.left + rect6.right > size || zDetermineColumns) {
                size |= 16777216;
            }
        }
        setMeasuredDimension(size, size2);
        this.mWidthMeasureSpec = i2;
    }

    public boolean pageScroll(int i2) throws Throwable {
        int iMin;
        if (i2 == 33) {
            iMin = Math.max(0, this.mSelectedPosition - getChildCount());
        } else if (i2 == 130) {
            iMin = Math.min(this.mItemCount - 1, getChildCount() + this.mSelectedPosition);
        } else {
            iMin = -1;
        }
        if (iMin < 0) {
            return false;
        }
        setSelectionInt(iMin);
        invokeOnItemScrollListener();
        awakenScrollBars();
        return true;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i2, bundle)) {
            return true;
        }
        if (i2 != 16908343) {
            return false;
        }
        int numColumns = getNumColumns();
        int i3 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
        int iMin = Math.min(numColumns * i3, getCount() - 1);
        if (i3 < 0) {
            return false;
        }
        smoothScrollToPosition(iMin);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:21:0x004c  */
    public boolean sequenceScroll(int i2) throws Throwable {
        int iMax;
        int iMin;
        boolean z2;
        int i3 = this.mSelectedPosition;
        int i4 = this.mNumColumns;
        int i5 = this.mItemCount;
        boolean z3 = false;
        if (this.mStackFromBottom) {
            int i6 = i5 - 1;
            int i7 = i6 - (((i6 - i3) / i4) * i4);
            iMax = Math.max(0, (i7 - i4) + 1);
            iMin = i7;
        } else {
            iMax = (i3 / i4) * i4;
            iMin = Math.min((i4 + iMax) - 1, i5 - 1);
        }
        if (i2 != 1) {
            if (i2 == 2 && i3 < i5 - 1) {
                ((AbsListView) this).mLayoutMode = 6;
                setSelectionInt(i3 + 1);
                if (i3 == iMin) {
                    z3 = true;
                }
                z2 = z3;
                z3 = true;
            } else {
                z2 = false;
            }
        } else if (i3 > 0) {
            ((AbsListView) this).mLayoutMode = 6;
            setSelectionInt(i3 - 1);
            if (i3 == iMax) {
                z3 = true;
            }
            z2 = z3;
            z3 = true;
        } else {
            z2 = false;
        }
        if (z3) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
            invokeOnItemScrollListener();
        }
        if (z2) {
            awakenScrollBars();
        }
        return z3;
    }

    public void setColumnWidth(int i2) {
        if (i2 != this.mRequestedColumnWidth) {
            this.mRequestedColumnWidth = i2;
            requestLayoutIfNecessary();
        }
    }

    public void setGravity(int i2) {
        if (this.mGravity != i2) {
            this.mGravity = i2;
            requestLayoutIfNecessary();
        }
    }

    public void setHorizontalSpacing(int i2) {
        if (i2 != this.mRequestedHorizontalSpacing) {
            this.mRequestedHorizontalSpacing = i2;
            requestLayoutIfNecessary();
        }
    }

    public void setNumColumns(int i2) {
        if (i2 != this.mRequestedNumColumns) {
            this.mRequestedNumColumns = i2;
            requestLayoutIfNecessary();
        }
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod(asyncImpl = "setRemoteViewsAdapterAsync")
    public void setRemoteViewsAdapter(Intent intent) {
        super.setRemoteViewsAdapter(intent);
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i2) {
        if (isInTouchMode()) {
            this.mResurrectToPosition = i2;
        } else {
            setNextSelectedPositionInt(i2);
        }
        ((AbsListView) this).mLayoutMode = 2;
        AbsListView.AbsPositionScroller absPositionScroller = this.mPositionScroller;
        if (absPositionScroller != null) {
            absPositionScroller.stop();
        }
        requestLayout();
    }

    @Override // android.widget.AbsListView
    public void setSelectionInt(int i2) throws Throwable {
        int i3 = this.mNextSelectedPosition;
        AbsListView.AbsPositionScroller absPositionScroller = this.mPositionScroller;
        if (absPositionScroller != null) {
            absPositionScroller.stop();
        }
        setNextSelectedPositionInt(i2);
        layoutChildren();
        boolean z2 = this.mStackFromBottom;
        int i4 = z2 ? (this.mItemCount - 1) - this.mNextSelectedPosition : this.mNextSelectedPosition;
        if (z2) {
            i3 = (this.mItemCount - 1) - i3;
        }
        int i5 = this.mNumColumns;
        if (i4 / i5 != i3 / i5) {
            awakenScrollBars();
        }
    }

    public void setStretchMode(int i2) {
        if (i2 != this.mStretchMode) {
            this.mStretchMode = i2;
            requestLayoutIfNecessary();
        }
    }

    public void setVerticalSpacing(int i2) {
        if (i2 != this.mVerticalSpacing) {
            this.mVerticalSpacing = i2;
            requestLayoutIfNecessary();
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

    public GridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842865);
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
        this.mAdapter = listAdapter;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        super.setAdapter(listAdapter);
        ListAdapter listAdapter3 = this.mAdapter;
        if (listAdapter3 != null) {
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = listAdapter3.getCount();
            this.mDataChanged = true;
            checkFocus();
            AbsListView.AdapterDataSetObserver adapterDataSetObserver2 = new AbsListView.AdapterDataSetObserver();
            this.mDataSetObserver = adapterDataSetObserver2;
            this.mAdapter.registerDataSetObserver(adapterDataSetObserver2);
            this.mRecycler.setViewTypeCount(this.mAdapter.getViewTypeCount());
            int iLookForSelectablePosition = this.mStackFromBottom ? lookForSelectablePosition(this.mItemCount - 1, false) : lookForSelectablePosition(0, true);
            setSelectedPositionInt(iLookForSelectablePosition);
            setNextSelectedPositionInt(iLookForSelectablePosition);
            checkSelectionChanged();
        } else {
            checkFocus();
            checkSelectionChanged();
        }
        requestLayout();
    }

    public GridView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public GridView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mNumColumns = -1;
        this.mHorizontalSpacing = 0;
        this.mVerticalSpacing = 0;
        this.mStretchMode = 2;
        this.mReferenceView = null;
        this.mReferenceViewInSelectedRow = null;
        this.mGravity = 8388611;
        this.mTempRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GridView, i2, i3);
        setHorizontalSpacing(typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0));
        setVerticalSpacing(typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0));
        int i4 = typedArrayObtainStyledAttributes.getInt(3, 2);
        if (i4 >= 0) {
            setStretchMode(i4);
        }
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(4, -1);
        if (dimensionPixelOffset > 0) {
            setColumnWidth(dimensionPixelOffset);
        }
        setNumColumns(typedArrayObtainStyledAttributes.getInt(5, 1));
        int i5 = typedArrayObtainStyledAttributes.getInt(0, -1);
        if (i5 >= 0) {
            setGravity(i5);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
