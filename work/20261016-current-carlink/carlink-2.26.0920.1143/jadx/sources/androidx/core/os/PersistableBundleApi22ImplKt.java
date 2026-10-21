package androidx.core.os;

import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(22)
final class PersistableBundleApi22ImplKt {
    public static final PersistableBundleApi22ImplKt INSTANCE = new PersistableBundleApi22ImplKt();

    private PersistableBundleApi22ImplKt() {
    }

    @DoNotInline
    public static final void putBoolean(PersistableBundle persistableBundle, String str, boolean z2) {
        b.h(persistableBundle, "persistableBundle");
        persistableBundle.putBoolean(str, z2);
    }

    @DoNotInline
    public static final void putBooleanArray(PersistableBundle persistableBundle, String str, boolean[] zArr) {
        b.h(persistableBundle, "persistableBundle");
        b.h(zArr, "value");
        persistableBundle.putBooleanArray(str, zArr);
    }
}
