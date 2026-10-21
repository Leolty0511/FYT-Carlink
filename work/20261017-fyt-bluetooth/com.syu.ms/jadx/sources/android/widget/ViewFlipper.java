package android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class ViewFlipper extends ViewAnimator {
    private static final int DEFAULT_INTERVAL = 3000;
    private static final boolean LOGD = false;
    private static final String TAG = "ViewFlipper";
    private final int FLIP_MSG;
    private boolean mAutoStart;
    private int mFlipInterval;
    private final Handler mHandler;
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
        this.FLIP_MSG = 1;
        this.mHandler = new Handler() { // from class: android.widget.ViewFlipper.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1 && ViewFlipper.this.mRunning) {
                    ViewFlipper.this.showNext();
                    sendMessageDelayed(obtainMessage(1), ViewFlipper.this.mFlipInterval);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRunning() {
        updateRunning(true);
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
        getContext().registerReceiver(this.mReceiver, intentFilter, null, this.mHandler);
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

    @Override // android.widget.ViewAnimator, android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ViewFlipper.class.getName());
    }

    @Override // android.widget.ViewAnimator, android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ViewFlipper.class.getName());
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
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), this.mFlipInterval);
            } else {
                this.mHandler.removeMessages(1);
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
        this.FLIP_MSG = 1;
        this.mHandler = new Handler() { // from class: android.widget.ViewFlipper.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1 && ViewFlipper.this.mRunning) {
                    ViewFlipper.this.showNext();
                    sendMessageDelayed(obtainMessage(1), ViewFlipper.this.mFlipInterval);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ViewFlipper);
        this.mFlipInterval = typedArrayObtainStyledAttributes.getInt(0, 3000);
        this.mAutoStart = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
