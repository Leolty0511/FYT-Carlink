package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true, serializable = true)
@ElementTypesAreNonnullByDefault
class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;

    @VisibleForTesting
    static final int MAX_HASH_BUCKET_LENGTH = 9;

    @VisibleForTesting
    static final double MAX_LOAD_FACTOR = 1.0d;

    @LazyInit
    private transient ImmutableSet<E> elementSet;
    private final transient Multisets.ImmutableEntry<E>[] entries;
    private final transient int hashCode;
    private final transient Multisets.ImmutableEntry<?>[] hashTable;
    private final transient int size;
    private static final Multisets.ImmutableEntry<?>[] EMPTY_ARRAY = new Multisets.ImmutableEntry[0];
    static final ImmutableMultiset<Object> EMPTY = create(ImmutableList.of());

    public static final class NonTerminalEntry<E> extends Multisets.ImmutableEntry<E> {
        private final Multisets.ImmutableEntry<E> nextInBucket;

        public NonTerminalEntry(E e2, int i2, Multisets.ImmutableEntry<E> immutableEntry) {
            super(e2, i2);
            this.nextInBucket = immutableEntry;
        }

        @Override // com.google.common.collect.Multisets.ImmutableEntry
        public Multisets.ImmutableEntry<E> nextInBucket() {
            return this.nextInBucket;
        }
    }

    private RegularImmutableMultiset(Multisets.ImmutableEntry<E>[] immutableEntryArr, Multisets.ImmutableEntry<?>[] immutableEntryArr2, int i2, int i3, ImmutableSet<E> immutableSet) {
        this.entries = immutableEntryArr;
        this.hashTable = immutableEntryArr2;
        this.size = i2;
        this.hashCode = i3;
        this.elementSet = immutableSet;
    }

    public static <E> ImmutableMultiset<E> create(Collection<? extends Multiset.Entry<? extends E>> collection) {
        int size = collection.size();
        Multisets.ImmutableEntry[] immutableEntryArr = new Multisets.ImmutableEntry[size];
        if (size == 0) {
            return new RegularImmutableMultiset(immutableEntryArr, EMPTY_ARRAY, 0, 0, ImmutableSet.of());
        }
        int iClosedTableSize = Hashing.closedTableSize(size, MAX_LOAD_FACTOR);
        int i2 = iClosedTableSize - 1;
        Multisets.ImmutableEntry[] immutableEntryArr2 = new Multisets.ImmutableEntry[iClosedTableSize];
        long j2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (Multiset.Entry<? extends E> entry : collection) {
            Object objCheckNotNull = Preconditions.checkNotNull(entry.getElement());
            int count = entry.getCount();
            int iHashCode = objCheckNotNull.hashCode();
            int iSmear = Hashing.smear(iHashCode) & i2;
            Multisets.ImmutableEntry immutableEntry = immutableEntryArr2[iSmear];
            Multisets.ImmutableEntry immutableEntry2 = immutableEntry == null ? (entry instanceof Multisets.ImmutableEntry) && !(entry instanceof NonTerminalEntry) ? (Multisets.ImmutableEntry) entry : new Multisets.ImmutableEntry(objCheckNotNull, count) : new NonTerminalEntry(objCheckNotNull, count, immutableEntry);
            i3 += iHashCode ^ count;
            immutableEntryArr[i4] = immutableEntry2;
            immutableEntryArr2[iSmear] = immutableEntry2;
            j2 += (long) count;
            i4++;
        }
        return hashFloodingDetected(immutableEntryArr2) ? JdkBackedImmutableMultiset.create(ImmutableList.asImmutableList(immutableEntryArr)) : new RegularImmutableMultiset(immutableEntryArr, immutableEntryArr2, Ints.saturatedCast(j2), i3, null);
    }

    private static boolean hashFloodingDetected(Multisets.ImmutableEntry<?>[] immutableEntryArr) {
        for (Multisets.ImmutableEntry<?> immutableEntryNextInBucket : immutableEntryArr) {
            int i2 = 0;
            for (; immutableEntryNextInBucket != null; immutableEntryNextInBucket = immutableEntryNextInBucket.nextInBucket()) {
                i2++;
                if (i2 > 9) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Multiset
    public int count(Object obj) {
        Multisets.ImmutableEntry<?>[] immutableEntryArr = this.hashTable;
        if (obj != null && immutableEntryArr.length != 0) {
            for (Multisets.ImmutableEntry<?> immutableEntryNextInBucket = immutableEntryArr[Hashing.smearedHash(obj) & (immutableEntryArr.length - 1)]; immutableEntryNextInBucket != null; immutableEntryNextInBucket = immutableEntryNextInBucket.nextInBucket()) {
                if (Objects.equal(obj, immutableEntryNextInBucket.getElement())) {
                    return immutableEntryNextInBucket.getCount();
                }
            }
        }
        return 0;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public Multiset.Entry<E> getEntry(int i2) {
        return this.entries[i2];
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return this.hashCode;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.elementSet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableMultiset.ElementSet elementSet = new ImmutableMultiset.ElementSet(Arrays.asList(this.entries), this);
        this.elementSet = elementSet;
        return elementSet;
    }
}
