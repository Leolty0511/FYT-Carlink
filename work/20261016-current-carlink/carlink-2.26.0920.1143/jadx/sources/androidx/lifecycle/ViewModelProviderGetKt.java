package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.lifecycle.viewmodel.CreationExtras;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewModelProviderGetKt {
    public static final CreationExtras defaultCreationExtras(ViewModelStoreOwner viewModelStoreOwner) {
        t.b.h(viewModelStoreOwner, "owner");
        if (!(viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory)) {
            return CreationExtras.Empty.INSTANCE;
        }
        CreationExtras defaultViewModelCreationExtras = ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras();
        t.b.g(defaultViewModelCreationExtras, "{\n        owner.defaultV…ModelCreationExtras\n    }");
        return defaultViewModelCreationExtras;
    }

    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> VM get(ViewModelProvider viewModelProvider) {
        t.b.h(viewModelProvider, "<this>");
        t.b.w();
        throw null;
    }
}
