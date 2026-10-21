package android.view;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class l {
    public static void a(WindowManagerPolicy.PointerEventListener pointerEventListener, MotionEvent motionEvent, int i2) {
        if (i2 == 0) {
            pointerEventListener.onPointerEvent(motionEvent);
        }
    }
}
