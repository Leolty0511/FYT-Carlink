package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
abstract class IndexedImmutableSet<E> extends ImmutableSet.CachingAsList<E> {
    @Override // com.google.common.collect.ImmutableCollection
    @GwtIncompatible
    public int copyIntoArray(Object[] objArr, int i2) {
        return asList().copyIntoArray(objArr, i2);
    }

    @Override // com.google.common.collect.ImmutableSet.CachingAsList
    public ImmutableList<E> createAsList() {
        return new ImmutableAsList<E>() { // from class: com.google.common.collect.IndexedImmutableSet.1
            @Override // com.google.common.collect.ImmutableAsList
            public ImmutableCollection<E> delegateCollection() {
                return IndexedImmutableSet.this;
            }

            @Override // java.util.List
            public E get(int i2) {
                return (E) IndexedImmutableSet.this.get(i2);
            }

            @Override // com.google.common.collect.ImmutableAsList, com.google.common.collect.ImmutableCollection
            public boolean isPartialView() {
                return IndexedImmutableSet.this.isPartialView();
            }

            @Override // com.google.common.collect.ImmutableAsList, java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return IndexedImmutableSet.this.size();
            }
        };
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        Preconditions.checkNotNull(consumer);
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            consumer.accept(get(i2));
        }
    }

    public abstract E get(int i2);

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return CollectSpliterators.indexed(size(), 1297, new h(this, 4));
    }

    @Override // com.google.common.collect.ImmutableSet.CachingAsList, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
    public UnmodifiableIterator<E> iterator() {
        return asList().iterator();
    }
}
