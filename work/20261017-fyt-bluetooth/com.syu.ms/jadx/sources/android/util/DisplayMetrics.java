package android.util;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes.dex */
public class DisplayMetrics {
    public static final int DENSITY_400 = 400;
    public static final int DENSITY_DEFAULT = 160;
    public static final float DENSITY_DEFAULT_SCALE = 0.00625f;

    @Deprecated
    public static int DENSITY_DEVICE = getDeviceDensity();
    public static final int DENSITY_HIGH = 240;
    public static final int DENSITY_LOW = 120;
    public static final int DENSITY_MEDIUM = 160;
    public static final int DENSITY_TV = 213;
    public static final int DENSITY_XHIGH = 320;
    public static final int DENSITY_XXHIGH = 480;
    public static final int DENSITY_XXXHIGH = 640;
    public float density;
    public int densityDpi;
    public int heightPixels;
    public float noncompatDensity;
    public int noncompatDensityDpi;
    public int noncompatHeightPixels;
    public float noncompatScaledDensity;
    public int noncompatWidthPixels;
    public float noncompatXdpi;
    public float noncompatYdpi;
    public float scaledDensity;
    public int widthPixels;
    public float xdpi;
    public float ydpi;

    private static int getDeviceDensity() {
        return SystemProperties.getInt("persist.sys.lcd_density", SystemProperties.getInt("ro.sf.lcd_density", 160));
    }

    public boolean equals(Object obj) {
        return (obj instanceof DisplayMetrics) && equals((DisplayMetrics) obj);
    }

    public boolean equalsPhysical(DisplayMetrics displayMetrics) {
        return displayMetrics != null && this.widthPixels == displayMetrics.widthPixels && this.heightPixels == displayMetrics.heightPixels && this.density == displayMetrics.density && this.densityDpi == displayMetrics.densityDpi && this.xdpi == displayMetrics.xdpi && this.ydpi == displayMetrics.ydpi && this.noncompatWidthPixels == displayMetrics.noncompatWidthPixels && this.noncompatHeightPixels == displayMetrics.noncompatHeightPixels && this.noncompatDensity == displayMetrics.noncompatDensity && this.noncompatDensityDpi == displayMetrics.noncompatDensityDpi && this.noncompatXdpi == displayMetrics.noncompatXdpi && this.noncompatYdpi == displayMetrics.noncompatYdpi;
    }

    public int hashCode() {
        return this.widthPixels * this.heightPixels * this.densityDpi;
    }

    public void setTo(DisplayMetrics displayMetrics) {
        this.widthPixels = displayMetrics.widthPixels;
        this.heightPixels = displayMetrics.heightPixels;
        this.density = displayMetrics.density;
        this.densityDpi = displayMetrics.densityDpi;
        this.scaledDensity = displayMetrics.scaledDensity;
        this.xdpi = displayMetrics.xdpi;
        this.ydpi = displayMetrics.ydpi;
        this.noncompatWidthPixels = displayMetrics.noncompatWidthPixels;
        this.noncompatHeightPixels = displayMetrics.noncompatHeightPixels;
        this.noncompatDensity = displayMetrics.noncompatDensity;
        this.noncompatDensityDpi = displayMetrics.noncompatDensityDpi;
        this.noncompatScaledDensity = displayMetrics.noncompatScaledDensity;
        this.noncompatXdpi = displayMetrics.noncompatXdpi;
        this.noncompatYdpi = displayMetrics.noncompatYdpi;
    }

    public void setToDefaults() {
        this.widthPixels = 0;
        this.heightPixels = 0;
        int i2 = DENSITY_DEVICE;
        float f2 = i2 / 160.0f;
        this.density = f2;
        this.densityDpi = i2;
        this.scaledDensity = f2;
        float f3 = i2;
        this.xdpi = f3;
        float f4 = i2;
        this.ydpi = f4;
        this.noncompatWidthPixels = 0;
        this.noncompatHeightPixels = 0;
        this.noncompatDensity = f2;
        this.noncompatDensityDpi = i2;
        this.noncompatScaledDensity = f2;
        this.noncompatXdpi = f3;
        this.noncompatYdpi = f4;
    }

    public String toString() {
        return "DisplayMetrics{density=" + this.density + ", width=" + this.widthPixels + ", height=" + this.heightPixels + ", scaledDensity=" + this.scaledDensity + ", xdpi=" + this.xdpi + ", ydpi=" + this.ydpi + "}";
    }

    public boolean equals(DisplayMetrics displayMetrics) {
        return equalsPhysical(displayMetrics) && this.scaledDensity == displayMetrics.scaledDensity && this.noncompatScaledDensity == displayMetrics.noncompatScaledDensity;
    }
}
