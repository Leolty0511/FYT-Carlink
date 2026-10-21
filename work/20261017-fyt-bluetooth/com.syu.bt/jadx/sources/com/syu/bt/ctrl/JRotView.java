package com.syu.bt.ctrl;

import android.graphics.Canvas;
import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.ipc.module.main.Main;

/* JADX INFO: loaded from: classes.dex */
public class JRotView extends View {
    private float mAngle;
    public long mDelay;
    private boolean mRun;
    public Runnable mRunnableInvalidate;
    public float mSpeed;
    private float mStep;

    public JRotView(JPage page) {
        super(page.ui.mContext);
        this.mSpeed = 15.0f;
        this.mRunnableInvalidate = new Runnable() { // from class: com.syu.bt.ctrl.JRotView.1
            @Override // java.lang.Runnable
            public void run() {
                JRotView.this.invalidate();
            }
        };
        if (Main.mConf_PlatForm == 5 || Main.mConf_PlatForm == 6) {
            this.mSpeed = 15.0f;
            this.mDelay = 100L;
        }
    }

    public void setRun(boolean flag) {
        if (this.mRun != flag) {
            this.mRun = flag;
            if (flag) {
                invalidate();
            }
        }
    }

    public void resetStep() {
        this.mStep = 0.0f;
    }

    public void setSpeed(float speed) {
        this.mSpeed = speed;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.mAngle, getWidth() >> 1, getHeight() >> 1);
        super.draw(canvas);
        canvas.restore();
        if (this.mRun) {
            if (this.mStep < this.mSpeed) {
                this.mStep += 0.5f;
            }
        } else if (this.mStep > 0.0f) {
            this.mStep -= 0.5f;
            if (Math.abs(this.mStep) <= 0.05d) {
                this.mStep = 0.0f;
            }
        }
        if (this.mStep != 0.0f) {
            this.mAngle += this.mStep;
            Main.postRunnable_Ui(true, this.mRunnableInvalidate, this.mDelay);
        }
    }
}
