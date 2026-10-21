package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewModelLazy<VM extends ViewModel> implements s.a {
    private VM cached;
    private final z.a extrasProducer;
    private final z.a factoryProducer;
    private final z.a storeProducer;
    private final d0.c viewModelClass;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(d0.c cVar, z.a aVar, z.a aVar2) {
        this(cVar, aVar, aVar2, null, 8, null);
        t.b.h(cVar, "viewModelClass");
        t.b.h(aVar, "storeProducer");
        t.b.h(aVar2, "factoryProducer");
    }

    public boolean isInitialized() {
        return this.cached != null;
    }

    public ViewModelLazy(d0.c cVar, z.a aVar, z.a aVar2, z.a aVar3) {
        t.b.h(cVar, "viewModelClass");
        t.b.h(aVar, "storeProducer");
        t.b.h(aVar2, "factoryProducer");
        t.b.h(aVar3, "extrasProducer");
        this.viewModelClass = cVar;
        this.storeProducer = aVar;
        this.factoryProducer = aVar2;
        this.extrasProducer = aVar3;
    }

    @Override // s.a
    public VM getValue() {
        VM vm = this.cached;
        if (vm != null) {
            return vm;
        }
        ViewModelProvider viewModelProvider = new ViewModelProvider((ViewModelStore) this.storeProducer.invoke(), (ViewModelProvider.Factory) this.factoryProducer.invoke(), (CreationExtras) this.extrasProducer.invoke());
        d0.c cVar = this.viewModelClass;
        t.b.h(cVar, "<this>");
        Class clsA = ((kotlin.jvm.internal.b) cVar).a();
        t.b.f(clsA, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        VM vm2 = (VM) viewModelProvider.get(clsA);
        this.cached = vm2;
        return vm2;
    }

    public /* synthetic */ ViewModelLazy(d0.c cVar, z.a aVar, z.a aVar2, z.a aVar3, int i2, kotlin.jvm.internal.d dVar) {
        this(cVar, aVar, aVar2, (i2 & 8) != 0 ? new z.a() { // from class: androidx.lifecycle.ViewModelLazy.1
            @Override // z.a
            public final CreationExtras.Empty invoke() {
                return CreationExtras.Empty.INSTANCE;
            }
        } : aVar3);
    }
}
