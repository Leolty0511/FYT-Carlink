package android.hardware.camera2.params;

import android.accessibilityservice.c;
import android.graphics.Point;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public final class Face {
    public static final int ID_UNSUPPORTED = -1;
    public static final int SCORE_MAX = 100;
    public static final int SCORE_MIN = 1;
    private final Rect mBounds;
    private final int mId;
    private final Point mLeftEye;
    private final Point mMouth;
    private final Point mRightEye;
    private final int mScore;

    public Face(Rect rect, int i2, int i3, Point point, Point point2, Point point3) {
        checkNotNull("bounds", rect);
        if (i2 < 1 || i2 > 100) {
            throw new IllegalArgumentException("Confidence out of range");
        }
        if (i3 < 0 && i3 != -1) {
            throw new IllegalArgumentException("Id out of range");
        }
        if (i3 == -1) {
            checkNull("leftEyePosition", point);
            checkNull("rightEyePosition", point2);
            checkNull("mouthPosition", point3);
        }
        this.mBounds = rect;
        this.mScore = i2;
        this.mId = i3;
        this.mLeftEye = point;
        this.mRightEye = point2;
        this.mMouth = point3;
    }

    private static void checkNotNull(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(c.D(str, " was required, but it was null"));
        }
    }

    private static void checkNull(String str, Object obj) {
        if (obj != null) {
            throw new IllegalArgumentException(c.D(str, " was required to be null, but it wasn't"));
        }
    }

    public Rect getBounds() {
        return this.mBounds;
    }

    public int getId() {
        return this.mId;
    }

    public Point getLeftEyePosition() {
        return this.mLeftEye;
    }

    public Point getMouthPosition() {
        return this.mMouth;
    }

    public Point getRightEyePosition() {
        return this.mRightEye;
    }

    public int getScore() {
        return this.mScore;
    }

    public String toString() {
        return String.format("{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }", this.mBounds, Integer.valueOf(this.mScore), Integer.valueOf(this.mId), this.mLeftEye, this.mRightEye, this.mMouth);
    }

    public Face(Rect rect, int i2) {
        this(rect, i2, -1, null, null, null);
    }
}
