package com.syu.bt.ctrl;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.view.GravityCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.util.data.FinalTpms;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ClickableViewAccessibility"})
public class SwipeCallingView extends RelativeLayout {
    static boolean isInCycle = false;
    private ImageView DialView;
    private ImageView DialViewMirror;
    View GreenView;
    final int ID_DIAL;
    final int ID_GREEN;
    final int ID_RED;
    int MAXHEIGHT;
    int MAXWITH;
    View RedView;
    int X;
    int Y;
    TranslateAnimation anim;
    AnimationSet animSet;
    AnimationSet animSet2;
    int duration;
    boolean isActiveCall;
    boolean isCalling;
    private ImageView ivHangup;
    private ImageView ivPickup;
    int lastX;
    int lastY;
    int leftwitdh;
    public HashMap<String, Drawable> mDrawables;
    setEvent mEventListner;
    Paint mPaint;
    int offsetDialIcon;
    JPage page;
    int posRed;
    int red_h;
    int red_w;
    int rightwitdh;
    WindowManager.LayoutParams wmLp;
    WindowManager wmManager;

    public interface setEvent {
        void setEventLeft();

        void setEventRight();
    }

    public SwipeCallingView(JPage page) {
        super(page.ui.mContext);
        this.mDrawables = new HashMap<>();
        this.ID_RED = 2000;
        this.ID_GREEN = 2001;
        this.ID_DIAL = 2002;
        this.RedView = null;
        this.GreenView = null;
        this.duration = FinalTpms.U_CNT_MAX;
        this.posRed = 0;
        this.offsetDialIcon = 20;
        this.isCalling = false;
        this.isActiveCall = false;
        this.mEventListner = null;
        this.MAXWITH = 0;
        this.MAXHEIGHT = 0;
        this.leftwitdh = 0;
        this.rightwitdh = 0;
        this.lastX = 0;
        this.lastY = 0;
        this.X = 0;
        this.Y = 0;
        init(page);
    }

    public void setOnSwipeEventListner(setEvent mEvent) {
        this.mEventListner = mEvent;
    }

    @TargetApi(16)
    private void init(JPage page) {
        this.wmManager = (WindowManager) page.ui.mContext.getSystemService("window");
        this.wmLp = new WindowManager.LayoutParams();
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-2, -2);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.RedView = new ImageView(page.ui.mContext);
        this.RedView.setBackground(page.getDrawableFromPath("red_buble", page.mDrawables, null));
        this.RedView.setVisibility(4);
        lp.addRule(15, -1);
        lp.addRule(7, 2002);
        this.RedView.setId(2000);
        addView(this.RedView, lp);
        this.GreenView = new ImageView(page.ui.mContext);
        this.GreenView.setVisibility(4);
        this.GreenView.setBackground(page.getDrawableFromPath("green_buble", page.mDrawables, null));
        RelativeLayout.LayoutParams lp2 = new RelativeLayout.LayoutParams(-2, -2);
        lp2.addRule(15, -1);
        lp2.addRule(5, 2002);
        this.GreenView.setId(2001);
        addView(this.GreenView, lp2);
        this.DialView = new ImageView(page.ui.mContext);
        RelativeLayout.LayoutParams lp3 = new RelativeLayout.LayoutParams(-2, -2);
        lp3.addRule(13, -1);
        this.DialView.setBackground(page.getDrawableFromPath("bt_calling_dial", page.mDrawables, null));
        this.DialView.setId(2002);
        addView(this.DialView, lp3);
        this.ivPickup = new ImageView(page.ui.mContext);
        this.ivPickup.setBackground(page.getDrawableFromPath("bt_calling_pickup", page.mDrawables, null));
        addView(this.ivPickup);
        this.ivHangup = new ImageView(page.ui.mContext);
        this.ivHangup.setBackground(page.getDrawableFromPath("bt_calling_hang", page.mDrawables, null));
        addView(this.ivHangup);
        this.ivPickup.setVisibility(4);
        this.ivHangup.setVisibility(4);
        this.anim = new TranslateAnimation(0.0f, -350.0f, 0.0f, 0.0f);
        this.anim.setDuration(this.duration);
        this.anim.setRepeatMode(1);
        this.anim.setRepeatCount(-1);
        this.anim.setInterpolator(new AccelerateDecelerateInterpolator());
        TranslateAnimation anim2 = new TranslateAnimation(0.0f, 350.0f, 0.0f, 0.0f);
        anim2.setDuration(this.duration);
        anim2.setRepeatMode(1);
        anim2.setRepeatCount(-1);
        anim2.setInterpolator(new AccelerateDecelerateInterpolator());
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.3f, 0.8f);
        alphaAnimation.setDuration(this.duration / 2);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        this.animSet = new AnimationSet(false);
        this.animSet.addAnimation(this.anim);
        this.animSet.addAnimation(alphaAnimation);
        this.animSet2 = new AnimationSet(false);
        this.animSet2.addAnimation(anim2);
        this.animSet2.addAnimation(alphaAnimation);
        if (this.mEventListner == null) {
            this.mEventListner = new setEvent() { // from class: com.syu.bt.ctrl.SwipeCallingView.1
                @Override // com.syu.bt.ctrl.SwipeCallingView.setEvent
                public void setEventRight() {
                }

                @Override // com.syu.bt.ctrl.SwipeCallingView.setEvent
                public void setEventLeft() {
                }
            };
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.MAXHEIGHT = getMeasuredHeight();
        this.MAXWITH = getMeasuredWidth();
        this.ivHangup.setX(50.0f);
        this.ivPickup.setX((this.MAXWITH - this.ivPickup.getWidth()) - 50);
        this.leftwitdh = (int) (this.ivHangup.getX() - this.DialView.getX());
        this.rightwitdh = (int) (this.ivPickup.getX() - this.DialView.getX());
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public void startCalling(boolean on) {
        this.isCalling = on;
        if (this.isCalling) {
            this.isActiveCall = false;
            this.RedView.setVisibility(0);
            this.GreenView.setVisibility(0);
            if (this.animSet != null) {
                this.RedView.startAnimation(this.animSet);
            }
            if (this.animSet2 != null) {
                this.GreenView.startAnimation(this.animSet2);
                return;
            }
            return;
        }
        if (this.animSet != null) {
            this.RedView.clearAnimation();
        }
        if (this.animSet2 != null) {
            this.GreenView.clearAnimation();
        }
        this.RedView.setVisibility(4);
        this.GreenView.setVisibility(4);
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public boolean onTouchEvent(MotionEvent event) {
        this.X = (int) event.getX();
        this.Y = (int) event.getY();
        switch (event.getAction()) {
            case 0:
                this.lastX = (int) event.getX();
                this.lastY = (int) event.getY();
                if (this.lastX <= 462 || this.lastX >= 562 || this.lastY <= 42 || this.lastY >= 142) {
                    return true;
                }
                isInCycle = true;
                this.DialView.setVisibility(8);
                this.wmLp.width = -2;
                this.wmLp.height = -2;
                this.wmLp.format = 1;
                this.wmLp.gravity = GravityCompat.START;
                this.DialViewMirror = new ImageView(this.page.ui.mContext);
                this.DialViewMirror.setBackground(this.page.getDrawableFromPath("bt_calling_dial", this.page.mDrawables, this.mDrawables));
                this.wmManager.addView(this.DialViewMirror, this.wmLp);
                updateDialView();
                startCalling(false);
                invalidate();
                return true;
            case 1:
                if (this.isActiveCall) {
                    this.isCalling = false;
                } else {
                    this.isCalling = true;
                    this.ivPickup.setVisibility(4);
                    this.ivHangup.setVisibility(4);
                }
                startCalling(this.isCalling);
                isInCycle = false;
                this.DialView.setVisibility(0);
                removeDialView();
                return true;
            case 2:
                if (isInCycle) {
                    int deltx = this.X - this.lastX;
                    this.ivPickup.setVisibility(4);
                    this.ivHangup.setVisibility(4);
                    if (this.DialViewMirror != null) {
                        if (deltx > 0) {
                            float percent = (deltx * 1.0f) / this.rightwitdh;
                            if (percent > 0.2d) {
                                this.DialViewMirror.setAlpha(percent);
                                this.DialViewMirror.setBackground(this.page.getDrawableFromPath("bt_calling_pickup", this.page.mDrawables, this.mDrawables));
                                if (percent > 0.5d) {
                                    this.ivPickup.setVisibility(0);
                                    if (percent > 0.7d) {
                                        this.mEventListner.setEventRight();
                                        this.isActiveCall = true;
                                        removeDialView();
                                    }
                                }
                            }
                        } else {
                            float percent2 = (deltx * 1.0f) / this.leftwitdh;
                            if (percent2 > 0.2d) {
                                this.DialViewMirror.setBackground(this.page.getDrawableFromPath("bt_calling_hang", this.page.mDrawables, this.mDrawables));
                                this.DialViewMirror.setAlpha(percent2);
                                if (percent2 > 0.5d) {
                                    this.ivHangup.setVisibility(0);
                                    if (percent2 > 0.7d) {
                                        this.isActiveCall = true;
                                        this.mEventListner.setEventLeft();
                                        removeDialView();
                                    }
                                }
                            }
                        }
                    }
                    updateDialView();
                    return true;
                }
                break;
        }
        return super.onTouchEvent(event);
    }

    public void removeDialView() {
        if (this.DialViewMirror != null) {
            this.wmManager.removeView(this.DialViewMirror);
            this.DialViewMirror = null;
        }
    }

    private void updateDialView() {
        this.wmLp.x = (this.X - (this.DialView.getWidth() / 2)) + ((int) getX());
        this.wmLp.y = this.Y + this.offsetDialIcon;
        if (this.DialViewMirror != null) {
            this.wmManager.updateViewLayout(this.DialViewMirror, this.wmLp);
        }
    }
}
