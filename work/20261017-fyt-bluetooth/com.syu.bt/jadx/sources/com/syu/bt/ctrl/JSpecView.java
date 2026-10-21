package com.syu.bt.ctrl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.util.FuncUtils;
import com.syu.bt.App_Bt;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class JSpecView extends View {
    private float data;
    private int iStyle;
    private Bitmap mBitmap;
    private Canvas mCanvas;
    private Handler mHandler;
    private Rect mRect;
    private BarRenderer mRenderer;
    private Timer mTimer;
    private TimerTask readElec;

    public JSpecView(JPage page, float barwidth, int gap, int h1, int h2, MyUiItem item, int Cnt, int style) {
        super(page.ui.mContext);
        this.mBitmap = null;
        this.mCanvas = null;
        this.mRect = null;
        this.mRenderer = null;
        this.mTimer = null;
        this.readElec = null;
        this.iStyle = 0;
        this.mHandler = new Handler() { // from class: com.syu.bt.ctrl.JSpecView.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (msg.what == 0) {
                    JSpecView.this.invalidate();
                }
                super.handleMessage(msg);
            }
        };
        Drawable drawable = null;
        Drawable drawableBk = null;
        if (item.getStrDrawableExtra() != null) {
            drawable = page.getDrawableFromPath(item.getStrDrawableExtra()[0], page.mDrawables, null);
            if (item.getStrDrawableExtra().length > 1) {
                drawableBk = page.getDrawableFromPath(item.getStrDrawableExtra()[1], page.mDrawables, null);
            }
        }
        Bitmap bmp = drawable != null ? FuncUtils.getBitmapFromDrawable(drawable, (int) (page.ui.mScale * drawable.getIntrinsicWidth()), (int) (page.ui.mScale * drawable.getIntrinsicHeight())) : null;
        Bitmap bmpBk = drawableBk != null ? FuncUtils.getBitmapFromDrawable(drawableBk, (int) (page.ui.mScale * drawableBk.getIntrinsicWidth()), (int) (page.ui.mScale * drawableBk.getIntrinsicHeight())) : null;
        init(barwidth, gap, h1, h2, bmp, bmpBk, Cnt);
        this.iStyle = style;
    }

    private void init(float barwidth, int gap, int h1, int h2, Bitmap bmpBar, Bitmap bmpBarBk, int Cnt) {
        BarRenderer barRenderer = new BarRenderer(barwidth, gap, h1, h2, true, false, true, bmpBar, bmpBarBk, Cnt);
        setElecRenderer(barRenderer);
        enable();
    }

    public void enable() {
        if (this.mTimer == null) {
            this.mTimer = new Timer();
        }
        if (this.readElec == null) {
            this.readElec = new ElectricReader();
            this.mTimer.schedule(this.readElec, 10L, 100L);
        }
    }

    public void disEnable() {
        if (this.mTimer != null && this.readElec != null) {
            this.mTimer.cancel();
            this.readElec.cancel();
            this.readElec = null;
            this.mTimer = null;
        }
    }

    public void release() {
        disEnable();
    }

    public void setElecRenderer(BarRenderer renderer) {
        this.mRenderer = renderer;
    }

    class ElectricReader extends TimerTask {
        ElectricReader() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JSpecView.this.data = App_Bt.getInstance().mIpcObj.getElectricValue() / 36.0f;
            JSpecView.this.data -= (int) JSpecView.this.data;
            JSpecView.this.mHandler.sendEmptyMessage(0);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        if (w > 0 && h > 0) {
            super.onSizeChanged(w, h, oldw, oldh);
            this.mRect = new Rect(0, 0, getWidth(), getHeight());
            this.mBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            this.mCanvas = new Canvas(this.mBitmap);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mBitmap != null) {
            if (this.mRenderer != null) {
                this.mRenderer.render(this.mCanvas, this.data, this.mRect, this.iStyle);
            }
            canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, (Paint) null);
        }
    }
}
