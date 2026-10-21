package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
final class TableCollectors {

    public static final class ImmutableTableCollectorState<R, C, V> {
        final List<MutableCell<R, C, V>> insertionOrder;
        final Table<R, C, MutableCell<R, C, V>> table;

        private ImmutableTableCollectorState() {
            this.insertionOrder = new ArrayList();
            this.table = HashBasedTable.create();
        }

        public ImmutableTableCollectorState<R, C, V> combine(ImmutableTableCollectorState<R, C, V> immutableTableCollectorState, BinaryOperator<V> binaryOperator) {
            for (MutableCell<R, C, V> mutableCell : immutableTableCollectorState.insertionOrder) {
                put(mutableCell.getRowKey(), mutableCell.getColumnKey(), mutableCell.getValue(), binaryOperator);
            }
            return this;
        }

        public void put(R r2, C c, V v2, BinaryOperator<V> binaryOperator) {
            MutableCell<R, C, V> mutableCell = this.table.get(r2, c);
            if (mutableCell != null) {
                mutableCell.merge(v2, binaryOperator);
                return;
            }
            MutableCell<R, C, V> mutableCell2 = new MutableCell<>(r2, c, v2);
            this.insertionOrder.add(mutableCell2);
            this.table.put(r2, c, mutableCell2);
        }

        public ImmutableTable<R, C, V> toTable() {
            return ImmutableTable.copyOf(this.insertionOrder);
        }
    }

    public static final class MutableCell<R, C, V> extends Tables.AbstractCell<R, C, V> {
        private final C column;
        private final R row;
        private V value;

        public MutableCell(R r2, C c, V v2) {
            this.row = (R) Preconditions.checkNotNull(r2, "row");
            this.column = (C) Preconditions.checkNotNull(c, "column");
            this.value = (V) Preconditions.checkNotNull(v2, "value");
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return this.column;
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return this.row;
        }

        @Override // com.google.common.collect.Table.Cell
        public V getValue() {
            return this.value;
        }

        public void merge(V v2, BinaryOperator<V> binaryOperator) {
            Preconditions.checkNotNull(v2, "value");
            this.value = (V) Preconditions.checkNotNull(binaryOperator.apply(this.value, v2), "mergeFunction.apply");
        }
    }

    private TableCollectors() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toImmutableTable$0(Function function, Function function2, Function function3, ImmutableTable.Builder builder, Object obj) {
        builder.put(function.apply(obj), function2.apply(obj), function3.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableTableCollectorState lambda$toImmutableTable$1() {
        return new ImmutableTableCollectorState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toImmutableTable$2(Function function, Function function2, Function function3, BinaryOperator binaryOperator, ImmutableTableCollectorState immutableTableCollectorState, Object obj) {
        immutableTableCollectorState.put(function.apply(obj), function2.apply(obj), function3.apply(obj), binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableTableCollectorState lambda$toImmutableTable$3(BinaryOperator binaryOperator, ImmutableTableCollectorState immutableTableCollectorState, ImmutableTableCollectorState immutableTableCollectorState2) {
        return immutableTableCollectorState.combine(immutableTableCollectorState2, binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$toTable$5(Object obj, Object obj2) {
        throw new IllegalStateException("Conflicting values " + obj + " and " + obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toTable$6(Function function, Function function2, Function function3, BinaryOperator binaryOperator, Table table, Object obj) {
        mergeTables(table, function.apply(obj), function2.apply(obj), function3.apply(obj), binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Table lambda$toTable$7(BinaryOperator binaryOperator, Table table, Table table2) {
        for (Table.Cell cell : table2.cellSet()) {
            mergeTables(table, cell.getRowKey(), cell.getColumnKey(), cell.getValue(), binaryOperator);
        }
        return table;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <R, C, V> void mergeTables(Table<R, C, V> table, @ParametricNullness R r2, @ParametricNullness C c, @ParametricNullness V v2, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(v2);
        Object obj = table.get(r2, c);
        if (obj == null) {
            table.put(r2, c, v2);
            return;
        }
        Object objApply = binaryOperator.apply(obj, v2);
        if (objApply == null) {
            table.remove(r2, c);
        } else {
            table.put(r2, c, objApply);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.collect.p1] */
    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(final Function<? super T, ? extends R> function, final Function<? super T, ? extends C> function2, final Function<? super T, ? extends V> function3) {
        Preconditions.checkNotNull(function, "rowFunction");
        Preconditions.checkNotNull(function2, "columnFunction");
        Preconditions.checkNotNull(function3, "valueFunction");
        return Collector.of(new p(18), new BiConsumer() { // from class: com.google.common.collect.p1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                TableCollectors.lambda$toImmutableTable$0(function, function2, function3, (ImmutableTable.Builder) obj, obj2);
            }
        }, new l(23), new f0(14), new Collector.Characteristics[0]);
    }

    public static <T, R, C, V, I extends Table<R, C, V>> Collector<T, ?, I> toTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, Supplier<I> supplier) {
        return toTable(function, function2, function3, new l(11), supplier);
    }

    public static <T, R, C, V, I extends Table<R, C, V>> Collector<T, ?, I> toTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator, Supplier<I> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(function3);
        Preconditions.checkNotNull(binaryOperator);
        Preconditions.checkNotNull(supplier);
        return Collector.of(supplier, new n1(function, function2, function3, binaryOperator, 0), new o1(binaryOperator, 0), new Collector.Characteristics[0]);
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(function, "rowFunction");
        Preconditions.checkNotNull(function2, "columnFunction");
        Preconditions.checkNotNull(function3, "valueFunction");
        Preconditions.checkNotNull(binaryOperator, "mergeFunction");
        return Collector.of(new p(4), new n1(function, function2, function3, binaryOperator, 1), new o1(binaryOperator, 1), new c(10), new Collector.Characteristics[0]);
    }
}
