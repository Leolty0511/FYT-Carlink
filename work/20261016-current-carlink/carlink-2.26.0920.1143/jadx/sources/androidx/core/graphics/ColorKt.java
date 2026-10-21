package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.app.backup.FullBackup;
import android.graphics.Color;
import android.graphics.ColorSpace;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorKt {
    public static final int component1(@ColorInt int i2) {
        return (i2 >> 24) & 255;
    }

    public static final int component2(@ColorInt int i2) {
        return (i2 >> 16) & 255;
    }

    public static final int component3(@ColorInt int i2) {
        return (i2 >> 8) & 255;
    }

    public static final int component4(@ColorInt int i2) {
        return i2 & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(@ColorInt int i2, ColorSpace.Named named) {
        t.b.h(named, "colorSpace");
        return Color.convert(i2, ColorSpace.get(named));
    }

    public static final int getAlpha(@ColorInt int i2) {
        return (i2 >> 24) & 255;
    }

    public static final int getBlue(@ColorInt int i2) {
        return i2 & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final ColorSpace getColorSpace(long j2) {
        ColorSpace colorSpace = Color.colorSpace(j2);
        t.b.g(colorSpace, "colorSpace(this)");
        return colorSpace;
    }

    public static final int getGreen(@ColorInt int i2) {
        return (i2 >> 8) & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getLuminance(@ColorInt int i2) {
        return Color.luminance(i2);
    }

    public static final int getRed(@ColorInt int i2) {
        return (i2 >> 16) & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isSrgb(long j2) {
        return Color.isSrgb(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isWideGamut(long j2) {
        return Color.isWideGamut(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Color plus(Color color, Color color2) {
        t.b.h(color, "<this>");
        t.b.h(color2, FullBackup.CACHE_TREE_TOKEN);
        Color colorCompositeColors = ColorUtils.compositeColors(color2, color);
        t.b.g(colorCompositeColors, "compositeColors(c, this)");
        return colorCompositeColors;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Color toColor(@ColorInt int i2) {
        Color colorValueOf = Color.valueOf(i2);
        t.b.g(colorValueOf, "valueOf(this)");
        return colorValueOf;
    }

    @ColorInt
    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final int toColorInt(long j2) {
        return Color.toArgb(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long toColorLong(@ColorInt int i2) {
        return Color.pack(i2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component1(Color color) {
        t.b.h(color, "<this>");
        return color.getComponent(0);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component2(Color color) {
        t.b.h(color, "<this>");
        return color.getComponent(1);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component3(Color color) {
        t.b.h(color, "<this>");
        return color.getComponent(2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component4(Color color) {
        t.b.h(color, "<this>");
        return color.getComponent(3);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(@ColorInt int i2, ColorSpace colorSpace) {
        t.b.h(colorSpace, "colorSpace");
        return Color.convert(i2, colorSpace);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getAlpha(long j2) {
        return Color.alpha(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getBlue(long j2) {
        return Color.blue(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getGreen(long j2) {
        return Color.green(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getLuminance(long j2) {
        return Color.luminance(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getRed(long j2) {
        return Color.red(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Color toColor(long j2) {
        Color colorValueOf = Color.valueOf(j2);
        t.b.g(colorValueOf, "valueOf(this)");
        return colorValueOf;
    }

    @ColorInt
    public static final int toColorInt(String str) {
        t.b.h(str, "<this>");
        return Color.parseColor(str);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component1(long j2) {
        return Color.red(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component2(long j2) {
        return Color.green(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component3(long j2) {
        return Color.blue(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component4(long j2) {
        return Color.alpha(j2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(long j2, ColorSpace.Named named) {
        t.b.h(named, "colorSpace");
        return Color.convert(j2, ColorSpace.get(named));
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(long j2, ColorSpace colorSpace) {
        t.b.h(colorSpace, "colorSpace");
        return Color.convert(j2, colorSpace);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Color convertTo(Color color, ColorSpace.Named named) {
        t.b.h(color, "<this>");
        t.b.h(named, "colorSpace");
        Color colorConvert = color.convert(ColorSpace.get(named));
        t.b.g(colorConvert, "convert(ColorSpace.get(colorSpace))");
        return colorConvert;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Color convertTo(Color color, ColorSpace colorSpace) {
        t.b.h(color, "<this>");
        t.b.h(colorSpace, "colorSpace");
        Color colorConvert = color.convert(colorSpace);
        t.b.g(colorConvert, "convert(colorSpace)");
        return colorConvert;
    }
}
