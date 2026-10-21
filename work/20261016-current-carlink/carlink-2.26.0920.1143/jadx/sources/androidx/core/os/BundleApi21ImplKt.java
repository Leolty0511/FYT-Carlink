package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(21)
final class BundleApi21ImplKt {
    public static final BundleApi21ImplKt INSTANCE = new BundleApi21ImplKt();

    private BundleApi21ImplKt() {
    }

    @DoNotInline
    public static final void putSize(Bundle bundle, String str, Size size) {
        b.h(bundle, "bundle");
        b.h(str, "key");
        bundle.putSize(str, size);
    }

    @DoNotInline
    public static final void putSizeF(Bundle bundle, String str, SizeF sizeF) {
        b.h(bundle, "bundle");
        b.h(str, "key");
        bundle.putSizeF(str, sizeF);
    }
}
