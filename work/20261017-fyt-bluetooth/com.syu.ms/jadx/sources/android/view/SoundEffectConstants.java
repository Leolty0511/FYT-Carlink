package android.view;

/* JADX INFO: loaded from: classes.dex */
public class SoundEffectConstants {
    public static final int CLICK = 0;
    public static final int NAVIGATION_DOWN = 4;
    public static final int NAVIGATION_LEFT = 1;
    public static final int NAVIGATION_RIGHT = 3;
    public static final int NAVIGATION_UP = 2;

    private SoundEffectConstants() {
    }

    public static int getContantForFocusDirection(int i2) {
        if (i2 != 1) {
            if (i2 == 2) {
                return 4;
            }
            if (i2 == 17) {
                return 1;
            }
            if (i2 != 33) {
                if (i2 == 66) {
                    return 3;
                }
                if (i2 == 130) {
                    return 4;
                }
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
        }
        return 2;
    }
}
