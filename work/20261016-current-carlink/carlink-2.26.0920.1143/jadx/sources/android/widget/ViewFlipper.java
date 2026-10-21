package android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Process;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class ViewFlipper extends ViewAnimator {
    private static final int DEFAULT_INTERVAL = 3000;
    private static final boolean LOGD = false;
    private static final String TAG = "ViewFlipper";
    private boolean mAutoStart;
    private int mFlipInterval;
    private final Runnable mFlipRunnable;
    private final BroadcastReceiver mReceiver;
    private boolean mRunning;
    private boolean mStarted;
    private boolean mUserPresent;
    private boolean mVisible;

    public ViewFlipper(Context context) {
        super(context);
        this.mFlipInterval = 3000;
        this.mAutoStart = false;
        this.mRunning = false;
        this.mStarted = false;
        this.mVisible = false;
        this.mUserPresent = true;
        this.mReceiver = new BroadcastReceiver() { // from class: android.widget.ViewFlipper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                    ViewFlipper.this.mUserPresent = false;
                    ViewFlipper.this.updateRunning();
                } else if (Intent.ACTION_USER_PRESENT.equals(action)) {
                    ViewFlipper.this.mUserPresent = true;
                    ViewFlipper.this.updateRunning(false);
                }
            }
        };
        this.mFlipRunnable = new Runnable() { // from class: android.widget.ViewFlipper.2
            @Override // java.lang.Runnable
            public void run() {
                if (ViewFlipper.this.mRunning) {
                    ViewFlipper.this.showNext();
                    ViewFlipper viewFlipper = ViewFlipper.this;
                    viewFlipper.postDelayed(viewFlipper.mFlipRunnable, ViewFlipper.this.mFlipInterval);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRunning() {
        updateRunning(true);
    }

    @Override // android.widget.ViewAnimator, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ViewFlipper.class.getName();
    }

    public boolean isAutoStart() {
        return this.mAutoStart;
    }

    public boolean isFlipping() {
        return this.mStarted;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
        intentFilter.addAction(Intent.ACTION_USER_PRESENT);
        getContext().registerReceiverAsUser(this.mReceiver, Process.myUserHandle(), intentFilter, null, getHandler());
        if (this.mAutoStart) {
            startFlipping();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mVisible = false;
        getContext().unregisterReceiver(this.mReceiver);
        updateRunning();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.mVisible = i2 == 0;
        updateRunning(false);
    }

    public void setAutoStart(boolean z2) {
        this.mAutoStart = z2;
    }

    @RemotableViewMethod
    public void setFlipInterval(int i2) {
        this.mFlipInterval = i2;
    }

    public void startFlipping() {
        this.mStarted = true;
        updateRunning();
    }

    public void stopFlipping() {
        this.mStarted = false;
        updateRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRunning(boolean z2) {
        boolean z3 = this.mVisible && this.mStarted && this.mUserPresent;
        if (z3 != this.mRunning) {
            if (z3) {
                showOnly(this.mWhichChild, z2);
                postDelayed(this.mFlipRunnable, this.mFlipInterval);
            } else {
                removeCallbacks(this.mFlipRunnable);
            }
            this.mRunning = z3;
        }
    }

    public ViewFlipper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFlipInterval = 3000;
        this.mAutoStart = false;
        this.mRunning = false;
        this.mStarted = false;
        this.mVisible = false;
        this.mUserPresent = true;
        this.mReceiver = new BroadcastReceiver() { // from class: android.widget.ViewFlipper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                    ViewFlipper.this.mUserPresent = false;
                    ViewFlipper.this.updateRunning();
                } else if (Intent.ACTION_USER_PRESENT.equals(action)) {
                    ViewFlipper.this.mUserPresent = true;
                    ViewFlipper.this.updateRunning(false);
                }
            }
        };
        this.mFlipRunnable = new Runnable() { // from class: android.widget.ViewFlipper.2
            @Override // java.lang.Runnable
            public void run() {
                if (ViewFlipper.this.mRunning) {
                    ViewFlipper.this.showNext();
                    ViewFlipper viewFlipper = ViewFlipper.this;
                    viewFlipper.postDelayed(viewFlipper.mFlipRunnable, ViewFlipper.this.mFlipInterval);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewFlipper);
        this.mFlipInterval = typedArrayObtainStyledAttributes.getInt(0, 3000);
        this.mAutoStart = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
