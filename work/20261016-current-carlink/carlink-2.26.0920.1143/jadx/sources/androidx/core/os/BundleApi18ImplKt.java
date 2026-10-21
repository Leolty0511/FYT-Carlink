package androidx.core.os;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(18)
final class BundleApi18ImplKt {
    public static final BundleApi18ImplKt INSTANCE = new BundleApi18ImplKt();

    private BundleApi18ImplKt() {
    }

    @DoNotInline
    public static final void putBinder(Bundle bundle, String str, IBinder iBinder) {
        b.h(bundle, "bundle");
        b.h(str, "key");
        bundle.putBinder(str, iBinder);
    }
}
