package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true, serializable = true)
@ElementTypesAreNonnullByDefault
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;
    static final int SPLITERATOR_CHARACTERISTICS = 1297;

    public static class Builder<E> extends ImmutableCollection.Builder<E> {
        boolean forceCopy;
        private SetBuilderImpl<E> impl;

        public Builder() {
            this(0);
        }

        @CanIgnoreReturnValue
        public Builder<E> combine(Builder<E> builder) {
            Objects.requireNonNull(this.impl);
            Objects.requireNonNull(builder.impl);
            copyIfNecessary();
            this.impl = this.impl.combine(builder.impl);
            return this;
        }

        public void copy() {
            Objects.requireNonNull(this.impl);
            this.impl = this.impl.copy();
        }

        public final void copyIfNecessary() {
            if (this.forceCopy) {
                copy();
                this.forceCopy = false;
            }
        }

        @VisibleForTesting
        public void forceJdk() {
            Objects.requireNonNull(this.impl);
            this.impl = new JdkBackedSetBuilderImpl(this.impl);
        }

        public Builder(int i2) {
            if (i2 > 0) {
                this.impl = new RegularSetBuilderImpl(i2);
            } else {
                this.impl = EmptySetBuilderImpl.instance();
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSet<E> build() {
            Objects.requireNonNull(this.impl);
            this.forceCopy = true;
            SetBuilderImpl<E> setBuilderImplReview = this.impl.review();
            this.impl = setBuilderImplReview;
            return setBuilderImplReview.build();
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E e2) {
            Objects.requireNonNull(this.impl);
            Preconditions.checkNotNull(e2);
            copyIfNecessary();
            this.impl = this.impl.add(e2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        public Builder(boolean z2) {
            this.impl = null;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }
    }

    @GwtCompatible
    public static abstract class CachingAsList<E> extends ImmutableSet<E> {

        @RetainedWith
        @LazyInit
        private transient ImmutableList<E> asList;

        @Override // com.google.common.collect.ImmutableCollection
        public ImmutableList<E> asList() {
            ImmutableList<E> immutableList = this.asList;
            if (immutableList != null) {
                return immutableList;
            }
            ImmutableList<E> immutableListCreateAsList = createAsList();
            this.asList = immutableListCreateAsList;
            return immutableListCreateAsList;
        }

        public ImmutableList<E> createAsList() {
            return new RegularImmutableAsList(this, toArray());
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }
    }

    public static final class EmptySetBuilderImpl<E> extends SetBuilderImpl<E> {
        private static final EmptySetBuilderImpl<Object> INSTANCE = new EmptySetBuilderImpl<>();

        private EmptySetBuilderImpl() {
            super(0);
        }

        public static <E> SetBuilderImpl<E> instance() {
            return INSTANCE;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> add(E e2) {
            return new RegularSetBuilderImpl(4).add(e2);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public ImmutableSet<E> build() {
            return ImmutableSet.of();
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> copy() {
            return this;
        }
    }

    public static abstract class Indexed<E> extends CachingAsList<E> {
        @Override // com.google.common.collect.ImmutableCollection
        public int copyIntoArray(Object[] objArr, int i2) {
            return asList().copyIntoArray(objArr, i2);
        }

        @Override // com.google.common.collect.ImmutableSet.CachingAsList
        public ImmutableList<E> createAsList() {
            return new ImmutableAsList<E>() { // from class: com.google.common.collect.ImmutableSet.Indexed.1
                @Override // java.util.List
                public E get(int i2) {
                    return (E) Indexed.this.get(i2);
                }

                @Override // com.google.common.collect.ImmutableAsList
                public Indexed<E> delegateCollection() {
                    return Indexed.this;
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
            return CollectSpliterators.indexed(size(), ImmutableSet.SPLITERATOR_CHARACTERISTICS, new h(this, 2));
        }

        @Override // com.google.common.collect.ImmutableSet.CachingAsList, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public UnmodifiableIterator<E> iterator() {
            return asList().iterator();
        }
    }

    public static final class JdkBackedSetBuilderImpl<E> extends SetBuilderImpl<E> {
        private final Set<Object> delegate;

        public JdkBackedSetBuilderImpl(SetBuilderImpl<E> setBuilderImpl) {
            super(setBuilderImpl);
            this.delegate = Sets.newHashSetWithExpectedSize(this.distinct);
            for (int i2 = 0; i2 < this.distinct; i2++) {
                Set<Object> set = this.delegate;
                E e2 = this.dedupedElements[i2];
                Objects.requireNonNull(e2);
                set.add(e2);
            }
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> add(E e2) {
            Preconditions.checkNotNull(e2);
            if (this.delegate.add(e2)) {
                addDedupedElement(e2);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public ImmutableSet<E> build() {
            int i2 = this.distinct;
            if (i2 == 0) {
                return ImmutableSet.of();
            }
            if (i2 != 1) {
                return new JdkBackedImmutableSet(this.delegate, ImmutableList.asImmutableList(this.dedupedElements, this.distinct));
            }
            E e2 = this.dedupedElements[0];
            Objects.requireNonNull(e2);
            return ImmutableSet.of((Object) e2);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> copy() {
            return new JdkBackedSetBuilderImpl(this);
        }
    }

    @J2ktIncompatible
    public static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    public static <E> Builder<E> builderWithExpectedSize(int i2) {
        CollectPreconditions.checkNonnegative(i2, "expectedSize");
        return new Builder<>(i2);
    }

    static int chooseTableSize(int i2) {
        int iMax = Math.max(i2, 2);
        if (iMax >= CUTOFF) {
            Preconditions.checkArgument(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * DESIRED_LOAD_FACTOR < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.collect.ImmutableSet$SetBuilderImpl] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    private static <E> ImmutableSet<E> construct(int i2, int i3, Object... objArr) {
        ?? r1;
        if (i2 == 0) {
            return of();
        }
        int i4 = 0;
        if (i2 == 1) {
            return of(objArr[0]);
        }
        RegularSetBuilderImpl regularSetBuilderImpl = new RegularSetBuilderImpl(i3);
        while (i4 < i2) {
            r1 = regularSetBuilderImpl;
            Object objAdd = r1.add(Preconditions.checkNotNull(objArr[i4]));
            i4++;
            r1 = objAdd;
        }
        r1 = regularSetBuilderImpl;
        return r1.review().build();
    }

    private static <E> ImmutableSet<E> constructUnknownDuplication(int i2, Object... objArr) {
        return construct(i2, Math.max(4, IntMath.sqrt(i2, RoundingMode.CEILING)), objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        } else if (collection instanceof EnumSet) {
            return copyOfEnumSet((EnumSet) collection);
        }
        Object[] array = collection.toArray();
        return collection instanceof Set ? construct(array.length, array.length, array) : constructUnknownDuplication(array.length, array);
    }

    private static ImmutableSet copyOfEnumSet(EnumSet enumSet) {
        return ImmutableEnumSet.asImmutable(EnumSet.copyOf(enumSet));
    }

    public static <E> ImmutableSet<E> of() {
        return RegularImmutableSet.EMPTY;
    }

    @J2ktIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        return CollectCollectors.toImmutableSet();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.hashCodeImpl(this);
    }

    public boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract UnmodifiableIterator<E> iterator();

    @Override // com.google.common.collect.ImmutableCollection
    @J2ktIncompatible
    Object writeReplace() {
        return new SerializedForm(toArray());
    }

    public static <E> ImmutableSet<E> of(E e2) {
        return new SingletonImmutableSet(e2);
    }

    public static abstract class SetBuilderImpl<E> {
        E[] dedupedElements;
        int distinct;

        public SetBuilderImpl(int i2) {
            this.dedupedElements = (E[]) new Object[i2];
            this.distinct = 0;
        }

        private void ensureCapacity(int i2) {
            E[] eArr = this.dedupedElements;
            if (i2 > eArr.length) {
                this.dedupedElements = (E[]) Arrays.copyOf(this.dedupedElements, ImmutableCollection.Builder.expandedCapacity(eArr.length, i2));
            }
        }

        public abstract SetBuilderImpl<E> add(E e2);

        public final void addDedupedElement(E e2) {
            ensureCapacity(this.distinct + 1);
            E[] eArr = this.dedupedElements;
            int i2 = this.distinct;
            this.distinct = i2 + 1;
            eArr[i2] = e2;
        }

        public abstract ImmutableSet<E> build();

        public final SetBuilderImpl<E> combine(SetBuilderImpl<E> setBuilderImpl) {
            SetBuilderImpl<E> setBuilderImplAdd = this;
            for (int i2 = 0; i2 < setBuilderImpl.distinct; i2++) {
                E e2 = setBuilderImpl.dedupedElements[i2];
                Objects.requireNonNull(e2);
                setBuilderImplAdd = setBuilderImplAdd.add(e2);
            }
            return setBuilderImplAdd;
        }

        public abstract SetBuilderImpl<E> copy();

        public SetBuilderImpl<E> review() {
            return this;
        }

        public SetBuilderImpl(SetBuilderImpl<E> setBuilderImpl) {
            E[] eArr = setBuilderImpl.dedupedElements;
            this.dedupedElements = (E[]) Arrays.copyOf(eArr, eArr.length);
            this.distinct = setBuilderImpl.distinct;
        }
    }

    public static <E> ImmutableSet<E> of(E e2, E e3) {
        return construct(2, 2, e2, e3);
    }

    public static final class RegularSetBuilderImpl<E> extends SetBuilderImpl<E> {
        static final int MAX_RUN_MULTIPLIER = 13;
        private int expandTableThreshold;
        private int hashCode;
        private Object[] hashTable;
        private int maxRunBeforeFallback;

        public RegularSetBuilderImpl(int i2) {
            super(i2);
            this.hashTable = null;
            this.maxRunBeforeFallback = 0;
            this.expandTableThreshold = 0;
        }

        public static boolean hashFloodingDetected(Object[] objArr) {
            int iMaxRunBeforeFallback = maxRunBeforeFallback(objArr.length);
            int length = objArr.length - 1;
            int i2 = 0;
            int i3 = 0;
            while (i2 < objArr.length) {
                if (i2 != i3 || objArr[i2] != null) {
                    int i4 = i2 + iMaxRunBeforeFallback;
                    for (int i5 = i4 - 1; i5 >= i3; i5--) {
                        if (objArr[i5 & length] == null) {
                            i3 = i4;
                            i2 = i5 + 1;
                        }
                    }
                    return true;
                }
                i3 = i2 + iMaxRunBeforeFallback;
                if (objArr[(i3 - 1) & length] != null) {
                    i3 = i2 + 1;
                }
                i2 = i3;
            }
            return false;
        }

        private SetBuilderImpl<E> insertInHashTable(E e2) {
            Objects.requireNonNull(this.hashTable);
            int iHashCode = e2.hashCode();
            int iSmear = Hashing.smear(iHashCode);
            int length = this.hashTable.length - 1;
            for (int i2 = iSmear; i2 - iSmear < this.maxRunBeforeFallback; i2++) {
                int i3 = i2 & length;
                Object obj = this.hashTable[i3];
                if (obj == null) {
                    addDedupedElement(e2);
                    this.hashTable[i3] = e2;
                    this.hashCode += iHashCode;
                    ensureTableCapacity(this.distinct);
                    return this;
                }
                if (obj.equals(e2)) {
                    return this;
                }
            }
            return new JdkBackedSetBuilderImpl(this).add(e2);
        }

        public static int maxRunBeforeFallback(int i2) {
            return IntMath.log2(i2, RoundingMode.UNNECESSARY) * 13;
        }

        public static Object[] rebuildHashTable(int i2, Object[] objArr, int i3) {
            int i4;
            Object[] objArr2 = new Object[i2];
            int i5 = i2 - 1;
            for (int i6 = 0; i6 < i3; i6++) {
                Object obj = objArr[i6];
                Objects.requireNonNull(obj);
                int iSmear = Hashing.smear(obj.hashCode());
                while (true) {
                    i4 = iSmear & i5;
                    if (objArr2[i4] == null) {
                        break;
                    }
                    iSmear++;
                }
                objArr2[i4] = obj;
            }
            return objArr2;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> add(E e2) {
            Preconditions.checkNotNull(e2);
            if (this.hashTable != null) {
                return insertInHashTable(e2);
            }
            if (this.distinct == 0) {
                addDedupedElement(e2);
                return this;
            }
            ensureTableCapacity(this.dedupedElements.length);
            E e3 = this.dedupedElements[0];
            this.distinct--;
            return insertInHashTable(e3).add(e2);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public ImmutableSet<E> build() {
            int i2 = this.distinct;
            if (i2 == 0) {
                return ImmutableSet.of();
            }
            if (i2 == 1) {
                E e2 = this.dedupedElements[0];
                Objects.requireNonNull(e2);
                return ImmutableSet.of((Object) e2);
            }
            Object[] objArrCopyOf = this.dedupedElements;
            if (i2 != objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i2);
            }
            int i3 = this.hashCode;
            Object[] objArr = this.hashTable;
            Objects.requireNonNull(objArr);
            return new RegularImmutableSet(objArrCopyOf, i3, objArr, this.hashTable.length - 1);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> copy() {
            return new RegularSetBuilderImpl(this);
        }

        public void ensureTableCapacity(int i2) {
            int length;
            Object[] objArr = this.hashTable;
            if (objArr == null) {
                length = ImmutableSet.chooseTableSize(i2);
                this.hashTable = new Object[length];
            } else {
                if (i2 <= this.expandTableThreshold || objArr.length >= 1073741824) {
                    return;
                }
                length = objArr.length * 2;
                this.hashTable = rebuildHashTable(length, this.dedupedElements, this.distinct);
            }
            this.maxRunBeforeFallback = maxRunBeforeFallback(length);
            this.expandTableThreshold = (int) (((double) length) * ImmutableSet.DESIRED_LOAD_FACTOR);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public SetBuilderImpl<E> review() {
            if (this.hashTable == null) {
                return this;
            }
            int iChooseTableSize = ImmutableSet.chooseTableSize(this.distinct);
            if (iChooseTableSize * 2 < this.hashTable.length) {
                this.hashTable = rebuildHashTable(iChooseTableSize, this.dedupedElements, this.distinct);
                this.maxRunBeforeFallback = maxRunBeforeFallback(iChooseTableSize);
                this.expandTableThreshold = (int) (((double) iChooseTableSize) * ImmutableSet.DESIRED_LOAD_FACTOR);
            }
            return hashFloodingDetected(this.hashTable) ? new JdkBackedSetBuilderImpl(this) : this;
        }

        public RegularSetBuilderImpl(RegularSetBuilderImpl<E> regularSetBuilderImpl) {
            super(regularSetBuilderImpl);
            Object[] objArr = regularSetBuilderImpl.hashTable;
            this.hashTable = objArr == null ? null : (Object[]) objArr.clone();
            this.maxRunBeforeFallback = regularSetBuilderImpl.maxRunBeforeFallback;
            this.expandTableThreshold = regularSetBuilderImpl.expandTableThreshold;
            this.hashCode = regularSetBuilderImpl.hashCode;
        }
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4) {
        return construct(3, 3, e2, e3, e4);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5) {
        return construct(4, 4, e2, e3, e4, e5);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5, E e6) {
        return construct(5, 5, e2, e3, e4, e5, e6);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        Preconditions.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(length, length, objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new Builder().add((Object) next).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return of();
        }
        if (length != 1) {
            return constructUnknownDuplication(eArr.length, (Object[]) eArr.clone());
        }
        return of((Object) eArr[0]);
    }
}
