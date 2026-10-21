package android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class ZoomButtonsController implements View.OnTouchListener {
    private static final int MSG_DISMISS_ZOOM_CONTROLS = 3;
    private static final int MSG_POST_CONFIGURATION_CHANGED = 2;
    private static final int MSG_POST_SET_VISIBLE = 4;
    private static final String TAG = "ZoomButtonsController";
    private static final int ZOOM_CONTROLS_TIMEOUT = (int) ViewConfiguration.getZoomControlsTimeout();
    private static final int ZOOM_CONTROLS_TOUCH_PADDING = 20;
    private OnZoomListener mCallback;
    private final FrameLayout mContainer;
    private WindowManager.LayoutParams mContainerLayoutParams;
    private final Context mContext;
    private ZoomControls mControls;
    private boolean mIsVisible;
    private final View mOwnerView;
    private Runnable mPostedVisibleInitializer;
    private boolean mReleaseTouchListenerOnUp;
    private int mTouchPaddingScaledSq;
    private View mTouchTargetView;
    private final WindowManager mWindowManager;
    private boolean mAutoDismissControls = true;
    private final int[] mOwnerViewRawLocation = new int[2];
    private final int[] mContainerRawLocation = new int[2];
    private final int[] mTouchTargetWindowLocation = new int[2];
    private final Rect mTempRect = new Rect();
    private final int[] mTempIntArray = new int[2];
    private final IntentFilter mConfigurationChangedFilter = new IntentFilter(Intent.ACTION_CONFIGURATION_CHANGED);
    private final BroadcastReceiver mConfigurationChangedReceiver = new BroadcastReceiver() { // from class: android.widget.ZoomButtonsController.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ZoomButtonsController.this.mIsVisible) {
                ZoomButtonsController.this.mHandler.removeMessages(2);
                ZoomButtonsController.this.mHandler.sendEmptyMessage(2);
            }
        }
    };
    private final Handler mHandler = new Handler() { // from class: android.widget.ZoomButtonsController.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 2) {
                ZoomButtonsController.this.onPostConfigurationChanged();
                return;
            }
            if (i2 == 3) {
                ZoomButtonsController.this.setVisible(false);
            } else {
                if (i2 != 4) {
                    return;
                }
                if (ZoomButtonsController.this.mOwnerView.getWindowToken() == null) {
                    Log.e(ZoomButtonsController.TAG, "Cannot make the zoom controller visible if the owner view is not attached to a window.");
                } else {
                    ZoomButtonsController.this.setVisible(true);
                }
            }
        }
    };

    public class Container extends FrameLayout {
        public Container(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (ZoomButtonsController.this.onContainerKey(keyEvent)) {
                return true;
            }
            return super.dispatchKeyEvent(keyEvent);
        }
    }

    public interface OnZoomListener {
        void onVisibilityChanged(boolean z2);

        void onZoom(boolean z2);
    }

    public ZoomButtonsController(View view) {
        Context context = view.getContext();
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        this.mOwnerView = view;
        int i2 = (int) (context.getResources().getDisplayMetrics().density * 20.0f);
        this.mTouchPaddingScaledSq = i2;
        this.mTouchPaddingScaledSq = i2 * i2;
        this.mContainer = createContainer();
    }

    private FrameLayout createContainer() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2);
        layoutParams.gravity = 8388659;
        layoutParams.flags = 131608;
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.type = 1000;
        layoutParams.format = -3;
        layoutParams.windowAnimations = 16974325;
        this.mContainerLayoutParams = layoutParams;
        Container container = new Container(this.mContext);
        container.setLayoutParams(layoutParams);
        container.setMeasureAllChildren(true);
        ((LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367243, container);
        ZoomControls zoomControls = (ZoomControls) container.findViewById(16909213);
        this.mControls = zoomControls;
        zoomControls.setOnZoomInClickListener(new View.OnClickListener() { // from class: android.widget.ZoomButtonsController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZoomButtonsController.this.dismissControlsDelayed(ZoomButtonsController.ZOOM_CONTROLS_TIMEOUT);
                if (ZoomButtonsController.this.mCallback != null) {
                    ZoomButtonsController.this.mCallback.onZoom(true);
                }
            }
        });
        this.mControls.setOnZoomOutClickListener(new View.OnClickListener() { // from class: android.widget.ZoomButtonsController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZoomButtonsController.this.dismissControlsDelayed(ZoomButtonsController.ZOOM_CONTROLS_TIMEOUT);
                if (ZoomButtonsController.this.mCallback != null) {
                    ZoomButtonsController.this.mCallback.onZoom(false);
                }
            }
        });
        return container;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissControlsDelayed(int i2) {
        if (this.mAutoDismissControls) {
            this.mHandler.removeMessages(3);
            this.mHandler.sendEmptyMessageDelayed(3, i2);
        }
    }

    private View findViewForTouch(int i2, int i3) {
        int[] iArr = this.mContainerRawLocation;
        int i4 = i2 - iArr[0];
        int i5 = i3 - iArr[1];
        Rect rect = this.mTempRect;
        View view = null;
        int i6 = Integer.MAX_VALUE;
        for (int childCount = this.mContainer.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mContainer.getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i4, i5)) {
                    return childAt;
                }
                int i7 = rect.left;
                int iMin = (i4 < i7 || i4 > rect.right) ? Math.min(Math.abs(i7 - i4), Math.abs(i4 - rect.right)) : 0;
                int i8 = rect.top;
                int iMin2 = (i5 < i8 || i5 > rect.bottom) ? Math.min(Math.abs(i8 - i5), Math.abs(i5 - rect.bottom)) : 0;
                int i9 = (iMin * iMin) + (iMin2 * iMin2);
                if (i9 < this.mTouchPaddingScaledSq && i9 < i6) {
                    view = childAt;
                    i6 = i9;
                }
            }
        }
        return view;
    }

    private boolean isInterestingKey(int i2) {
        if (i2 == 4 || i2 == 66) {
            return true;
        }
        switch (i2) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onContainerKey(KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState;
        int keyCode = keyEvent.getKeyCode();
        if (!isInterestingKey(keyCode)) {
            ViewRootImpl viewRootImpl = this.mOwnerView.getViewRootImpl();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchInputEvent(keyEvent);
            }
            return true;
        }
        if (keyCode != 4) {
            dismissControlsDelayed(ZOOM_CONTROLS_TIMEOUT);
        } else {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                View view = this.mOwnerView;
                if (view != null && (keyDispatcherState = view.getKeyDispatcherState()) != null) {
                    keyDispatcherState.startTracking(keyEvent, this);
                }
                return true;
            }
            if (keyEvent.getAction() == 1 && keyEvent.isTracking() && !keyEvent.isCanceled()) {
                setVisible(false);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPostConfigurationChanged() {
        dismissControlsDelayed(ZOOM_CONTROLS_TIMEOUT);
        refreshPositioningVariables();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshPositioningVariables() {
        if (this.mOwnerView.getWindowToken() == null) {
            return;
        }
        int height = this.mOwnerView.getHeight();
        int width = this.mOwnerView.getWidth();
        int height2 = height - this.mContainer.getHeight();
        this.mOwnerView.getLocationOnScreen(this.mOwnerViewRawLocation);
        int[] iArr = this.mContainerRawLocation;
        int[] iArr2 = this.mOwnerViewRawLocation;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1] + height2;
        int[] iArr3 = this.mTempIntArray;
        this.mOwnerView.getLocationInWindow(iArr3);
        WindowManager.LayoutParams layoutParams = this.mContainerLayoutParams;
        layoutParams.f206x = iArr3[0];
        layoutParams.width = width;
        layoutParams.f207y = iArr3[1] + height2;
        if (this.mIsVisible) {
            this.mWindowManager.updateViewLayout(this.mContainer, layoutParams);
        }
    }

    private void setTouchTargetView(View view) {
        this.mTouchTargetView = view;
        if (view != null) {
            view.getLocationInWindow(this.mTouchTargetWindowLocation);
        }
    }

    public ViewGroup getContainer() {
        return this.mContainer;
    }

    public View getZoomControls() {
        return this.mControls;
    }

    public boolean isAutoDismissed() {
        return this.mAutoDismissControls;
    }

    public boolean isVisible() {
        return this.mIsVisible;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (motionEvent.getPointerCount() > 1) {
            return false;
        }
        if (this.mReleaseTouchListenerOnUp) {
            if (action == 1 || action == 3) {
                this.mOwnerView.setOnTouchListener(null);
                setTouchTargetView(null);
                this.mReleaseTouchListenerOnUp = false;
            }
            return true;
        }
        dismissControlsDelayed(ZOOM_CONTROLS_TIMEOUT);
        View viewFindViewForTouch = this.mTouchTargetView;
        if (action == 0) {
            viewFindViewForTouch = findViewForTouch((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
            setTouchTargetView(viewFindViewForTouch);
        } else if (action == 1 || action == 3) {
            setTouchTargetView(null);
        }
        if (viewFindViewForTouch == null) {
            return false;
        }
        int[] iArr = this.mContainerRawLocation;
        int i2 = iArr[0];
        int[] iArr2 = this.mTouchTargetWindowLocation;
        int i3 = i2 + iArr2[0];
        int i4 = iArr[1] + iArr2[1];
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr3 = this.mOwnerViewRawLocation;
        motionEventObtain.offsetLocation(iArr3[0] - i3, iArr3[1] - i4);
        float x2 = motionEventObtain.getX();
        float y2 = motionEventObtain.getY();
        if (x2 < 0.0f && x2 > -20.0f) {
            motionEventObtain.offsetLocation(-x2, 0.0f);
        }
        if (y2 < 0.0f && y2 > -20.0f) {
            motionEventObtain.offsetLocation(0.0f, -y2);
        }
        boolean zDispatchTouchEvent = viewFindViewForTouch.dispatchTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zDispatchTouchEvent;
    }

    public void setAutoDismissed(boolean z2) {
        if (this.mAutoDismissControls == z2) {
            return;
        }
        this.mAutoDismissControls = z2;
    }

    public void setFocusable(boolean z2) {
        WindowManager.LayoutParams layoutParams = this.mContainerLayoutParams;
        int i2 = layoutParams.flags;
        if (z2) {
            layoutParams.flags = i2 & (-9);
        } else {
            layoutParams.flags = i2 | 8;
        }
        if (layoutParams.flags == i2 || !this.mIsVisible) {
            return;
        }
        this.mWindowManager.updateViewLayout(this.mContainer, layoutParams);
    }

    public void setOnZoomListener(OnZoomListener onZoomListener) {
        this.mCallback = onZoomListener;
    }

    public void setVisible(boolean z2) {
        if (z2) {
            if (this.mOwnerView.getWindowToken() == null) {
                if (this.mHandler.hasMessages(4)) {
                    return;
                }
                this.mHandler.sendEmptyMessage(4);
                return;
            }
            dismissControlsDelayed(ZOOM_CONTROLS_TIMEOUT);
        }
        if (this.mIsVisible == z2) {
            return;
        }
        this.mIsVisible = z2;
        if (z2) {
            WindowManager.LayoutParams layoutParams = this.mContainerLayoutParams;
            if (layoutParams.token == null) {
                layoutParams.token = this.mOwnerView.getWindowToken();
            }
            this.mWindowManager.addView(this.mContainer, this.mContainerLayoutParams);
            if (this.mPostedVisibleInitializer == null) {
                this.mPostedVisibleInitializer = new Runnable() { // from class: android.widget.ZoomButtonsController.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ZoomButtonsController.this.refreshPositioningVariables();
                        if (ZoomButtonsController.this.mCallback != null) {
                            ZoomButtonsController.this.mCallback.onVisibilityChanged(true);
                        }
                    }
                };
            }
            this.mHandler.post(this.mPostedVisibleInitializer);
            this.mContext.registerReceiver(this.mConfigurationChangedReceiver, this.mConfigurationChangedFilter);
            this.mOwnerView.setOnTouchListener(this);
            this.mReleaseTouchListenerOnUp = false;
            return;
        }
        if (this.mTouchTargetView != null) {
            this.mReleaseTouchListenerOnUp = true;
        } else {
            this.mOwnerView.setOnTouchListener(null);
        }
        this.mContext.unregisterReceiver(this.mConfigurationChangedReceiver);
        this.mWindowManager.removeView(this.mContainer);
        this.mHandler.removeCallbacks(this.mPostedVisibleInitializer);
        OnZoomListener onZoomListener = this.mCallback;
        if (onZoomListener != null) {
            onZoomListener.onVisibilityChanged(false);
        }
    }

    public void setZoomInEnabled(boolean z2) {
        this.mControls.setIsZoomInEnabled(z2);
    }

    public void setZoomOutEnabled(boolean z2) {
        this.mControls.setIsZoomOutEnabled(z2);
    }

    public void setZoomSpeed(long j2) {
        this.mControls.setZoomSpeed(j2);
    }
}
