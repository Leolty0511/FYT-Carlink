package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
final class ImmutableSortedAsList<E> extends RegularImmutableAsList<E> implements SortedIterable<E> {
    public ImmutableSortedAsList(ImmutableSortedSet<E> immutableSortedSet, ImmutableList<E> immutableList) {
        super(immutableSortedSet, immutableList);
    }

    @Override // com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return delegateCollection().comparator();
    }

    @Override // com.google.common.collect.ImmutableAsList, com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    @GwtIncompatible
    public int indexOf(Object obj) {
        int iIndexOf = delegateCollection().indexOf(obj);
        if (iIndexOf < 0 || !get(iIndexOf).equals(obj)) {
            return -1;
        }
        return iIndexOf;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    @GwtIncompatible
    public int lastIndexOf(Object obj) {
        return indexOf(obj);
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        int size = size();
        ImmutableList<? extends E> immutableListDelegateList = delegateList();
        Objects.requireNonNull(immutableListDelegateList);
        return CollectSpliterators.indexed(size, 1301, new e0(immutableListDelegateList, 1), comparator());
    }

    @Override // com.google.common.collect.ImmutableList
    @GwtIncompatible
    public ImmutableList<E> subListUnchecked(int i2, int i3) {
        return new RegularImmutableSortedSet(super.subListUnchecked(i2, i3), comparator()).asList();
    }

    @Override // com.google.common.collect.RegularImmutableAsList, com.google.common.collect.ImmutableAsList
    public ImmutableSortedSet<E> delegateCollection() {
        return (ImmutableSortedSet) super.delegateCollection();
    }
}
