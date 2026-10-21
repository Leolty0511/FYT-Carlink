package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
public final class Iterables {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.common.collect.Iterables$1, reason: invalid class name */
    public class AnonymousClass1<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable val$iterable;

        public AnonymousClass1(Iterable iterable) {
            this.val$iterable = iterable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Iterable lambda$spliterator$0(Iterable iterable) {
            return iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.cycle(this.val$iterable);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return Stream.generate(new s(this.val$iterable, 1)).flatMap(new f0(3)).spliterator();
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.val$iterable.toString() + " (cycled)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.common.collect.Iterables$4, reason: invalid class name */
    public class AnonymousClass4<T> extends FluentIterable<T> {
        final /* synthetic */ Predicate val$retainIfTrue;
        final /* synthetic */ Iterable val$unfiltered;

        public AnonymousClass4(Iterable iterable, Predicate predicate) {
            this.val$unfiltered = iterable;
            this.val$retainIfTrue = predicate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$forEach$0(Predicate predicate, Consumer consumer, Object obj) {
            if (predicate.test(obj)) {
                consumer.accept(obj);
            }
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            this.val$unfiltered.forEach(new v(this.val$retainIfTrue, consumer, 4));
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.filter(this.val$unfiltered.iterator(), this.val$retainIfTrue);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return CollectSpliterators.filter(this.val$unfiltered.spliterator(), this.val$retainIfTrue);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.common.collect.Iterables$5, reason: invalid class name */
    public class AnonymousClass5<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable val$fromIterable;
        final /* synthetic */ Function val$function;

        public AnonymousClass5(Iterable iterable, Function function) {
            this.val$fromIterable = iterable;
            this.val$function = function;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$forEach$0(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            this.val$fromIterable.forEach(new v(consumer, this.val$function));
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.val$fromIterable.iterator(), this.val$function);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return CollectSpliterators.map(this.val$fromIterable.spliterator(), this.val$function);
        }
    }

    public static final class UnmodifiableIterable<T> extends FluentIterable<T> {
        private final Iterable<? extends T> iterable;

        public /* synthetic */ UnmodifiableIterable(Iterable iterable, AnonymousClass1 anonymousClass1) {
            this(iterable);
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super T> consumer) {
            this.iterable.forEach(consumer);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.unmodifiableIterator(this.iterable.iterator());
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return this.iterable.spliterator();
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.iterable.toString();
        }

        private UnmodifiableIterable(Iterable<? extends T> iterable) {
            this.iterable = iterable;
        }
    }

    private Iterables() {
    }

    @CanIgnoreReturnValue
    public static <T> boolean addAll(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : Iterators.addAll(collection, ((Iterable) Preconditions.checkNotNull(iterable)).iterator());
    }

    public static <T> boolean all(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.all(iterable.iterator(), predicate);
    }

    public static <T> boolean any(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.any(iterable.iterator(), predicate);
    }

    private static <E> Collection<E> castOrCopyToCollection(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator());
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return FluentIterable.concat(iterable, iterable2);
    }

    public static <T> Iterable<T> consumingIterable(final Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.8
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                Iterable iterable2 = iterable;
                return iterable2 instanceof Queue ? new ConsumingQueueIterator((Queue) iterable2) : Iterators.consumingIterator(iterable2.iterator());
            }

            @Override // com.google.common.collect.FluentIterable
            public String toString() {
                return "Iterables.consumingIterable(...)";
            }
        };
    }

    public static boolean contains(Iterable<? extends Object> iterable, Object obj) {
        return iterable instanceof Collection ? Collections2.safeContains((Collection) iterable, obj) : Iterators.contains(iterable.iterator(), obj);
    }

    public static <T> Iterable<T> cycle(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new AnonymousClass1(iterable);
    }

    public static boolean elementsEqual(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return Iterators.elementsEqual(iterable.iterator(), iterable2.iterator());
    }

    public static <T> Iterable<T> filter(Iterable<T> iterable, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(predicate);
        return new AnonymousClass4(iterable, predicate);
    }

    @ParametricNullness
    public static <T> T find(Iterable<T> iterable, Predicate<? super T> predicate) {
        return (T) Iterators.find(iterable.iterator(), predicate);
    }

    public static int frequency(Iterable<?> iterable, Object obj) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).count(obj);
        }
        return iterable instanceof Set ? ((Set) iterable).contains(obj) ? 1 : 0 : Iterators.frequency(iterable.iterator(), obj);
    }

    @ParametricNullness
    public static <T> T get(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        return iterable instanceof List ? (T) ((List) iterable).get(i2) : (T) Iterators.get(iterable.iterator(), i2);
    }

    @ParametricNullness
    public static <T> T getFirst(Iterable<? extends T> iterable, @ParametricNullness T t2) {
        return (T) Iterators.getNext(iterable.iterator(), t2);
    }

    @ParametricNullness
    public static <T> T getLast(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) Iterators.getLast(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) getLastInNonemptyList(list);
    }

    @ParametricNullness
    private static <T> T getLastInNonemptyList(List<T> list) {
        return list.get(list.size() - 1);
    }

    @ParametricNullness
    public static <T> T getOnlyElement(Iterable<T> iterable) {
        return (T) Iterators.getOnlyElement(iterable.iterator());
    }

    public static <T> int indexOf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.indexOf(iterable.iterator(), predicate);
    }

    public static boolean isEmpty(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static <T> Iterable<T> limit(final Iterable<T> iterable, final int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 >= 0, "limit is negative");
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.7
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.limit(iterable.iterator(), i2);
            }

            @Override // java.lang.Iterable
            public Spliterator<T> spliterator() {
                return Streams.stream(iterable).limit(i2).spliterator();
            }
        };
    }

    public static <T> Iterable<T> mergeSorted(final Iterable<? extends Iterable<? extends T>> iterable, final Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterables");
        Preconditions.checkNotNull(comparator, "comparator");
        return new UnmodifiableIterable(new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.9
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.mergeSorted(Iterables.transform(iterable, new s0(2)), comparator);
            }
        }, null);
    }

    public static <T> Iterable<List<T>> paddedPartition(final Iterable<T> iterable, final int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 > 0);
        return new FluentIterable<List<T>>() { // from class: com.google.common.collect.Iterables.3
            @Override // java.lang.Iterable
            public Iterator<List<T>> iterator() {
                return Iterators.paddedPartition(iterable.iterator(), i2);
            }
        };
    }

    public static <T> Iterable<List<T>> partition(final Iterable<T> iterable, final int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 > 0);
        return new FluentIterable<List<T>>() { // from class: com.google.common.collect.Iterables.2
            @Override // java.lang.Iterable
            public Iterator<List<T>> iterator() {
                return Iterators.partition(iterable.iterator(), i2);
            }
        };
    }

    @CanIgnoreReturnValue
    public static boolean removeAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).removeAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.removeAll(iterable.iterator(), collection);
    }

    public static <T> T removeFirstMatching(Iterable<T> iterable, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    @CanIgnoreReturnValue
    public static <T> boolean removeIf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return iterable instanceof Collection ? ((Collection) iterable).removeIf(predicate) : Iterators.removeIf(iterable.iterator(), predicate);
    }

    @CanIgnoreReturnValue
    public static boolean retainAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).retainAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.retainAll(iterable.iterator(), collection);
    }

    public static int size(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : Iterators.size(iterable.iterator());
    }

    public static <T> Iterable<T> skip(final Iterable<T> iterable, final int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 >= 0, "number to skip cannot be negative");
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.6
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                Iterable iterable2 = iterable;
                if (iterable2 instanceof List) {
                    List list = (List) iterable2;
                    return list.subList(Math.min(list.size(), i2), list.size()).iterator();
                }
                final Iterator<T> it = iterable2.iterator();
                Iterators.advance(it, i2);
                return new Iterator<T>(this) { // from class: com.google.common.collect.Iterables.6.1
                    boolean atStart = true;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    @ParametricNullness
                    public T next() {
                        T t2 = (T) it.next();
                        this.atStart = false;
                        return t2;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        CollectPreconditions.checkRemove(!this.atStart);
                        it.remove();
                    }
                };
            }

            @Override // java.lang.Iterable
            public Spliterator<T> spliterator() {
                Iterable iterable2 = iterable;
                if (!(iterable2 instanceof List)) {
                    return Streams.stream(iterable2).skip(i2).spliterator();
                }
                List list = (List) iterable2;
                return list.subList(Math.min(list.size(), i2), list.size()).spliterator();
            }
        };
    }

    @GwtIncompatible
    public static <T> T[] toArray(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) toArray(iterable, ObjectArrays.newArray(cls, 0));
    }

    public static String toString(Iterable<?> iterable) {
        return Iterators.toString(iterable.iterator());
    }

    public static <F, T> Iterable<T> transform(Iterable<F> iterable, Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(function);
        return new AnonymousClass5(iterable, function);
    }

    public static <T> Optional<T> tryFind(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.tryFind(iterable.iterator(), predicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> unmodifiableIterable(Iterable<? extends T> iterable) {
        Preconditions.checkNotNull(iterable);
        return ((iterable instanceof UnmodifiableIterable) || (iterable instanceof ImmutableCollection)) ? iterable : new UnmodifiableIterable(iterable, null);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return FluentIterable.concat(iterable, iterable2, iterable3);
    }

    public static <T> T find(Iterable<? extends T> iterable, Predicate<? super T> predicate, T t2) {
        return (T) Iterators.find(iterable.iterator(), predicate, t2);
    }

    @ParametricNullness
    public static <T> T getOnlyElement(Iterable<? extends T> iterable, @ParametricNullness T t2) {
        return (T) Iterators.getOnlyElement(iterable.iterator(), t2);
    }

    public static <T> T[] toArray(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) castOrCopyToCollection(iterable).toArray(tArr);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return FluentIterable.concat(iterable, iterable2, iterable3, iterable4);
    }

    @SafeVarargs
    public static <T> Iterable<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    @SafeVarargs
    public static <T> Iterable<T> concat(Iterable<? extends T>... iterableArr) {
        return FluentIterable.concat(iterableArr);
    }

    @GwtIncompatible
    public static <T> Iterable<T> filter(Iterable<?> iterable, Class<T> cls) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(cls);
        return filter(iterable, Predicates.instanceOf(cls));
    }

    public static Object[] toArray(Iterable<?> iterable) {
        return castOrCopyToCollection(iterable).toArray();
    }

    @Deprecated
    public static <E> Iterable<E> unmodifiableIterable(ImmutableCollection<E> immutableCollection) {
        return (Iterable) Preconditions.checkNotNull(immutableCollection);
    }

    public static <T> Iterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        return FluentIterable.concat(iterable);
    }

    @ParametricNullness
    public static <T> T get(Iterable<? extends T> iterable, int i2, @ParametricNullness T t2) {
        Preconditions.checkNotNull(iterable);
        Iterators.checkNonnegative(i2);
        if (iterable instanceof List) {
            List listCast = Lists.cast(iterable);
            return i2 < listCast.size() ? (T) listCast.get(i2) : t2;
        }
        Iterator<? extends T> it = iterable.iterator();
        Iterators.advance(it, i2);
        return (T) Iterators.getNext(it, t2);
    }

    @ParametricNullness
    public static <T> T getLast(Iterable<? extends T> iterable, @ParametricNullness T t2) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t2;
            }
            if (iterable instanceof List) {
                return (T) getLastInNonemptyList(Lists.cast(iterable));
            }
        }
        return (T) Iterators.getLast(iterable.iterator(), t2);
    }
}
