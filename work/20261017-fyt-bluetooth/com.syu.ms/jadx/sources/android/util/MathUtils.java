package android.util;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class MathUtils {
    private static final float DEG_TO_RAD = 0.017453292f;
    private static final float RAD_TO_DEG = 57.295784f;
    private static final Random sRandom = new Random();

    private MathUtils() {
    }

    public static float abs(float f2) {
        return f2 > 0.0f ? f2 : -f2;
    }

    public static float acos(float f2) {
        return (float) Math.acos(f2);
    }

    public static float asin(float f2) {
        return (float) Math.asin(f2);
    }

    public static float atan(float f2) {
        return (float) Math.atan(f2);
    }

    public static float atan2(float f2, float f3) {
        return (float) Math.atan2(f2, f3);
    }

    public static float constrain(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 > f4 ? f4 : f2;
    }

    public static int constrain(int i2, int i3, int i4) {
        if (i2 < i3) {
            return i3;
        }
        return i2 > i4 ? i4 : i2;
    }

    public static long constrain(long j2, long j3, long j4) {
        if (j2 < j3) {
            return j3;
        }
        return j2 > j4 ? j4 : j2;
    }

    public static float degrees(float f2) {
        return f2 * RAD_TO_DEG;
    }

    public static float dist(float f2, float f3, float f4, float f5) {
        float f6 = f4 - f2;
        float f7 = f5 - f3;
        return (float) Math.sqrt((f6 * f6) + (f7 * f7));
    }

    public static float exp(float f2) {
        return (float) Math.exp(f2);
    }

    public static float lerp(float f2, float f3, float f4) {
        return f2 + ((f3 - f2) * f4);
    }

    public static float log(float f2) {
        return (float) Math.log(f2);
    }

    public static float mag(float f2, float f3) {
        return (float) Math.sqrt((f2 * f2) + (f3 * f3));
    }

    public static float map(float f2, float f3, float f4, float f5, float f6) {
        return f4 + ((f4 - f5) * ((f6 - f2) / (f3 - f2)));
    }

    public static float max(float f2, float f3) {
        return f2 > f3 ? f2 : f3;
    }

    public static float max(float f2, float f3, float f4) {
        if (f2 > f3) {
            if (f2 > f4) {
                return f2;
            }
        } else if (f3 > f4) {
            return f3;
        }
        return f4;
    }

    public static float max(int i2, int i3) {
        return i2 > i3 ? i2 : i3;
    }

    public static float max(int i2, int i3, int i4) {
        if (i2 > i3) {
            if (i2 <= i4) {
                i2 = i4;
            }
            return i2;
        }
        if (i3 <= i4) {
            i3 = i4;
        }
        return i3;
    }

    public static float min(float f2, float f3) {
        return f2 < f3 ? f2 : f3;
    }

    public static float min(float f2, float f3, float f4) {
        if (f2 < f3) {
            if (f2 < f4) {
                return f2;
            }
        } else if (f3 < f4) {
            return f3;
        }
        return f4;
    }

    public static float min(int i2, int i3) {
        return i2 < i3 ? i2 : i3;
    }

    public static float min(int i2, int i3, int i4) {
        if (i2 < i3) {
            if (i2 >= i4) {
                i2 = i4;
            }
            return i2;
        }
        if (i3 >= i4) {
            i3 = i4;
        }
        return i3;
    }

    public static float norm(float f2, float f3, float f4) {
        return (f4 - f2) / (f3 - f2);
    }

    public static float pow(float f2, float f3) {
        return (float) Math.pow(f2, f3);
    }

    public static float radians(float f2) {
        return f2 * DEG_TO_RAD;
    }

    public static int random(int i2) {
        return (int) (sRandom.nextFloat() * i2);
    }

    public static void randomSeed(long j2) {
        sRandom.setSeed(j2);
    }

    public static float sq(float f2) {
        return f2 * f2;
    }

    public static float tan(float f2) {
        return (float) Math.tan(f2);
    }

    public static float dist(float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = f5 - f2;
        float f9 = f6 - f3;
        float f10 = f7 - f4;
        return (float) Math.sqrt((f8 * f8) + (f9 * f9) + (f10 * f10));
    }

    public static float mag(float f2, float f3, float f4) {
        return (float) Math.sqrt((f2 * f2) + (f3 * f3) + (f4 * f4));
    }

    public static int random(int i2, int i3) {
        return i2 >= i3 ? i2 : (int) ((sRandom.nextFloat() * (i3 - i2)) + i2);
    }

    public static float random(float f2) {
        return sRandom.nextFloat() * f2;
    }

    public static float random(float f2, float f3) {
        return f2 >= f3 ? f2 : (sRandom.nextFloat() * (f3 - f2)) + f2;
    }
}
