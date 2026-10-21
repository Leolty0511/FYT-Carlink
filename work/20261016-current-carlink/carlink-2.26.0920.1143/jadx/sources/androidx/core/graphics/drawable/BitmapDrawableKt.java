package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class BitmapDrawableKt {
    public static final BitmapDrawable toDrawable(Bitmap bitmap, Resources resources) {
        b.h(bitmap, "<this>");
        b.h(resources, "resources");
        return new BitmapDrawable(resources, bitmap);
    }
}
