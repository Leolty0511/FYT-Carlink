package com.google.common.collect;

import android.R;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true, serializable = true)
@ElementTypesAreNonnullByDefault
public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements NavigableSet<E>, SortedIterable<E> {
    static final int SPLITERATOR_CHARACTERISTICS = 1301;
    final transient Comparator<? super E> comparator;

    @GwtIncompatible
    @LazyInit
    transient ImmutableSortedSet<E> descendingSet;

    public static final class Builder<E> extends ImmutableSet.Builder<E> {
        private final Comparator<? super E> comparator;
        private E[] elements;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f419n;

        public Builder(Comparator<? super E> comparator) {
            super(true);
            this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
            this.elements = (E[]) new Object[4];
            this.f419n = 0;
        }

        private void sortAndDedup() {
            int i2 = this.f419n;
            if (i2 == 0) {
                return;
            }
            Arrays.sort(this.elements, 0, i2, this.comparator);
            int i3 = 1;
            int i4 = 1;
            while (true) {
                int i5 = this.f419n;
                if (i3 >= i5) {
                    Arrays.fill(this.elements, i4, i5, (Object) null);
                    this.f419n = i4;
                    return;
                }
                Comparator<? super E> comparator = this.comparator;
                E[] eArr = this.elements;
                int iCompare = comparator.compare(eArr[i4 - 1], eArr[i3]);
                if (iCompare < 0) {
                    E[] eArr2 = this.elements;
                    eArr2[i4] = eArr2[i3];
                    i4++;
                } else if (iCompare > 0) {
                    throw new AssertionError("Comparator " + this.comparator + " compare method violates its contract");
                }
                i3++;
            }
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        public void copy() {
            E[] eArr = this.elements;
            this.elements = (E[]) Arrays.copyOf(eArr, eArr.length);
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        @CanIgnoreReturnValue
        public Builder<E> combine(ImmutableSet.Builder<E> builder) {
            copyIfNecessary();
            Builder builder2 = (Builder) builder;
            for (int i2 = 0; i2 < builder2.f419n; i2++) {
                add((Object) builder2.elements[i2]);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSortedSet<E> build() {
            sortAndDedup();
            if (this.f419n == 0) {
                return ImmutableSortedSet.emptySet(this.comparator);
            }
            this.forceCopy = true;
            return new RegularImmutableSortedSet(ImmutableList.asImmutableList(this.elements, this.f419n), this.comparator);
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E e2) {
            Preconditions.checkNotNull(e2);
            copyIfNecessary();
            if (this.f419n == this.elements.length) {
                sortAndDedup();
                int i2 = this.f419n;
                int iExpandedCapacity = ImmutableCollection.Builder.expandedCapacity(i2, i2 + 1);
                E[] eArr = this.elements;
                if (iExpandedCapacity > eArr.length) {
                    this.elements = (E[]) Arrays.copyOf(eArr, iExpandedCapacity);
                }
            }
            E[] eArr2 = this.elements;
            int i3 = this.f419n;
            this.f419n = i3 + 1;
            eArr2[i3] = e2;
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            ObjectArrays.checkElementsNotNull(eArr);
            for (E e2 : eArr) {
                add((Object) e2);
            }
            return this;
        }
    }

    @J2ktIncompatible
    public static class SerializedForm<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> comparator;
        final Object[] elements;

        public SerializedForm(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object readResolve() {
            return new Builder(this.comparator).add(this.elements).build();
        }
    }

    public ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> ImmutableSortedSet<E> construct(Comparator<? super E> comparator, int i2, E... eArr) {
        if (i2 == 0) {
            return emptySet(comparator);
        }
        ObjectArrays.checkElementsNotNull(eArr, i2);
        Arrays.sort(eArr, 0, i2, comparator);
        int i3 = 1;
        for (int i4 = 1; i4 < i2; i4++) {
            R.anim animVar = (Object) eArr[i4];
            if (comparator.compare(animVar, (Object) eArr[i3 - 1]) != 0) {
                eArr[i3] = animVar;
                i3++;
            }
        }
        Arrays.fill(eArr, i3, i2, (Object) null);
        return new RegularImmutableSortedSet(ImmutableList.asImmutableList(eArr, i3), comparator);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return construct(Ordering.natural(), comparableArr.length, (Comparable[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparator = SortedIterables.comparator(sortedSet);
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) sortedSet);
        return immutableListCopyOf.isEmpty() ? emptySet(comparator) : new RegularImmutableSortedSet(immutableListCopyOf, comparator);
    }

    public static <E> RegularImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (RegularImmutableSortedSet<E>) RegularImmutableSortedSet.NATURAL_EMPTY_SET : new RegularImmutableSortedSet<>(ImmutableList.of(), comparator);
    }

    public static <E extends Comparable<?>> Builder<E> naturalOrder() {
        return new Builder<>(Ordering.natural());
    }

    public static <E> ImmutableSortedSet<E> of() {
        return RegularImmutableSortedSet.NATURAL_EMPTY_SET;
    }

    public static <E> Builder<E> orderedBy(Comparator<E> comparator) {
        return new Builder<>(comparator);
    }

    @J2ktIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> Builder<E> reverseOrder() {
        return new Builder<>(Collections.reverseOrder());
    }

    public static <E> Collector<E, ?, ImmutableSortedSet<E>> toImmutableSortedSet(Comparator<? super E> comparator) {
        return CollectCollectors.toImmutableSortedSet(comparator);
    }

    @Override // com.google.common.collect.ImmutableSet.CachingAsList, com.google.common.collect.ImmutableCollection
    public /* bridge */ /* synthetic */ ImmutableList asList() {
        return super.asList();
    }

    public E ceiling(E e2) {
        return (E) Iterables.getFirst(tailSet((Object) e2, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    @GwtIncompatible
    public abstract ImmutableSortedSet<E> createDescendingSet();

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public abstract UnmodifiableIterator<E> descendingIterator();

    public E first() {
        return iterator().next();
    }

    public E floor(E e2) {
        return (E) Iterators.getNext(headSet((Object) e2, true).descendingIterator(), null);
    }

    public abstract ImmutableSortedSet<E> headSetImpl(E e2, boolean z2);

    @GwtIncompatible
    public E higher(E e2) {
        return (E) Iterables.getFirst(tailSet((Object) e2, false), null);
    }

    public abstract int indexOf(Object obj);

    @Override // com.google.common.collect.ImmutableSet.CachingAsList, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
    public abstract UnmodifiableIterator<E> iterator();

    public E last() {
        return descendingIterator().next();
    }

    @GwtIncompatible
    public E lower(E e2) {
        return (E) Iterators.getNext(headSet((Object) e2, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    @CanIgnoreReturnValue
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    @CanIgnoreReturnValue
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return new Spliterators.AbstractSpliterator<E>(size(), 1365) { // from class: com.google.common.collect.ImmutableSortedSet.1
            final UnmodifiableIterator<E> iterator;

            {
                this.iterator = ImmutableSortedSet.this.iterator();
            }

            @Override // java.util.Spliterator
            public Comparator<? super E> getComparator() {
                return ImmutableSortedSet.this.comparator;
            }

            @Override // java.util.Spliterator
            public boolean tryAdvance(Consumer<? super E> consumer) {
                if (!this.iterator.hasNext()) {
                    return false;
                }
                consumer.accept(this.iterator.next());
                return true;
            }
        };
    }

    public abstract ImmutableSortedSet<E> subSetImpl(E e2, boolean z2, E e3, boolean z3);

    public abstract ImmutableSortedSet<E> tailSetImpl(E e2, boolean z2);

    public int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @J2ktIncompatible
    public Object writeReplace() {
        return new SerializedForm(this.comparator, toArray());
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new RegularImmutableSortedSet(ImmutableList.of(comparable), Ordering.natural());
    }

    public static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        if (immutableSortedSet != null) {
            return immutableSortedSet;
        }
        ImmutableSortedSet<E> immutableSortedSetCreateDescendingSet = createDescendingSet();
        this.descendingSet = immutableSortedSetCreateDescendingSet;
        immutableSortedSetCreateDescendingSet.descendingSet = this;
        return immutableSortedSetCreateDescendingSet;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return construct(Ordering.natural(), 2, comparable, comparable2);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> headSet(E e2) {
        return headSet((Object) e2, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> subSet(E e2, E e3) {
        return subSet((Object) e2, true, (Object) e3, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> tailSet(E e2) {
        return tailSet((Object) e2, true);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) Ordering.natural(), (Collection) collection);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(Ordering.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> headSet(E e2, boolean z2) {
        return headSetImpl(Preconditions.checkNotNull(e2), z2);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public ImmutableSortedSet<E> subSet(E e2, boolean z2, E e3, boolean z3) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(e3);
        Preconditions.checkArgument(this.comparator.compare(e2, e3) <= 0);
        return subSetImpl(e2, z2, e3, z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> tailSet(E e2, boolean z2) {
        return tailSetImpl(Preconditions.checkNotNull(e2), z2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(Ordering.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(Ordering.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(Ordering.natural(), length, comparableArr2);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new Builder(comparator).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(comparator);
        if (SortedIterables.hasSameComparator(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.isPartialView()) {
                return immutableSortedSet;
            }
        }
        Object[] array = Iterables.toArray(iterable);
        return construct(comparator, array.length, array);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }
}
