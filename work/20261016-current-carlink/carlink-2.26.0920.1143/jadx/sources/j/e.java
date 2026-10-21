package j;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.collection.LruCache;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends LruCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f977a;

    public e(Context context) {
        super(20971520);
        this.f977a = context;
    }

    @Override // androidx.collection.LruCache
    public final Object create(Object obj) {
        return this.f977a.getResources().getDrawable(((Number) obj).intValue(), null);
    }

    @Override // androidx.collection.LruCache
    public final void entryRemoved(boolean z2, Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj).intValue();
        Drawable drawable = (Drawable) obj2;
        t.b.h(drawable, "oldValue");
        super.entryRemoved(z2, Integer.valueOf(iIntValue), drawable, (Drawable) obj3);
    }

    @Override // androidx.collection.LruCache
    public final int sizeOf(Object obj, Object obj2) {
        ((Number) obj).intValue();
        Drawable drawable = (Drawable) obj2;
        t.b.h(drawable, "value");
        return ((BitmapDrawable) drawable).getBitmap().getAllocationByteCount();
    }
}
