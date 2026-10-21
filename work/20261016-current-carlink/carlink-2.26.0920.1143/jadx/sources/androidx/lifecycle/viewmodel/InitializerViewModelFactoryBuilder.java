package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import d0.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
@ViewModelFactoryDsl
public final class InitializerViewModelFactoryBuilder {
    private final List<ViewModelInitializer<?>> initializers = new ArrayList();

    public final <T extends ViewModel> void addInitializer(c cVar, l lVar) {
        b.h(cVar, "clazz");
        b.h(lVar, "initializer");
        List<ViewModelInitializer<?>> list = this.initializers;
        Class clsA = ((kotlin.jvm.internal.b) cVar).a();
        b.f(clsA, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        list.add(new ViewModelInitializer<>(clsA, lVar));
    }

    public final ViewModelProvider.Factory build() {
        Object[] array = this.initializers.toArray(new ViewModelInitializer[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) array;
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
