package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.j2objc.annotations.Weak;
import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
final class CollectSpliterators {

    /* JADX INFO: Add missing generic type declarations: [OutElementT] */
    /* JADX INFO: renamed from: com.google.common.collect.CollectSpliterators$1, reason: invalid class name */
    public class AnonymousClass1<OutElementT> implements Spliterator<OutElementT> {
        final /* synthetic */ Spliterator val$fromSpliterator;
        final /* synthetic */ Function val$function;

        public AnonymousClass1(Spliterator spliterator, Function function) {
            this.val$fromSpliterator = spliterator;
            this.val$function = function;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$forEachRemaining$1(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$tryAdvance$0(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.val$fromSpliterator.characteristics() & (-262);
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.val$fromSpliterator.estimateSize();
        }

        @Override // java.util.Spliterator
        public void forEachRemaining(Consumer<? super OutElementT> consumer) {
            this.val$fromSpliterator.forEachRemaining(new t(consumer, this.val$function, 0));
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super OutElementT> consumer) {
            return this.val$fromSpliterator.tryAdvance(new t(consumer, this.val$function, 1));
        }

        @Override // java.util.Spliterator
        public Spliterator<OutElementT> trySplit() {
            Spliterator spliteratorTrySplit = this.val$fromSpliterator.trySplit();
            if (spliteratorTrySplit != null) {
                return CollectSpliterators.map(spliteratorTrySplit, this.val$function);
            }
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.common.collect.CollectSpliterators$1Splitr, reason: invalid class name */
    public class C1Splitr<T> implements Spliterator<T>, Consumer<T> {
        T holder = null;
        final /* synthetic */ Spliterator val$fromSpliterator;
        final /* synthetic */ Predicate val$predicate;

        public C1Splitr(Spliterator spliterator, Predicate predicate) {
            this.val$fromSpliterator = spliterator;
            this.val$predicate = predicate;
        }

        @Override // java.util.function.Consumer
        public void accept(@ParametricNullness T t2) {
            this.holder = t2;
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.val$fromSpliterator.characteristics() & 277;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.val$fromSpliterator.estimateSize() / 2;
        }

        @Override // java.util.Spliterator
        public Comparator<? super T> getComparator() {
            return this.val$fromSpliterator.getComparator();
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super T> consumer) {
            while (this.val$fromSpliterator.tryAdvance(this)) {
                try {
                    Object objUncheckedCastNullableTToT = NullnessCasts.uncheckedCastNullableTToT(this.holder);
                    if (this.val$predicate.test(objUncheckedCastNullableTToT)) {
                        consumer.accept(objUncheckedCastNullableTToT);
                        this.holder = null;
                        return true;
                    }
                    this.holder = null;
                } catch (Throwable th) {
                    this.holder = null;
                    throw th;
                }
            }
            return false;
        }

        @Override // java.util.Spliterator
        public Spliterator<T> trySplit() {
            Spliterator spliteratorTrySplit = this.val$fromSpliterator.trySplit();
            if (spliteratorTrySplit == null) {
                return null;
            }
            return CollectSpliterators.filter(spliteratorTrySplit, this.val$predicate);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.common.collect.CollectSpliterators$1WithCharacteristics, reason: invalid class name */
    public class C1WithCharacteristics<T> implements Spliterator<T> {
        private final Spliterator.OfInt delegate;
        final /* synthetic */ Comparator val$comparator;
        final /* synthetic */ int val$extraCharacteristics;
        final /* synthetic */ IntFunction val$function;

        public C1WithCharacteristics(Spliterator.OfInt ofInt, IntFunction intFunction, int i2, Comparator comparator) {
            this.val$function = intFunction;
            this.val$extraCharacteristics = i2;
            this.val$comparator = comparator;
            this.delegate = ofInt;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$forEachRemaining$1(Consumer consumer, IntFunction intFunction, int i2) {
            consumer.accept(intFunction.apply(i2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$tryAdvance$0(Consumer consumer, IntFunction intFunction, int i2) {
            consumer.accept(intFunction.apply(i2));
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.val$extraCharacteristics | 16464;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.delegate.estimateSize();
        }

        @Override // java.util.Spliterator
        public void forEachRemaining(Consumer<? super T> consumer) {
            this.delegate.forEachRemaining((IntConsumer) new u(consumer, this.val$function, 0));
        }

        @Override // java.util.Spliterator
        public Comparator<? super T> getComparator() {
            if (hasCharacteristics(4)) {
                return this.val$comparator;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super T> consumer) {
            return this.delegate.tryAdvance((IntConsumer) new u(consumer, this.val$function, 1));
        }

        @Override // java.util.Spliterator
        public Spliterator<T> trySplit() {
            Spliterator.OfInt ofIntTrySplit = this.delegate.trySplit();
            if (ofIntTrySplit == null) {
                return null;
            }
            return new C1WithCharacteristics(ofIntTrySplit, this.val$function, this.val$extraCharacteristics, this.val$comparator);
        }
    }

    public static abstract class FlatMapSpliterator<InElementT, OutElementT, OutSpliteratorT extends Spliterator<OutElementT>> implements Spliterator<OutElementT> {
        int characteristics;
        long estimatedSize;
        final Factory<InElementT, OutSpliteratorT> factory;
        final Spliterator<InElementT> from;
        final Function<? super InElementT, OutSpliteratorT> function;

        @Weak
        OutSpliteratorT prefix;

        @FunctionalInterface
        public interface Factory<InElementT, OutSpliteratorT extends Spliterator<?>> {
            OutSpliteratorT newFlatMapSpliterator(OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, int i2, long j2);
        }

        public FlatMapSpliterator(OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, Factory<InElementT, OutSpliteratorT> factory, int i2, long j2) {
            this.prefix = outspliteratort;
            this.from = spliterator;
            this.function = function;
            this.factory = factory;
            this.characteristics = i2;
            this.estimatedSize = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$forEachRemaining$1(Consumer consumer, Object obj) {
            Spliterator spliteratorK = j.k(this.function.apply(obj));
            if (spliteratorK != null) {
                spliteratorK.forEachRemaining(consumer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryAdvance$0(Object obj) {
            this.prefix = (OutSpliteratorT) j.k(this.function.apply(obj));
        }

        @Override // java.util.Spliterator
        public final int characteristics() {
            return this.characteristics;
        }

        @Override // java.util.Spliterator
        public final long estimateSize() {
            OutSpliteratorT outspliteratort = this.prefix;
            if (outspliteratort != null) {
                this.estimatedSize = Math.max(this.estimatedSize, outspliteratort.estimateSize());
            }
            return Math.max(this.estimatedSize, 0L);
        }

        @Override // java.util.Spliterator
        public final void forEachRemaining(Consumer<? super OutElementT> consumer) {
            OutSpliteratorT outspliteratort = this.prefix;
            if (outspliteratort != null) {
                outspliteratort.forEachRemaining(consumer);
                this.prefix = null;
            }
            this.from.forEachRemaining(new v(this, consumer, 0));
            this.estimatedSize = 0L;
        }

        @Override // java.util.Spliterator
        public final boolean tryAdvance(Consumer<? super OutElementT> consumer) {
            do {
                OutSpliteratorT outspliteratort = this.prefix;
                if (outspliteratort != null && outspliteratort.tryAdvance(consumer)) {
                    long j2 = this.estimatedSize;
                    if (j2 == Long.MAX_VALUE) {
                        return true;
                    }
                    this.estimatedSize = j2 - 1;
                    return true;
                }
                this.prefix = null;
            } while (this.from.tryAdvance(new w(this, 0)));
            return false;
        }

        @Override // java.util.Spliterator
        public final OutSpliteratorT trySplit() {
            Spliterator<InElementT> spliteratorTrySplit = this.from.trySplit();
            if (spliteratorTrySplit == null) {
                OutSpliteratorT outspliteratort = this.prefix;
                if (outspliteratort == null) {
                    return null;
                }
                this.prefix = null;
                return outspliteratort;
            }
            int i2 = this.characteristics & (-65);
            long jEstimateSize = estimateSize();
            if (jEstimateSize < Long.MAX_VALUE) {
                jEstimateSize /= 2;
                this.estimatedSize -= jEstimateSize;
                this.characteristics = i2;
            }
            OutSpliteratorT outspliteratort2 = (OutSpliteratorT) this.factory.newFlatMapSpliterator(this.prefix, spliteratorTrySplit, this.function, i2, jEstimateSize);
            this.prefix = null;
            return outspliteratort2;
        }
    }

    public static final class FlatMapSpliteratorOfDouble<InElementT> extends FlatMapSpliteratorOfPrimitive<InElementT, Double, DoubleConsumer, Spliterator.OfDouble> implements Spliterator.OfDouble {
        public FlatMapSpliteratorOfDouble(Spliterator.OfDouble ofDouble, Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfDouble> function, int i2, long j2) {
            super(ofDouble, spliterator, function, new x(0), i2, j2);
        }

        @Override // java.util.Spliterator.OfDouble
        public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
            super.forEachRemaining(doubleConsumer);
        }

        @Override // java.util.Spliterator.OfDouble
        public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
            return super.tryAdvance(doubleConsumer);
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliteratorOfPrimitive, com.google.common.collect.CollectSpliterators.FlatMapSpliterator, java.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
            return j.e(super.trySplit());
        }
    }

    public static final class FlatMapSpliteratorOfInt<InElementT> extends FlatMapSpliteratorOfPrimitive<InElementT, Integer, IntConsumer, Spliterator.OfInt> implements Spliterator.OfInt {
        public FlatMapSpliteratorOfInt(Spliterator.OfInt ofInt, Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfInt> function, int i2, long j2) {
            super(ofInt, spliterator, function, new x(1), i2, j2);
        }

        @Override // java.util.Spliterator.OfInt
        public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
            super.forEachRemaining(intConsumer);
        }

        @Override // java.util.Spliterator.OfInt
        public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
            return super.tryAdvance(intConsumer);
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliteratorOfPrimitive, com.google.common.collect.CollectSpliterators.FlatMapSpliterator, java.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
            return j.f(super.trySplit());
        }
    }

    public static final class FlatMapSpliteratorOfLong<InElementT> extends FlatMapSpliteratorOfPrimitive<InElementT, Long, LongConsumer, Spliterator.OfLong> implements Spliterator.OfLong {
        public FlatMapSpliteratorOfLong(Spliterator.OfLong ofLong, Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfLong> function, int i2, long j2) {
            super(ofLong, spliterator, function, new x(2), i2, j2);
        }

        @Override // java.util.Spliterator.OfLong
        public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
            super.forEachRemaining(longConsumer);
        }

        @Override // java.util.Spliterator.OfLong
        public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
            return super.tryAdvance(longConsumer);
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliteratorOfPrimitive, com.google.common.collect.CollectSpliterators.FlatMapSpliterator, java.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.OfLong trySplit() {
            return j.i(super.trySplit());
        }
    }

    public static final class FlatMapSpliteratorOfObject<InElementT, OutElementT> extends FlatMapSpliterator<InElementT, OutElementT, Spliterator<OutElementT>> {
        public FlatMapSpliteratorOfObject(Spliterator<OutElementT> spliterator, Spliterator<InElementT> spliterator2, Function<? super InElementT, Spliterator<OutElementT>> function, int i2, long j2) {
            super(spliterator, spliterator2, function, new x(3), i2, j2);
        }
    }

    public static abstract class FlatMapSpliteratorOfPrimitive<InElementT, OutElementT, OutConsumerT, OutSpliteratorT extends Spliterator.OfPrimitive<OutElementT, OutConsumerT, OutSpliteratorT>> extends FlatMapSpliterator<InElementT, OutElementT, OutSpliteratorT> implements Spliterator.OfPrimitive<OutElementT, OutConsumerT, OutSpliteratorT> {
        public FlatMapSpliteratorOfPrimitive(OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, FlatMapSpliterator.Factory<InElementT, OutSpliteratorT> factory, int i2, long j2) {
            super(outspliteratort, spliterator, function, factory, i2, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$forEachRemaining$1(Object obj, Object obj2) {
            Spliterator.OfPrimitive ofPrimitiveJ = j.j(this.function.apply(obj2));
            if (ofPrimitiveJ != null) {
                ofPrimitiveJ.forEachRemaining(obj);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference failed for: r2v2, types: [OutSpliteratorT extends java.util.Spliterator<OutElementT>, java.util.Spliterator] */
        public /* synthetic */ void lambda$tryAdvance$0(Object obj) {
            this.prefix = j.k(this.function.apply(obj));
        }

        @Override // java.util.Spliterator.OfPrimitive
        public final void forEachRemaining(OutConsumerT outconsumert) {
            OutSpliteratorT outspliteratort = this.prefix;
            if (outspliteratort != 0) {
                j.j(outspliteratort).forEachRemaining(outconsumert);
                this.prefix = null;
            }
            this.from.forEachRemaining(new v(this, outconsumert, 1));
            this.estimatedSize = 0L;
        }

        @Override // java.util.Spliterator.OfPrimitive
        public final boolean tryAdvance(OutConsumerT outconsumert) {
            int i2;
            do {
                OutSpliteratorT outspliteratort = this.prefix;
                i2 = 1;
                if (outspliteratort != 0 && j.j(outspliteratort).tryAdvance(outconsumert)) {
                    long j2 = this.estimatedSize;
                    if (j2 != Long.MAX_VALUE) {
                        this.estimatedSize = j2 - 1;
                    }
                    return true;
                }
                this.prefix = null;
            } while (this.from.tryAdvance(new w(this, i2)));
            return false;
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliterator, java.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.OfPrimitive trySplit() {
            return j.j(super.trySplit());
        }
    }

    private CollectSpliterators() {
    }

    public static <T> Spliterator<T> filter(Spliterator<T> spliterator, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(predicate);
        return new C1Splitr(spliterator, predicate);
    }

    public static <InElementT, OutElementT> Spliterator<OutElementT> flatMap(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator<OutElementT>> function, int i2, long j2) {
        Preconditions.checkArgument((i2 & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i2 & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new FlatMapSpliteratorOfObject(null, spliterator, function, i2, j2);
    }

    public static <InElementT> Spliterator.OfDouble flatMapToDouble(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfDouble> function, int i2, long j2) {
        Preconditions.checkArgument((i2 & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i2 & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new FlatMapSpliteratorOfDouble(null, spliterator, function, i2, j2);
    }

    public static <InElementT> Spliterator.OfInt flatMapToInt(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfInt> function, int i2, long j2) {
        Preconditions.checkArgument((i2 & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i2 & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new FlatMapSpliteratorOfInt(null, spliterator, function, i2, j2);
    }

    public static <InElementT> Spliterator.OfLong flatMapToLong(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfLong> function, int i2, long j2) {
        Preconditions.checkArgument((i2 & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i2 & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new FlatMapSpliteratorOfLong(null, spliterator, function, i2, j2);
    }

    public static <T> Spliterator<T> indexed(int i2, int i3, IntFunction<T> intFunction) {
        return indexed(i2, i3, intFunction, null);
    }

    public static <InElementT, OutElementT> Spliterator<OutElementT> map(Spliterator<InElementT> spliterator, Function<? super InElementT, ? extends OutElementT> function) {
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new AnonymousClass1(spliterator, function);
    }

    public static <T> Spliterator<T> indexed(int i2, int i3, IntFunction<T> intFunction, Comparator<? super T> comparator) {
        if (comparator != null) {
            Preconditions.checkArgument((i3 & 4) != 0);
        }
        return new C1WithCharacteristics(IntStream.range(0, i2).spliterator(), intFunction, i3, comparator);
    }
}
