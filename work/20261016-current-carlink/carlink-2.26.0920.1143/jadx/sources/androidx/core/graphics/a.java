package androidx.core.graphics;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ Typeface.CustomFallbackBuilder d(FontFamily fontFamily) {
        return new Typeface.CustomFallbackBuilder(fontFamily);
    }

    public static /* synthetic */ Font.Builder e(Resources resources, int i2) {
        return new Font.Builder(resources, i2);
    }

    public static /* synthetic */ Font.Builder h(ParcelFileDescriptor parcelFileDescriptor) {
        return new Font.Builder(parcelFileDescriptor);
    }

    public static /* synthetic */ FontFamily.Builder l(Font font) {
        return new FontFamily.Builder(font);
    }

    public static /* synthetic */ FontStyle n(int i2, int i3) {
        return new FontStyle(i2, i3);
    }

    public static /* synthetic */ void o() {
    }

    public static /* synthetic */ void t() {
    }

    public static /* synthetic */ void w() {
    }

    public static /* synthetic */ void y() {
    }
}
