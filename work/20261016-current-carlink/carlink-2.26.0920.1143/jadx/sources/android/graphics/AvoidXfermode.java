package android.graphics;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AvoidXfermode extends Xfermode {

    public enum Mode {
        AVOID(0),
        TARGET(1);

        final int nativeInt;

        Mode(int i2) {
            this.nativeInt = i2;
        }
    }

    public AvoidXfermode(int i2, int i3, Mode mode) {
        if (i3 < 0 || i3 > 255) {
            throw new IllegalArgumentException("tolerance must be 0..255");
        }
    }
}
