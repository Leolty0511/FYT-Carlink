package com.syu.bt.ctrl;

import android.graphics.Canvas;
import android.view.View;
import com.lsec.core.frame.ctrl.JPage;

/* JADX INFO: loaded from: classes.dex */
public class JPinBar extends View {
    private float mAngle;
    private float mAngleTarget;
    private long mDrawingTime;

    public JPinBar(JPage page) {
        super(page.ui.mContext);
        this.mAngle = 0.0f;
    }

    public void setRun(boolean flag) {
        if (flag) {
            if (this.mAngleTarget == 0.0f) {
                this.mAngleTarget = 15.0f;
                invalidate();
                return;
            }
            return;
        }
        if (this.mAngleTarget != 0.0f) {
            this.mAngleTarget = 0.0f;
            invalidate();
        }
    }

    public void skipAnim() {
        if (this.mAngle != this.mAngleTarget) {
            this.mAngle = this.mAngleTarget;
            invalidate();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.mAngle, (getWidth() * 253) / 300, (getHeight() * 28) / 179);
        super.draw(canvas);
        canvas.restore();
        if (this.mAngle != this.mAngleTarget) {
            long drawingTime = getDrawingTime();
            if (this.mDrawingTime == 0) {
                this.mDrawingTime = drawingTime - 17;
            }
            float distance = ((drawingTime - this.mDrawingTime) * 15.0f) / 200.0f;
            this.mDrawingTime = drawingTime;
            if (Math.abs(this.mAngle - this.mAngleTarget) < distance) {
                this.mAngle = this.mAngleTarget;
            } else if (this.mAngle > this.mAngleTarget) {
                this.mAngle -= distance;
            } else {
                this.mAngle += distance;
            }
            invalidate();
            return;
        }
        this.mDrawingTime = 0L;
    }
}
