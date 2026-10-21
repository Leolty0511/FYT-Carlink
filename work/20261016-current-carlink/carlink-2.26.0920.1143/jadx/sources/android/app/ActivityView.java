package android.app;

import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.hardware.input.InputManager;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.view.WindowManager;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public class ActivityView extends ViewGroup {
    private static final String DISPLAY_NAME = "ActivityViewVirtualDisplay";
    private static final String TAG = "ActivityView";
    private StateCallback mActivityViewCallback;
    private final CloseGuard mGuard;
    private IInputForwarder mInputForwarder;
    private boolean mOpened;
    private Surface mSurface;
    private final SurfaceCallback mSurfaceCallback;
    private final SurfaceView mSurfaceView;
    private VirtualDisplay mVirtualDisplay;

    public static abstract class StateCallback {
        public abstract void onActivityViewDestroyed(ActivityView activityView);

        public abstract void onActivityViewReady(ActivityView activityView);
    }

    public class SurfaceCallback implements SurfaceHolder.Callback {
        private SurfaceCallback() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            if (ActivityView.this.mVirtualDisplay != null) {
                ActivityView.this.mVirtualDisplay.resize(i3, i4, ActivityView.this.getBaseDisplayDensity());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            ActivityView activityView = ActivityView.this;
            activityView.mSurface = activityView.mSurfaceView.getHolder().getSurface();
            if (ActivityView.this.mVirtualDisplay != null) {
                ActivityView.this.mVirtualDisplay.setSurface(surfaceHolder.getSurface());
                return;
            }
            ActivityView.this.initVirtualDisplay();
            if (ActivityView.this.mVirtualDisplay == null || ActivityView.this.mActivityViewCallback == null) {
                return;
            }
            ActivityView.this.mActivityViewCallback.onActivityViewReady(ActivityView.this);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            ActivityView.this.mSurface.release();
            ActivityView.this.mSurface = null;
            if (ActivityView.this.mVirtualDisplay != null) {
                ActivityView.this.mVirtualDisplay.setSurface(null);
            }
        }
    }

    public ActivityView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBaseDisplayDensity() {
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService(WindowManager.class);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initVirtualDisplay() {
        if (this.mVirtualDisplay != null) {
            throw new IllegalStateException("Trying to initialize for the second time.");
        }
        int width = this.mSurfaceView.getWidth();
        int height = this.mSurfaceView.getHeight();
        VirtualDisplay virtualDisplayCreateVirtualDisplay = ((DisplayManager) this.mContext.getSystemService(DisplayManager.class)).createVirtualDisplay("ActivityViewVirtualDisplay@" + System.identityHashCode(this), width, height, getBaseDisplayDensity(), this.mSurface, 0);
        this.mVirtualDisplay = virtualDisplayCreateVirtualDisplay;
        if (virtualDisplayCreateVirtualDisplay == null) {
            Log.e(TAG, "Failed to initialize ActivityView");
        } else {
            this.mInputForwarder = InputManager.getInstance().createInputForwarder(this.mVirtualDisplay.getDisplay().getDisplayId());
        }
    }

    private boolean injectInputEvent(InputEvent inputEvent) {
        IInputForwarder iInputForwarder = this.mInputForwarder;
        if (iInputForwarder == null) {
            return false;
        }
        try {
            return iInputForwarder.forwardEvent(inputEvent);
        } catch (RemoteException e2) {
            e2.rethrowAsRuntimeException();
            return false;
        }
    }

    private void performRelease() {
        boolean z2;
        StateCallback stateCallback;
        if (this.mOpened) {
            this.mSurfaceView.getHolder().removeCallback(this.mSurfaceCallback);
            if (this.mInputForwarder != null) {
                this.mInputForwarder = null;
            }
            VirtualDisplay virtualDisplay = this.mVirtualDisplay;
            if (virtualDisplay != null) {
                virtualDisplay.release();
                this.mVirtualDisplay = null;
                z2 = true;
            } else {
                z2 = false;
            }
            Surface surface = this.mSurface;
            if (surface != null) {
                surface.release();
                this.mSurface = null;
            }
            if (z2 && (stateCallback = this.mActivityViewCallback) != null) {
                stateCallback.onActivityViewDestroyed(this);
            }
            this.mGuard.close();
            this.mOpened = false;
        }
    }

    private ActivityOptions prepareActivityOptions() {
        if (this.mVirtualDisplay == null) {
            throw new IllegalStateException("Trying to start activity before ActivityView is ready.");
        }
        ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
        activityOptionsMakeBasic.setLaunchDisplayId(this.mVirtualDisplay.getDisplay().getDisplayId());
        return activityOptionsMakeBasic;
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
                performRelease();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.isFromSource(2) && injectInputEvent(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        this.mSurfaceView.layout(0, 0, i4 - i2, i5 - i3);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return injectInputEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public void release() {
        if (this.mVirtualDisplay == null) {
            throw new IllegalStateException("Trying to release container that is not initialized.");
        }
        performRelease();
    }

    public void setCallback(StateCallback stateCallback) {
        this.mActivityViewCallback = stateCallback;
        if (this.mVirtualDisplay == null || stateCallback == null) {
            return;
        }
        stateCallback.onActivityViewReady(this);
    }

    public void startActivity(Intent intent) {
        getContext().startActivity(intent, prepareActivityOptions().toBundle());
    }

    public ActivityView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        CloseGuard closeGuard = CloseGuard.get();
        this.mGuard = closeGuard;
        SurfaceView surfaceView = new SurfaceView(context);
        this.mSurfaceView = surfaceView;
        SurfaceCallback surfaceCallback = new SurfaceCallback();
        this.mSurfaceCallback = surfaceCallback;
        surfaceView.getHolder().addCallback(surfaceCallback);
        addView(surfaceView);
        this.mOpened = true;
        closeGuard.open("release");
    }

    public void startActivity(PendingIntent pendingIntent) {
        try {
            pendingIntent.send(null, 0, null, null, null, null, prepareActivityOptions().toBundle());
        } catch (PendingIntent.CanceledException e2) {
            throw new RuntimeException(e2);
        }
    }
}
