package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.math.LongMath;
import com.google.errorprone.annotations.InlineMe;
import com.google.errorprone.annotations.InlineMeValidationDisabled;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.PrimitiveIterator;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
public final class Streams {

    /* JADX INFO: renamed from: com.google.common.collect.Streams$1OptionalState, reason: invalid class name */
    public class C1OptionalState {
        boolean set = false;
        T value = null;

        public T get() {
            T t2 = this.value;
            Objects.requireNonNull(t2);
            return t2;
        }

        public void set(T t2) {
            this.set = true;
            this.value = t2;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* JADX INFO: renamed from: com.google.common.collect.Streams$1Splitr, reason: invalid class name */
    public class C1Splitr<R, T> extends MapWithIndexSpliterator<Spliterator<T>, R, C1Splitr> implements Consumer<T> {
        T holder;
        final /* synthetic */ FunctionWithIndex val$function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$FunctionWithIndex), (r0 I:com.google.common.collect.Streams$1Splitr) (LINE:1) com.google.common.collect.Streams.1Splitr.val$function com.google.common.collect.Streams$FunctionWithIndex, block:B:2:0x0000 */
        public C1Splitr(Spliterator spliterator, Spliterator<T> spliterator2, long j2) {
            FunctionWithIndex functionWithIndex;
            super(spliterator, spliterator2);
            this.val$function = functionWithIndex;
        }

        @Override // java.util.function.Consumer
        public void accept(@ParametricNullness T t2) {
            this.holder = t2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.fromSpliterator.tryAdvance(this)) {
                return false;
            }
            try {
                FunctionWithIndex functionWithIndex = this.val$function;
                Object objUncheckedCastNullableTToT = NullnessCasts.uncheckedCastNullableTToT(this.holder);
                long j2 = this.index;
                this.index = 1 + j2;
                consumer.accept(functionWithIndex.apply(objUncheckedCastNullableTToT, j2));
                return true;
            } finally {
                this.holder = null;
            }
        }

        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public C1Splitr createSplit(Spliterator<T> spliterator, long j2) {
            return new C1Splitr(spliterator, j2, this.val$function);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.google.common.collect.Streams$2Splitr, reason: invalid class name */
    public class C2Splitr<R> extends MapWithIndexSpliterator<Spliterator.OfInt, R, C2Splitr> implements IntConsumer {
        int holder;
        final /* synthetic */ IntFunctionWithIndex val$function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$IntFunctionWithIndex), (r0 I:com.google.common.collect.Streams$2Splitr) (LINE:1) com.google.common.collect.Streams.2Splitr.val$function com.google.common.collect.Streams$IntFunctionWithIndex, block:B:2:0x0000 */
        public C2Splitr(Spliterator.OfInt ofInt, Spliterator.OfInt ofInt2, long j2) {
            IntFunctionWithIndex intFunctionWithIndex;
            super(ofInt, ofInt2);
            this.val$function = intFunctionWithIndex;
        }

        @Override // java.util.function.IntConsumer
        public void accept(int i2) {
            this.holder = i2;
        }

        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public /* bridge */ /* synthetic */ MapWithIndexSpliterator createSplit(Spliterator spliterator, long j2) {
            return createSplit(j.f(spliterator), j2);
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!j.f(this.fromSpliterator).tryAdvance((IntConsumer) this)) {
                return false;
            }
            IntFunctionWithIndex intFunctionWithIndex = this.val$function;
            int i2 = this.holder;
            long j2 = this.index;
            this.index = 1 + j2;
            consumer.accept(intFunctionWithIndex.apply(i2, j2));
            return true;
        }

        public C2Splitr createSplit(Spliterator.OfInt ofInt, long j2) {
            return new C2Splitr(ofInt, j2, this.val$function);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.google.common.collect.Streams$3Splitr, reason: invalid class name */
    public class C3Splitr<R> extends MapWithIndexSpliterator<Spliterator.OfLong, R, C3Splitr> implements LongConsumer {
        long holder;
        final /* synthetic */ LongFunctionWithIndex val$function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$LongFunctionWithIndex), (r0 I:com.google.common.collect.Streams$3Splitr) (LINE:1) com.google.common.collect.Streams.3Splitr.val$function com.google.common.collect.Streams$LongFunctionWithIndex, block:B:2:0x0000 */
        public C3Splitr(Spliterator.OfLong ofLong, Spliterator.OfLong ofLong2, long j2) {
            LongFunctionWithIndex longFunctionWithIndex;
            super(ofLong, ofLong2);
            this.val$function = longFunctionWithIndex;
        }

        @Override // java.util.function.LongConsumer
        public void accept(long j2) {
            this.holder = j2;
        }

        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public /* bridge */ /* synthetic */ MapWithIndexSpliterator createSplit(Spliterator spliterator, long j2) {
            return createSplit(j.i(spliterator), j2);
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!j.i(this.fromSpliterator).tryAdvance((LongConsumer) this)) {
                return false;
            }
            LongFunctionWithIndex longFunctionWithIndex = this.val$function;
            long j2 = this.holder;
            long j3 = this.index;
            this.index = 1 + j3;
            consumer.accept(longFunctionWithIndex.apply(j2, j3));
            return true;
        }

        public C3Splitr createSplit(Spliterator.OfLong ofLong, long j2) {
            return new C3Splitr(ofLong, j2, this.val$function);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.google.common.collect.Streams$4Splitr, reason: invalid class name */
    public class C4Splitr<R> extends MapWithIndexSpliterator<Spliterator.OfDouble, R, C4Splitr> implements DoubleConsumer {
        double holder;
        final /* synthetic */ DoubleFunctionWithIndex val$function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$DoubleFunctionWithIndex), (r0 I:com.google.common.collect.Streams$4Splitr) (LINE:1) com.google.common.collect.Streams.4Splitr.val$function com.google.common.collect.Streams$DoubleFunctionWithIndex, block:B:2:0x0000 */
        public C4Splitr(Spliterator.OfDouble ofDouble, Spliterator.OfDouble ofDouble2, long j2) {
            DoubleFunctionWithIndex doubleFunctionWithIndex;
            super(ofDouble, ofDouble2);
            this.val$function = doubleFunctionWithIndex;
        }

        @Override // java.util.function.DoubleConsumer
        public void accept(double d2) {
            this.holder = d2;
        }

        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public /* bridge */ /* synthetic */ MapWithIndexSpliterator createSplit(Spliterator spliterator, long j2) {
            return createSplit(j.e(spliterator), j2);
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!j.e(this.fromSpliterator).tryAdvance((DoubleConsumer) this)) {
                return false;
            }
            DoubleFunctionWithIndex doubleFunctionWithIndex = this.val$function;
            double d2 = this.holder;
            long j2 = this.index;
            this.index = 1 + j2;
            consumer.accept(doubleFunctionWithIndex.apply(d2, j2));
            return true;
        }

        public C4Splitr createSplit(Spliterator.OfDouble ofDouble, long j2) {
            return new C4Splitr(ofDouble, j2, this.val$function);
        }
    }

    public interface DoubleFunctionWithIndex<R> {
        @ParametricNullness
        R apply(double d2, long j2);
    }

    public interface FunctionWithIndex<T, R> {
        @ParametricNullness
        R apply(@ParametricNullness T t2, long j2);
    }

    public interface IntFunctionWithIndex<R> {
        @ParametricNullness
        R apply(int i2, long j2);
    }

    public interface LongFunctionWithIndex<R> {
        @ParametricNullness
        R apply(long j2, long j3);
    }

    public static abstract class MapWithIndexSpliterator<F extends Spliterator<?>, R, S extends MapWithIndexSpliterator<F, R, S>> implements Spliterator<R> {
        final F fromSpliterator;
        long index;

        public MapWithIndexSpliterator(F f2, long j2) {
            this.fromSpliterator = f2;
            this.index = j2;
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.fromSpliterator.characteristics() & 16464;
        }

        public abstract S createSplit(F f2, long j2);

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.fromSpliterator.estimateSize();
        }

        @Override // java.util.Spliterator
        public S trySplit() {
            Spliterator spliteratorTrySplit = this.fromSpliterator.trySplit();
            if (spliteratorTrySplit == null) {
                return null;
            }
            S s2 = (S) createSplit(spliteratorTrySplit, this.index);
            this.index = spliteratorTrySplit.getExactSizeIfKnown() + this.index;
            return s2;
        }
    }

    public static class TemporaryPair<A, B> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @ParametricNullness
        final A f422a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @ParametricNullness
        final B f423b;

        public TemporaryPair(@ParametricNullness A a2, @ParametricNullness B b2) {
            this.f422a = a2;
            this.f423b = b2;
        }
    }

    private Streams() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void closeAll(BaseStream<?, ?>[] baseStreamArr) {
        for (BaseStream<?, ?> baseStream : baseStreamArr) {
            baseStream.close();
        }
    }

    @SafeVarargs
    public static <T> Stream<T> concat(Stream<? extends T>... streamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(streamArr.length);
        long jSaturatedAdd = 0;
        int iCharacteristics = 336;
        boolean zIsParallel = false;
        for (Stream<? extends T> stream : streamArr) {
            zIsParallel |= stream.isParallel();
            Spliterator spliterator = stream.spliterator();
            builder.add(spliterator);
            iCharacteristics &= spliterator.characteristics();
            jSaturatedAdd = LongMath.saturatedAdd(jSaturatedAdd, spliterator.estimateSize());
        }
        return j.u(StreamSupport.stream(CollectSpliterators.flatMap(builder.build().spliterator(), new f0(10), iCharacteristics, jSaturatedAdd), zIsParallel).onClose(new j1(streamArr, 1)));
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.collect.i1] */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.google.common.collect.i1] */
    public static <T> Optional<T> findLast(Stream<T> stream) {
        Spliterator spliteratorTrySplit;
        final C1OptionalState c1OptionalState = new C1OptionalState();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.addLast(stream.spliterator());
        while (!arrayDeque.isEmpty()) {
            Spliterator spliteratorK = j.k(arrayDeque.removeLast());
            if (spliteratorK.getExactSizeIfKnown() != 0) {
                if (spliteratorK.hasCharacteristics(16384)) {
                    do {
                        spliteratorTrySplit = spliteratorK.trySplit();
                        if (spliteratorTrySplit == null || spliteratorTrySplit.getExactSizeIfKnown() == 0) {
                        }
                        final int i2 = 1;
                        spliteratorK.forEachRemaining(new Consumer() { // from class: com.google.common.collect.i1
                            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                switch (i2) {
                                }
                                c1OptionalState.set(obj);
                            }
                        });
                        return Optional.of(c1OptionalState.get());
                    } while (spliteratorK.getExactSizeIfKnown() != 0);
                    spliteratorK = spliteratorTrySplit;
                    final int i3 = 1;
                    spliteratorK.forEachRemaining(new Consumer() { // from class: com.google.common.collect.i1
                        /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i3) {
                            }
                            c1OptionalState.set(obj);
                        }
                    });
                    return Optional.of(c1OptionalState.get());
                }
                Spliterator spliteratorTrySplit2 = spliteratorK.trySplit();
                if (spliteratorTrySplit2 == null || spliteratorTrySplit2.getExactSizeIfKnown() == 0) {
                    final int i4 = 0;
                    spliteratorK.forEachRemaining(new Consumer() { // from class: com.google.common.collect.i1
                        /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i4) {
                            }
                            c1OptionalState.set(obj);
                        }
                    });
                    if (c1OptionalState.set) {
                        return Optional.of(c1OptionalState.get());
                    }
                } else {
                    arrayDeque.addLast(spliteratorTrySplit2);
                    arrayDeque.addLast(spliteratorK);
                }
            }
        }
        return Optional.empty();
    }

    @Beta
    public static <A, B> void forEachPair(Stream<A> stream, Stream<B> stream2, BiConsumer<? super A, ? super B> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        if (stream.isParallel() || stream2.isParallel()) {
            zip(stream, stream2, new BiFunction() { // from class: com.google.common.collect.h1
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new Streams.TemporaryPair(obj, obj2);
                }
            }).forEach(new l0(biConsumer, 1));
            return;
        }
        Iterator it = stream.iterator();
        Iterator it2 = stream2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            biConsumer.accept(it.next(), it2.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator lambda$concat$0(Spliterator spliterator) {
        return spliterator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator.OfInt lambda$concat$2(Spliterator.OfInt ofInt) {
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator.OfLong lambda$concat$4(Spliterator.OfLong ofLong) {
        return ofLong;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator.OfDouble lambda$concat$6(Spliterator.OfDouble ofDouble) {
        return ofDouble;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEachPair$8(BiConsumer biConsumer, TemporaryPair temporaryPair) {
        biConsumer.accept(temporaryPair.f422a, temporaryPair.f423b);
    }

    public static <T, R> Stream<R> mapWithIndex(Stream<T> stream, final FunctionWithIndex<? super T, ? extends R> functionWithIndex) {
        Preconditions.checkNotNull(stream);
        Preconditions.checkNotNull(functionWithIndex);
        boolean zIsParallel = stream.isParallel();
        Spliterator spliterator = stream.spliterator();
        if (spliterator.hasCharacteristics(16384)) {
            return j.u(StreamSupport.stream(new C1Splitr(spliterator, 0L, functionWithIndex), zIsParallel).onClose(new g1(stream, 2)));
        }
        final Iterator it = Spliterators.iterator(spliterator);
        return j.u(StreamSupport.stream(new Spliterators.AbstractSpliterator<R>(spliterator.estimateSize(), spliterator.characteristics() & 80) { // from class: com.google.common.collect.Streams.2
            long index = 0;

            @Override // java.util.Spliterator
            public boolean tryAdvance(Consumer<? super R> consumer) {
                if (!it.hasNext()) {
                    return false;
                }
                FunctionWithIndex functionWithIndex2 = functionWithIndex;
                Object next = it.next();
                long j2 = this.index;
                this.index = 1 + j2;
                consumer.accept(functionWithIndex2.apply(next, j2));
                return true;
            }
        }, zIsParallel).onClose(new g1(stream, 3)));
    }

    public static <T> Stream<T> stream(Iterable<T> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).stream() : StreamSupport.stream(iterable.spliterator(), false);
    }

    @Beta
    public static <A, B, R> Stream<R> zip(Stream<A> stream, Stream<B> stream2, final BiFunction<? super A, ? super B, R> biFunction) {
        Preconditions.checkNotNull(stream);
        Preconditions.checkNotNull(stream2);
        Preconditions.checkNotNull(biFunction);
        int i2 = 0;
        int i3 = 1;
        boolean z2 = stream.isParallel() || stream2.isParallel();
        Spliterator spliterator = stream.spliterator();
        Spliterator spliterator2 = stream2.spliterator();
        int iCharacteristics = spliterator.characteristics() & spliterator2.characteristics() & 80;
        final Iterator it = Spliterators.iterator(spliterator);
        final Iterator it2 = Spliterators.iterator(spliterator2);
        return j.u(j.u(StreamSupport.stream(new Spliterators.AbstractSpliterator<R>(Math.min(spliterator.estimateSize(), spliterator2.estimateSize()), iCharacteristics) { // from class: com.google.common.collect.Streams.1
            @Override // java.util.Spliterator
            public boolean tryAdvance(Consumer<? super R> consumer) {
                if (!it.hasNext() || !it2.hasNext()) {
                    return false;
                }
                consumer.accept(biFunction.apply(it.next(), it2.next()));
                return true;
            }
        }, z2).onClose(new g1(stream, i2))).onClose(new g1(stream2, i3)));
    }

    @InlineMe(replacement = "collection.stream()")
    @Deprecated
    public static <T> Stream<T> stream(Collection<T> collection) {
        return collection.stream();
    }

    public static <T> Stream<T> stream(Iterator<T> it) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(it, 0), false);
    }

    public static <T> Stream<T> stream(com.google.common.base.Optional<T> optional) {
        return optional.isPresent() ? Stream.of(optional.get()) : Stream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static <T> Stream<T> stream(Optional<T> optional) {
        return optional.isPresent() ? Stream.of(optional.get()) : Stream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static IntStream stream(OptionalInt optionalInt) {
        return optionalInt.isPresent() ? IntStream.of(optionalInt.getAsInt()) : IntStream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static LongStream stream(OptionalLong optionalLong) {
        return optionalLong.isPresent() ? LongStream.of(optionalLong.getAsLong()) : LongStream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static DoubleStream stream(OptionalDouble optionalDouble) {
        return optionalDouble.isPresent() ? DoubleStream.of(optionalDouble.getAsDouble()) : DoubleStream.empty();
    }

    public static IntStream concat(IntStream... intStreamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(intStreamArr.length);
        long jSaturatedAdd = 0;
        int iCharacteristics = 336;
        boolean zIsParallel = false;
        for (IntStream intStream : intStreamArr) {
            zIsParallel |= intStream.isParallel();
            Spliterator.OfInt ofIntSpliterator = intStream.spliterator();
            builder.add(ofIntSpliterator);
            iCharacteristics &= ofIntSpliterator.characteristics();
            jSaturatedAdd = LongMath.saturatedAdd(jSaturatedAdd, ofIntSpliterator.estimateSize());
        }
        return e1.w(StreamSupport.intStream(CollectSpliterators.flatMapToInt(builder.build().spliterator(), new f0(13), iCharacteristics, jSaturatedAdd), zIsParallel).onClose(new j1(intStreamArr, 3)));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.l1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.common.collect.l1] */
    public static <R> Stream<R> mapWithIndex(final IntStream intStream, final IntFunctionWithIndex<R> intFunctionWithIndex) {
        Preconditions.checkNotNull(intStream);
        Preconditions.checkNotNull(intFunctionWithIndex);
        boolean zIsParallel = intStream.isParallel();
        Spliterator.OfInt ofIntSpliterator = intStream.spliterator();
        if (!ofIntSpliterator.hasCharacteristics(16384)) {
            final PrimitiveIterator.OfInt it = Spliterators.iterator(ofIntSpliterator);
            Stream stream = StreamSupport.stream(new Spliterators.AbstractSpliterator<R>(ofIntSpliterator.estimateSize(), ofIntSpliterator.characteristics() & 80) { // from class: com.google.common.collect.Streams.3
                long index = 0;

                @Override // java.util.Spliterator
                public boolean tryAdvance(Consumer<? super R> consumer) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    IntFunctionWithIndex intFunctionWithIndex2 = intFunctionWithIndex;
                    int iNextInt = it.nextInt();
                    long j2 = this.index;
                    this.index = 1 + j2;
                    consumer.accept(intFunctionWithIndex2.apply(iNextInt, j2));
                    return true;
                }
            }, zIsParallel);
            final int i2 = 1;
            return j.u(stream.onClose(new Runnable() { // from class: com.google.common.collect.l1
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    IntStream intStream2 = intStream;
                    switch (i3) {
                        case 0:
                            intStream2.close();
                            break;
                        default:
                            intStream2.close();
                            break;
                    }
                }
            }));
        }
        Stream stream2 = StreamSupport.stream(new C2Splitr(ofIntSpliterator, 0L, intFunctionWithIndex), zIsParallel);
        final int i3 = 0;
        return j.u(stream2.onClose(new Runnable() { // from class: com.google.common.collect.l1
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = i3;
                IntStream intStream2 = intStream;
                switch (i4) {
                    case 0:
                        intStream2.close();
                        break;
                    default:
                        intStream2.close();
                        break;
                }
            }
        }));
    }

    public static OptionalInt findLast(IntStream intStream) {
        return com.google.common.base.a.f(findLast(intStream.boxed()).map(new f0(9)).orElseGet(new p(16)));
    }

    public static LongStream concat(LongStream... longStreamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(longStreamArr.length);
        int i2 = 0;
        int iCharacteristics = 336;
        long jSaturatedAdd = 0;
        boolean zIsParallel = false;
        for (LongStream longStream : longStreamArr) {
            zIsParallel |= longStream.isParallel();
            Spliterator.OfLong ofLongSpliterator = longStream.spliterator();
            builder.add(ofLongSpliterator);
            iCharacteristics &= ofLongSpliterator.characteristics();
            jSaturatedAdd = LongMath.saturatedAdd(jSaturatedAdd, ofLongSpliterator.estimateSize());
        }
        return d1.p(StreamSupport.longStream(CollectSpliterators.flatMapToLong(builder.build().spliterator(), new f0(8), iCharacteristics, jSaturatedAdd), zIsParallel).onClose(new j1(longStreamArr, i2)));
    }

    public static OptionalLong findLast(LongStream longStream) {
        return com.google.common.base.a.g(findLast(longStream.boxed()).map(new f0(12)).orElseGet(new p(17)));
    }

    public static OptionalDouble findLast(DoubleStream doubleStream) {
        return androidx.emoji2.text.e.k(findLast(doubleStream.boxed()).map(new f0(7)).orElseGet(new p(15)));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.m1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.common.collect.m1] */
    public static <R> Stream<R> mapWithIndex(final LongStream longStream, final LongFunctionWithIndex<R> longFunctionWithIndex) {
        Preconditions.checkNotNull(longStream);
        Preconditions.checkNotNull(longFunctionWithIndex);
        boolean zIsParallel = longStream.isParallel();
        Spliterator.OfLong ofLongSpliterator = longStream.spliterator();
        if (!ofLongSpliterator.hasCharacteristics(16384)) {
            final PrimitiveIterator.OfLong it = Spliterators.iterator(ofLongSpliterator);
            Stream stream = StreamSupport.stream(new Spliterators.AbstractSpliterator<R>(ofLongSpliterator.estimateSize(), ofLongSpliterator.characteristics() & 80) { // from class: com.google.common.collect.Streams.4
                long index = 0;

                @Override // java.util.Spliterator
                public boolean tryAdvance(Consumer<? super R> consumer) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    LongFunctionWithIndex longFunctionWithIndex2 = longFunctionWithIndex;
                    long jNextLong = it.nextLong();
                    long j2 = this.index;
                    this.index = 1 + j2;
                    consumer.accept(longFunctionWithIndex2.apply(jNextLong, j2));
                    return true;
                }
            }, zIsParallel);
            final int i2 = 1;
            return j.u(stream.onClose(new Runnable() { // from class: com.google.common.collect.m1
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    LongStream longStream2 = longStream;
                    switch (i3) {
                        case 0:
                            longStream2.close();
                            break;
                        default:
                            longStream2.close();
                            break;
                    }
                }
            }));
        }
        Stream stream2 = StreamSupport.stream(new C3Splitr(ofLongSpliterator, 0L, longFunctionWithIndex), zIsParallel);
        final int i3 = 0;
        return j.u(stream2.onClose(new Runnable() { // from class: com.google.common.collect.m1
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = i3;
                LongStream longStream2 = longStream;
                switch (i4) {
                    case 0:
                        longStream2.close();
                        break;
                    default:
                        longStream2.close();
                        break;
                }
            }
        }));
    }

    public static DoubleStream concat(DoubleStream... doubleStreamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(doubleStreamArr.length);
        long jSaturatedAdd = 0;
        int iCharacteristics = 336;
        boolean zIsParallel = false;
        for (DoubleStream doubleStream : doubleStreamArr) {
            zIsParallel |= doubleStream.isParallel();
            Spliterator.OfDouble ofDoubleSpliterator = doubleStream.spliterator();
            builder.add(ofDoubleSpliterator);
            iCharacteristics &= ofDoubleSpliterator.characteristics();
            jSaturatedAdd = LongMath.saturatedAdd(jSaturatedAdd, ofDoubleSpliterator.estimateSize());
        }
        return e1.s(StreamSupport.doubleStream(CollectSpliterators.flatMapToDouble(builder.build().spliterator(), new f0(11), iCharacteristics, jSaturatedAdd), zIsParallel).onClose(new j1(doubleStreamArr, 2)));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.k1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.common.collect.k1] */
    public static <R> Stream<R> mapWithIndex(final DoubleStream doubleStream, final DoubleFunctionWithIndex<R> doubleFunctionWithIndex) {
        Preconditions.checkNotNull(doubleStream);
        Preconditions.checkNotNull(doubleFunctionWithIndex);
        boolean zIsParallel = doubleStream.isParallel();
        Spliterator.OfDouble ofDoubleSpliterator = doubleStream.spliterator();
        if (!ofDoubleSpliterator.hasCharacteristics(16384)) {
            final PrimitiveIterator.OfDouble it = Spliterators.iterator(ofDoubleSpliterator);
            Stream stream = StreamSupport.stream(new Spliterators.AbstractSpliterator<R>(ofDoubleSpliterator.estimateSize(), ofDoubleSpliterator.characteristics() & 80) { // from class: com.google.common.collect.Streams.5
                long index = 0;

                @Override // java.util.Spliterator
                public boolean tryAdvance(Consumer<? super R> consumer) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    DoubleFunctionWithIndex doubleFunctionWithIndex2 = doubleFunctionWithIndex;
                    double dNextDouble = it.nextDouble();
                    long j2 = this.index;
                    this.index = 1 + j2;
                    consumer.accept(doubleFunctionWithIndex2.apply(dNextDouble, j2));
                    return true;
                }
            }, zIsParallel);
            final int i2 = 1;
            return j.u(stream.onClose(new Runnable() { // from class: com.google.common.collect.k1
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    DoubleStream doubleStream2 = doubleStream;
                    switch (i3) {
                        case 0:
                            doubleStream2.close();
                            break;
                        default:
                            doubleStream2.close();
                            break;
                    }
                }
            }));
        }
        Stream stream2 = StreamSupport.stream(new C4Splitr(ofDoubleSpliterator, 0L, doubleFunctionWithIndex), zIsParallel);
        final int i3 = 0;
        return j.u(stream2.onClose(new Runnable() { // from class: com.google.common.collect.k1
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = i3;
                DoubleStream doubleStream2 = doubleStream;
                switch (i4) {
                    case 0:
                        doubleStream2.close();
                        break;
                    default:
                        doubleStream2.close();
                        break;
                }
            }
        }));
    }
}
