package com.syu.bt.ctrl;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.lsec.core.frame.ctrl.JPage;

/* JADX INFO: loaded from: classes.dex */
public class SlideBarView extends View {
    public static String[] b = {"#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
    private int choose;
    private TextView mTextDialog;
    private OnTouchLettersChangedListener onTouchLettersChangedListener;
    private Paint paint;
    public Rect rec_Letterbar;

    public interface OnTouchLettersChangedListener {
        void onTouchLettersChanged(String str);
    }

    public SlideBarView(JPage page) {
        super(page.ui.mContext);
        this.choose = -1;
        this.paint = new Paint();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int h = getHeight();
        int w = getWidth();
        int singleHeight = h / b.length;
        for (int i = 0; i < b.length; i++) {
            this.paint.setColor(Color.parseColor("#474747"));
            this.paint.setAntiAlias(true);
            this.paint.setTextSize(22.0f);
            if (i == this.choose) {
                this.paint.setColor(Color.parseColor("#0308ff"));
                this.paint.setFakeBoldText(true);
            }
            float xPos = (w / 2) - (this.paint.measureText(b[i]) / 2.0f);
            float yPos = (singleHeight * i) + singleHeight;
            canvas.drawText(b[i], xPos, yPos, this.paint);
            this.paint.reset();
        }
    }

    public void setTextView(TextView mTextDialog) {
        this.mTextDialog = mTextDialog;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();
        float y = event.getY();
        int oldChoose = this.choose;
        OnTouchLettersChangedListener listener = this.onTouchLettersChangedListener;
        int c = (int) ((y / getHeight()) * b.length);
        switch (action) {
            case 1:
                this.choose = -1;
                invalidate();
                if (this.mTextDialog != null) {
                    this.mTextDialog.setVisibility(4);
                }
                break;
            default:
                if (oldChoose != c && c < b.length && c >= 0) {
                    if (listener != null) {
                        listener.onTouchLettersChanged(b[c]);
                    }
                    if (this.mTextDialog != null) {
                        this.mTextDialog.setBackgroundColor(Color.parseColor("#0000ff"));
                        this.mTextDialog.setText(b[c]);
                        this.mTextDialog.setVisibility(0);
                    }
                    this.choose = c;
                    invalidate();
                    break;
                }
                break;
        }
        return true;
    }

    public void setOnTouchLettersChangedListener(OnTouchLettersChangedListener onTouchLettersChangedListener) {
        this.onTouchLettersChangedListener = onTouchLettersChangedListener;
    }
}
