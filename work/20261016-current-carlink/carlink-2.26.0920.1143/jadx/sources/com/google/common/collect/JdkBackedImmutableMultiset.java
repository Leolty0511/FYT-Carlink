package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
final class JdkBackedImmutableMultiset<E> extends ImmutableMultiset<E> {
    private final Map<E, Integer> delegateMap;
    private transient ImmutableSet<E> elementSet;
    private final ImmutableList<Multiset.Entry<E>> entries;
    private final long size;

    private JdkBackedImmutableMultiset(Map<E, Integer> map, ImmutableList<Multiset.Entry<E>> immutableList, long j2) {
        this.delegateMap = map;
        this.entries = immutableList;
        this.size = j2;
    }

    public static <E> ImmutableMultiset<E> create(Collection<? extends Multiset.Entry<? extends E>> collection) {
        Multiset.Entry[] entryArr = (Multiset.Entry[]) collection.toArray(new Multiset.Entry[0]);
        HashMap mapNewHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(entryArr.length);
        long j2 = 0;
        for (int i2 = 0; i2 < entryArr.length; i2++) {
            Multiset.Entry entry = entryArr[i2];
            int count = entry.getCount();
            j2 += (long) count;
            Object objCheckNotNull = Preconditions.checkNotNull(entry.getElement());
            mapNewHashMapWithExpectedSize.put(objCheckNotNull, Integer.valueOf(count));
            if (!(entry instanceof Multisets.ImmutableEntry)) {
                entryArr[i2] = Multisets.immutableEntry(objCheckNotNull, count);
            }
        }
        return new JdkBackedImmutableMultiset(mapNewHashMapWithExpectedSize, ImmutableList.asImmutableList(entryArr), j2);
    }

    @Override // com.google.common.collect.Multiset
    public int count(Object obj) {
        return ((Integer) this.delegateMap.getOrDefault(obj, 0)).intValue();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public Multiset.Entry<E> getEntry(int i2) {
        return this.entries.get(i2);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(this.size);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.elementSet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableMultiset.ElementSet elementSet = new ImmutableMultiset.ElementSet(this.entries, this);
        this.elementSet = elementSet;
        return elementSet;
    }
}
