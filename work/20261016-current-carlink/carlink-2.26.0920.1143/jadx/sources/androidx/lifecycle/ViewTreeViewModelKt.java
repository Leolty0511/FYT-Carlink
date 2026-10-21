package androidx.lifecycle;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewTreeViewModelKt {
    public static final ViewModelStoreOwner findViewTreeViewModelStoreOwner(View view) {
        t.b.h(view, "<this>");
        return ViewTreeViewModelStoreOwner.get(view);
    }
}
