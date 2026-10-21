package android.view;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class TouchDelegate {
    public static final int ABOVE = 1;
    public static final int BELOW = 2;
    public static final int TO_LEFT = 4;
    public static final int TO_RIGHT = 8;
    private Rect mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private int mSlop;
    private Rect mSlopBounds;

    public TouchDelegate(Rect rect, View view) {
        this.mBounds = rect;
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.mSlopBounds = rect2;
        int i2 = this.mSlop;
        rect2.inset(-i2, -i2);
        this.mDelegateView = view;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003c  */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains;
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z3 = this.mDelegateTargeted;
                zContains = z3 ? this.mSlopBounds.contains(x2, y2) : true;
                z2 = z3;
            } else if (action != 3) {
                zContains = true;
                z2 = false;
            } else {
                boolean z4 = this.mDelegateTargeted;
                this.mDelegateTargeted = false;
                z2 = z4;
                zContains = true;
            }
        } else if (this.mBounds.contains(x2, y2)) {
            this.mDelegateTargeted = true;
            zContains = true;
        } else {
            zContains = true;
            z2 = false;
        }
        if (!z2) {
            return false;
        }
        View view = this.mDelegateView;
        if (zContains) {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        } else {
            float f2 = -(this.mSlop * 2);
            motionEvent.setLocation(f2, f2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
