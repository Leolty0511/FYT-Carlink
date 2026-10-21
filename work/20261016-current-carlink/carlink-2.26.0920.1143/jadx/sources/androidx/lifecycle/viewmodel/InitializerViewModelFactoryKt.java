package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class InitializerViewModelFactoryKt {
    public static final /* synthetic */ <VM extends ViewModel> void initializer(InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder, l lVar) {
        b.h(initializerViewModelFactoryBuilder, "<this>");
        b.h(lVar, "initializer");
        b.w();
        throw null;
    }

    public static final ViewModelProvider.Factory viewModelFactory(l lVar) {
        b.h(lVar, "builder");
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        lVar.invoke(initializerViewModelFactoryBuilder);
        return initializerViewModelFactoryBuilder.build();
    }
}
