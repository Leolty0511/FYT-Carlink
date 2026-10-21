package android.view.accessibility;

/* JADX INFO: loaded from: classes.dex */
public interface AccessibilityEventSource {
    void sendAccessibilityEvent(int i2);

    void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent);
}
