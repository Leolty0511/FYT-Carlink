package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
final class JdkBackedImmutableSet<E> extends IndexedImmutableSet<E> {
    private final Set<?> delegate;
    private final ImmutableList<E> delegateList;

    public JdkBackedImmutableSet(Set<?> set, ImmutableList<E> immutableList) {
        this.delegate = set;
        this.delegateList = immutableList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.delegate.contains(obj);
    }

    @Override // com.google.common.collect.IndexedImmutableSet
    public E get(int i2) {
        return this.delegateList.get(i2);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.delegateList.size();
    }
}
