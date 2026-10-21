package android.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.android.internal.widget.AutoScrollHelper;

/* JADX INFO: loaded from: classes2.dex */
public class DropDownListView extends ListView {
    private boolean mDrawsInPressedState;
    private boolean mHijackFocus;
    private boolean mListSelectionHidden;
    private ResolveHoverRunnable mResolveHoverRunnable;
    private AutoScrollHelper.AbsListViewAutoScroller mScrollHelper;

    public class ResolveHoverRunnable implements Runnable {
        private ResolveHoverRunnable() {
        }

        public void cancel() {
            DropDownListView.this.mResolveHoverRunnable = null;
            DropDownListView.this.removeCallbacks(this);
        }

        public void post() {
            DropDownListView.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView.this.mResolveHoverRunnable = null;
            DropDownListView.this.drawableStateChanged();
        }
    }

    public DropDownListView(Context context, boolean z2) {
        this(context, z2, 16842861);
    }

    private void clearPressedItem() {
        this.mDrawsInPressedState = false;
        setPressed(false);
        updateSelectorState();
        View childAt = getChildAt(this.mMotionPosition - this.mFirstPosition);
        if (childAt != null) {
            childAt.setPressed(false);
        }
    }

    private void setPressedItem(View view, int i2, float f2, float f3) throws Throwable {
        this.mDrawsInPressedState = true;
        drawableHotspotChanged(f2, f3);
        if (!isPressed()) {
            setPressed(true);
        }
        if (this.mDataChanged) {
            layoutChildren();
        }
        View childAt = getChildAt(this.mMotionPosition - this.mFirstPosition);
        if (childAt != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.mMotionPosition = i2;
        view.drawableHotspotChanged(f2 - view.getLeft(), f3 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        setSelectedPositionInt(i2);
        positionSelectorLikeTouch(i2, view, f2, f3);
        refreshDrawableState();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.mResolveHoverRunnable == null) {
            super.drawableStateChanged();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.mHijackFocus || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.mHijackFocus || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.mHijackFocus || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.mHijackFocus && this.mListSelectionHidden) || super.isInTouchMode();
    }

    @Override // android.widget.AbsListView
    public View obtainView(int i2, boolean[] zArr) {
        View viewObtainView = super.obtainView(i2, zArr);
        if (viewObtainView instanceof TextView) {
            ((TextView) viewObtainView).setHorizontallyScrolling(true);
        }
        return viewObtainView;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:29:0x0069  */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    public boolean onForwardedEvent(MotionEvent motionEvent, int i2) {
        boolean z2;
        boolean z3;
        AutoScrollHelper.AbsListViewAutoScroller absListViewAutoScroller;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            z2 = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z2 = true;
                    z3 = false;
                } else {
                    z3 = false;
                    z2 = false;
                }
                if (z2 || z3) {
                    clearPressedItem();
                }
                if (z2) {
                    if (this.mScrollHelper == null) {
                        this.mScrollHelper = new AutoScrollHelper.AbsListViewAutoScroller(this);
                    }
                    this.mScrollHelper.setEnabled(true);
                    this.mScrollHelper.onTouch(this, motionEvent);
                } else {
                    absListViewAutoScroller = this.mScrollHelper;
                    if (absListViewAutoScroller != null) {
                        absListViewAutoScroller.setEnabled(false);
                    }
                }
                return z2;
            }
            z2 = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i2);
        if (iFindPointerIndex < 0) {
            z3 = false;
            z2 = false;
        } else {
            int x2 = (int) motionEvent.getX(iFindPointerIndex);
            int y2 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x2, y2);
            if (iPointToPosition == -1) {
                z3 = true;
            } else {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                setPressedItem(childAt, iPointToPosition, x2, y2);
                if (actionMasked == 1) {
                    performItemClick(childAt, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z2 = true;
                z3 = false;
            }
        }
        if (z2) {
            clearPressedItem();
        } else {
            clearPressedItem();
        }
        if (z2) {
            if (this.mScrollHelper == null) {
                this.mScrollHelper = new AutoScrollHelper.AbsListViewAutoScroller(this);
            }
            this.mScrollHelper.setEnabled(true);
            this.mScrollHelper.onTouch(this, motionEvent);
        } else {
            absListViewAutoScroller = this.mScrollHelper;
            if (absListViewAutoScroller != null) {
                absListViewAutoScroller.setEnabled(false);
            }
        }
        return z2;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.mResolveHoverRunnable == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.mResolveHoverRunnable = resolveHoverRunnable;
            resolveHoverRunnable.post();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != this.mSelectedPosition) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    positionSelector(iPointToPosition, childAt);
                    setSelectedPositionInt(iPointToPosition);
                    setNextSelectedPositionInt(iPointToPosition);
                }
                updateSelectorState();
            }
        } else if (!super.shouldShowSelector()) {
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ResolveHoverRunnable resolveHoverRunnable = this.mResolveHoverRunnable;
        if (resolveHoverRunnable != null) {
            resolveHoverRunnable.cancel();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z2) {
        this.mListSelectionHidden = z2;
    }

    @Override // android.widget.AbsListView
    public boolean shouldShowSelector() {
        return isHovered() || super.shouldShowSelector();
    }

    @Override // android.widget.AbsListView
    public boolean touchModeDrawsInPressedState() {
        return this.mDrawsInPressedState || super.touchModeDrawsInPressedState();
    }

    public DropDownListView(Context context, boolean z2, int i2) {
        super(context, null, i2);
        this.mHijackFocus = z2;
        setCacheColorHint(0);
    }
}
