package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.e;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class InitializerViewModelFactory implements ViewModelProvider.Factory {
    private final ViewModelInitializer<?>[] initializers;

    public InitializerViewModelFactory(ViewModelInitializer<?>... viewModelInitializerArr) {
        b.h(viewModelInitializerArr, "initializers");
        this.initializers = viewModelInitializerArr;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final /* synthetic */ ViewModel create(Class cls) {
        return e.a(this, cls);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
        b.h(cls, "modelClass");
        b.h(creationExtras, "extras");
        T t2 = null;
        for (ViewModelInitializer<?> viewModelInitializer : this.initializers) {
            if (b.a(viewModelInitializer.getClazz$lifecycle_viewmodel_release(), cls)) {
                Object objInvoke = viewModelInitializer.getInitializer$lifecycle_viewmodel_release().invoke(creationExtras);
                t2 = objInvoke instanceof ViewModel ? (T) objInvoke : null;
            }
        }
        if (t2 != null) {
            return t2;
        }
        throw new IllegalArgumentException("No initializer set for given class ".concat(cls.getName()));
    }
}
