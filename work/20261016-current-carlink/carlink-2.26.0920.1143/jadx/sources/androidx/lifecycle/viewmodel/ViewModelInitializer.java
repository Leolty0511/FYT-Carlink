package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewModelInitializer<T extends ViewModel> {
    private final Class<T> clazz;
    private final l initializer;

    public ViewModelInitializer(Class<T> cls, l lVar) {
        b.h(cls, "clazz");
        b.h(lVar, "initializer");
        this.clazz = cls;
        this.initializer = lVar;
    }

    public final Class<T> getClazz$lifecycle_viewmodel_release() {
        return this.clazz;
    }

    public final l getInitializer$lifecycle_viewmodel_release() {
        return this.initializer;
    }
}
