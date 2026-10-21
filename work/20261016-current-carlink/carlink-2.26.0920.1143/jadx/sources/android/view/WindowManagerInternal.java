package android.view;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.IBinder;
import android.view.animation.Animation;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WindowManagerInternal {

    public static abstract class AppTransitionListener {
        public void onAppTransitionCancelledLocked(int i2) {
        }

        public void onAppTransitionFinishedLocked(IBinder iBinder) {
        }

        public void onAppTransitionPendingLocked() {
        }

        public int onAppTransitionStartingLocked(int i2, IBinder iBinder, IBinder iBinder2, Animation animation, Animation animation2) {
            return 0;
        }
    }

    public interface MagnificationCallbacks {
        void onMagnificationRegionChanged(Region region);

        void onRectangleOnScreenRequested(int i2, int i3, int i4, int i5);

        void onRotationChanged(int i2);

        void onUserContextChanged();
    }

    public interface OnHardKeyboardStatusChangeListener {
        void onHardKeyboardStatusChange(boolean z2);
    }

    public interface WindowsForAccessibilityCallback {
        void onWindowsForAccessibilityChanged(List<WindowInfo> list);
    }

    public abstract void addWindowToken(IBinder iBinder, int i2, int i3);

    public abstract void clearLastInputMethodWindowForTransition();

    public abstract void computeWindowsForAccessibility();

    public abstract MagnificationSpec getCompatibleMagnificationSpecForWindow(IBinder iBinder);

    public abstract IBinder getFocusedWindowToken();

    public abstract int getInputMethodWindowVisibleHeight();

    public abstract void getMagnificationRegion(Region region);

    public abstract void getWindowFrame(IBinder iBinder, Rect rect);

    public abstract boolean isDockedDividerResizing();

    public abstract boolean isHardKeyboardAvailable();

    public abstract boolean isKeyguardLocked();

    public abstract boolean isKeyguardShowingAndNotOccluded();

    public abstract boolean isStackVisible(int i2);

    public abstract void registerAppTransitionListener(AppTransitionListener appTransitionListener);

    public abstract void removeWindowToken(IBinder iBinder, boolean z2, int i2);

    public abstract void requestTraversalFromDisplayManager();

    public abstract void saveLastInputMethodWindowForTransition();

    public abstract void setForceShowMagnifiableBounds(boolean z2);

    public abstract void setForcedDisplaySizeDensity(int i2, int i3, int i4);

    public abstract void setInputFilter(IInputFilter iInputFilter);

    public abstract void setLayoutNeeded();

    public abstract void setMagnificationCallbacks(MagnificationCallbacks magnificationCallbacks);

    public abstract void setMagnificationSpec(MagnificationSpec magnificationSpec);

    public abstract void setOnHardKeyboardStatusChangeListener(OnHardKeyboardStatusChangeListener onHardKeyboardStatusChangeListener);

    public abstract void setVr2dDisplayId(int i2);

    public abstract void setWindowsForAccessibilityCallback(WindowsForAccessibilityCallback windowsForAccessibilityCallback);

    public abstract void showGlobalActions();

    public abstract void updateInputMethodWindowStatus(IBinder iBinder, boolean z2, boolean z3, IBinder iBinder2);

    public abstract void waitForAllWindowsDrawn(Runnable runnable, long j2);
}
