package android.view;

import android.content.Context;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.SystemProperties;
import android.util.Log;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class SprdViewRootImpl extends ViewRootImpl {
    static final int HEIGHT_TO_SKIP = 20;
    private static final String TAG = "SprdViewRootImpl";
    boolean mCanHaveNavigationBar;
    int mDisplayHeight;
    boolean mSwipeFromBottom;

    public SprdViewRootImpl(Context context, Display display) {
        super(context, display);
        this.mCanHaveNavigationBar = false;
        this.mSwipeFromBottom = false;
        this.mDisplayHeight = -1;
        this.mDisplayHeight = this.mDisplay.getMode().getPhysicalHeight();
        this.mCanHaveNavigationBar = this.mContext.getResources().getBoolean(R.bool.config_showNavigationBar);
        String str = SystemProperties.get("qemu.hw.mainkeys");
        if (WifiEnterpriseConfig.ENGINE_ENABLE.equals(str)) {
            this.mCanHaveNavigationBar = false;
        } else if (WifiEnterpriseConfig.ENGINE_DISABLE.equals(str)) {
            this.mCanHaveNavigationBar = true;
        }
    }

    @Override // android.view.AbsViewRootImpl
    public boolean dropIfNeeded(InputEvent inputEvent) {
        boolean zCanNavigationBarMove;
        boolean zIsKeyguardShowingAndNotOccluded;
        boolean zIsNavigationBarShowing;
        if (!this.mCanHaveNavigationBar || !(inputEvent instanceof MotionEvent)) {
            return false;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mSwipeFromBottom = false;
            try {
                zCanNavigationBarMove = this.mWindowSession.canNavigationBarMove();
            } catch (Exception e2) {
                Log.e(TAG, "throw exception, " + e2);
                zCanNavigationBarMove = false;
            }
            if (!shouldDropPoint(this.mDisplay.getOrientation(), zCanNavigationBarMove, motionEvent)) {
                return false;
            }
            try {
                zIsKeyguardShowingAndNotOccluded = this.mWindowSession.isKeyguardShowingAndNotOccluded();
                try {
                    zIsNavigationBarShowing = this.mWindowSession.isNavigationBarShowing();
                } catch (Exception e3) {
                    e = e3;
                    Log.e(TAG, "throw exception, " + e);
                    zIsNavigationBarShowing = false;
                }
            } catch (Exception e4) {
                e = e4;
                zIsKeyguardShowingAndNotOccluded = false;
            }
            if (zIsKeyguardShowingAndNotOccluded || zIsNavigationBarShowing) {
                return false;
            }
            this.mSwipeFromBottom = true;
        } else if (action != 1) {
            if (!this.mSwipeFromBottom) {
                return false;
            }
        } else {
            if (!this.mSwipeFromBottom) {
                return false;
            }
            this.mSwipeFromBottom = false;
        }
        return true;
    }

    public boolean shouldDropPoint(int i2, boolean z2, MotionEvent motionEvent) {
        int i3;
        return (z2 && ((i2 % 2 == 0 && (motionEvent.getRawY() > ((float) (this.mDisplayHeight + (-20))) ? 1 : (motionEvent.getRawY() == ((float) (this.mDisplayHeight + (-20))) ? 0 : -1)) > 0) || (((i3 = i2 % 4) == 1 && (motionEvent.getRawX() > ((float) (this.mDisplayHeight + (-20))) ? 1 : (motionEvent.getRawX() == ((float) (this.mDisplayHeight + (-20))) ? 0 : -1)) > 0) || (i3 == 3 && (motionEvent.getRawX() > 20.0f ? 1 : (motionEvent.getRawX() == 20.0f ? 0 : -1)) < 0)))) || (!z2 && (motionEvent.getRawY() > ((float) (this.mDisplayHeight + (-20))) ? 1 : (motionEvent.getRawY() == ((float) (this.mDisplayHeight + (-20))) ? 0 : -1)) > 0);
    }
}
