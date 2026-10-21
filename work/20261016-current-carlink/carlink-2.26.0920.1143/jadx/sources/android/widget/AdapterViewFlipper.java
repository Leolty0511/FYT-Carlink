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
public class AdapterViewFlipper extends AdapterViewAnimator {
    private static final int DEFAULT_INTERVAL = 10000;
    private static final boolean LOGD = false;
    private static final String TAG = "ViewFlipper";
    private boolean mAdvancedByHost;
    private boolean mAutoStart;
    private int mFlipInterval;
    private final Runnable mFlipRunnable;
    private final BroadcastReceiver mReceiver;
    private boolean mRunning;
    private boolean mStarted;
    private boolean mUserPresent;
    private boolean mVisible;

    public AdapterViewFlipper(Context context) {
        super(context);
        this.mFlipInterval = 10000;
        this.mAutoStart = false;
        this.mRunning = false;
        this.mStarted = false;
        this.mVisible = false;
        this.mUserPresent = true;
        this.mAdvancedByHost = false;
        this.mReceiver = new BroadcastReceiver() { // from class: android.widget.AdapterViewFlipper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                    AdapterViewFlipper.this.mUserPresent = false;
                    AdapterViewFlipper.this.updateRunning();
                } else if (Intent.ACTION_USER_PRESENT.equals(action)) {
                    AdapterViewFlipper.this.mUserPresent = true;
                    AdapterViewFlipper.this.updateRunning(false);
                }
            }
        };
        this.mFlipRunnable = new Runnable() { // from class: android.widget.AdapterViewFlipper.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdapterViewFlipper.this.mRunning) {
                    AdapterViewFlipper.this.showNext();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRunning() {
        updateRunning(true);
    }

    @Override // android.widget.AdapterViewAnimator, android.widget.Advanceable
    public void fyiWillBeAdvancedByHostKThx() {
        this.mAdvancedByHost = true;
        updateRunning(false);
    }

    @Override // android.widget.AdapterViewAnimator, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return AdapterViewFlipper.class.getName();
    }

    public int getFlipInterval() {
        return this.mFlipInterval;
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

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
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

    @Override // android.widget.AdapterViewAnimator, android.widget.AdapterView
    public void setAdapter(Adapter adapter) {
        super.setAdapter(adapter);
        updateRunning();
    }

    public void setAutoStart(boolean z2) {
        this.mAutoStart = z2;
    }

    public void setFlipInterval(int i2) {
        this.mFlipInterval = i2;
    }

    @Override // android.widget.AdapterViewAnimator
    @RemotableViewMethod
    public void showNext() {
        if (this.mRunning) {
            removeCallbacks(this.mFlipRunnable);
            postDelayed(this.mFlipRunnable, this.mFlipInterval);
        }
        super.showNext();
    }

    @Override // android.widget.AdapterViewAnimator
    @RemotableViewMethod
    public void showPrevious() {
        if (this.mRunning) {
            removeCallbacks(this.mFlipRunnable);
            postDelayed(this.mFlipRunnable, this.mFlipInterval);
        }
        super.showPrevious();
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
        boolean z3 = !this.mAdvancedByHost && this.mVisible && this.mStarted && this.mUserPresent && this.mAdapter != null;
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

    public AdapterViewFlipper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdapterViewFlipper(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public AdapterViewFlipper(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mFlipInterval = 10000;
        this.mAutoStart = false;
        this.mRunning = false;
        this.mStarted = false;
        this.mVisible = false;
        this.mUserPresent = true;
        this.mAdvancedByHost = false;
        this.mReceiver = new BroadcastReceiver() { // from class: android.widget.AdapterViewFlipper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                    AdapterViewFlipper.this.mUserPresent = false;
                    AdapterViewFlipper.this.updateRunning();
                } else if (Intent.ACTION_USER_PRESENT.equals(action)) {
                    AdapterViewFlipper.this.mUserPresent = true;
                    AdapterViewFlipper.this.updateRunning(false);
                }
            }
        };
        this.mFlipRunnable = new Runnable() { // from class: android.widget.AdapterViewFlipper.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdapterViewFlipper.this.mRunning) {
                    AdapterViewFlipper.this.showNext();
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AdapterViewFlipper, i2, i3);
        this.mFlipInterval = typedArrayObtainStyledAttributes.getInt(0, 10000);
        this.mAutoStart = typedArrayObtainStyledAttributes.getBoolean(1, false);
        this.mLoopViews = true;
        typedArrayObtainStyledAttributes.recycle();
    }
}
