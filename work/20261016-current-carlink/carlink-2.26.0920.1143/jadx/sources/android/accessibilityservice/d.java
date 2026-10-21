package android.accessibilityservice;

import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7b;
    public final /* synthetic */ boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f8d;

    public /* synthetic */ d(int i2, boolean z2, Object obj) {
        this.f7b = i2;
        this.f8d = obj;
        this.c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f7b;
        boolean z2 = this.c;
        Object obj = this.f8d;
        switch (i2) {
            case 0:
                ((FingerprintGestureController.FingerprintGestureCallback) obj).onGestureDetectionAvailabilityChanged(z2);
                break;
            case 1:
                ((AccessibilityManager.AccessibilityStateChangeListener) obj).onAccessibilityStateChanged(z2);
                break;
            case 2:
                ((AccessibilityManager.HighTextContrastChangeListener) obj).onHighTextContrastStateChanged(z2);
                break;
            default:
                ((AccessibilityManager.TouchExplorationStateChangeListener) obj).onTouchExplorationStateChanged(z2);
                break;
        }
    }
}
