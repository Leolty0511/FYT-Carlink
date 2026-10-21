package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class d {
    public static int a(String str) {
        str.getClass();
        if (str.equals(TypedValues.MotionScene.S_DEFAULT_DURATION)) {
            return 600;
        }
        return !str.equals(TypedValues.MotionScene.S_LAYOUT_DURING_TRANSITION) ? -1 : 601;
    }

    public static int b(int i2) {
        if (i2 != 600) {
            return i2 != 601 ? -1 : 1;
        }
        return 2;
    }
}
