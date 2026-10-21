package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
final class DirectedGraphConnections<N, V> implements GraphConnections<N, V> {
    private static final Object PRED = new Object();
    private final Map<N, Object> adjacentNodeValues;
    private final List<NodeConnection<N>> orderedNodeConnections;
    private int predecessorCount;
    private int successorCount;

    /* JADX INFO: renamed from: com.google.common.graph.DirectedGraphConnections$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$graph$ElementOrder$Type;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            $SwitchMap$com$google$common$graph$ElementOrder$Type = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$graph$ElementOrder$Type[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class NodeConnection<N> {
        final N node;

        public static final class Pred<N> extends NodeConnection<N> {
            public Pred(N n2) {
                super(n2);
            }

            public boolean equals(Object obj) {
                if (obj instanceof Pred) {
                    return this.node.equals(((Pred) obj).node);
                }
                return false;
            }

            public int hashCode() {
                return this.node.hashCode() + Pred.class.hashCode();
            }
        }

        public static final class Succ<N> extends NodeConnection<N> {
            public Succ(N n2) {
                super(n2);
            }

            public boolean equals(Object obj) {
                if (obj instanceof Succ) {
                    return this.node.equals(((Succ) obj).node);
                }
                return false;
            }

            public int hashCode() {
                return this.node.hashCode() + Succ.class.hashCode();
            }
        }

        public NodeConnection(N n2) {
            this.node = (N) Preconditions.checkNotNull(n2);
        }
    }

    public static final class PredAndSucc {
        private final Object successorValue;

        public PredAndSucc(Object obj) {
            this.successorValue = obj;
        }
    }

    private DirectedGraphConnections(Map<N, Object> map, List<NodeConnection<N>> list, int i2, int i3) {
        this.adjacentNodeValues = (Map) Preconditions.checkNotNull(map);
        this.orderedNodeConnections = list;
        this.predecessorCount = Graphs.checkNonNegative(i2);
        this.successorCount = Graphs.checkNonNegative(i3);
        Preconditions.checkState(i2 <= map.size() && i3 <= map.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPredecessor(Object obj) {
        return obj == PRED || (obj instanceof PredAndSucc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSuccessor(Object obj) {
        return (obj == PRED || obj == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ EndpointPair lambda$incidentEdgeIterator$0(Object obj, Object obj2) {
        return EndpointPair.ordered(obj2, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ EndpointPair lambda$incidentEdgeIterator$2(Object obj, NodeConnection nodeConnection) {
        return nodeConnection instanceof NodeConnection.Succ ? EndpointPair.ordered(obj, nodeConnection.node) : EndpointPair.ordered(nodeConnection.node, obj);
    }

    public static <N, V> DirectedGraphConnections<N, V> of(ElementOrder<N> elementOrder) {
        ArrayList arrayList;
        int i2 = AnonymousClass5.$SwitchMap$com$google$common$graph$ElementOrder$Type[elementOrder.type().ordinal()];
        if (i2 == 1) {
            arrayList = null;
        } else {
            if (i2 != 2) {
                throw new AssertionError(elementOrder.type());
            }
            arrayList = new ArrayList();
        }
        return new DirectedGraphConnections<>(new HashMap(4, 1.0f), arrayList, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N, V> DirectedGraphConnections<N, V> ofImmutable(N n2, Iterable<EndpointPair<N>> iterable, Function<N, V> function) {
        Preconditions.checkNotNull(n2);
        Preconditions.checkNotNull(function);
        HashMap map = new HashMap();
        ImmutableList.Builder builder = ImmutableList.builder();
        int i2 = 0;
        int i3 = 0;
        for (EndpointPair<N> endpointPair : iterable) {
            if (endpointPair.nodeU().equals(n2) && endpointPair.nodeV().equals(n2)) {
                map.put(n2, new PredAndSucc(function.apply(n2)));
                builder.add(new NodeConnection.Pred(n2));
                builder.add(new NodeConnection.Succ(n2));
                i2++;
            } else if (endpointPair.nodeV().equals(n2)) {
                N nNodeU = endpointPair.nodeU();
                Object objPut = map.put(nNodeU, PRED);
                if (objPut != null) {
                    map.put(nNodeU, new PredAndSucc(objPut));
                }
                builder.add(new NodeConnection.Pred(nNodeU));
                i2++;
            } else {
                Preconditions.checkArgument(endpointPair.nodeU().equals(n2));
                N nNodeV = endpointPair.nodeV();
                V vApply = function.apply(nNodeV);
                Object objPut2 = map.put(nNodeV, vApply);
                if (objPut2 != null) {
                    Preconditions.checkArgument(objPut2 == PRED);
                    map.put(nNodeV, new PredAndSucc(vApply));
                }
                builder.add(new NodeConnection.Succ(nNodeV));
            }
            i3++;
        }
        return new DirectedGraphConnections<>(map, builder.build(), i2, i3);
    }

    @Override // com.google.common.graph.GraphConnections
    public void addPredecessor(N n2, V v2) {
        boolean z2;
        Map<N, Object> map = this.adjacentNodeValues;
        Object obj = PRED;
        Object objPut = map.put(n2, obj);
        if (objPut == null) {
            z2 = true;
        } else {
            z2 = false;
            if (objPut instanceof PredAndSucc) {
                this.adjacentNodeValues.put(n2, objPut);
            } else if (objPut != obj) {
                this.adjacentNodeValues.put(n2, new PredAndSucc(objPut));
                z2 = true;
            }
        }
        if (z2) {
            int i2 = this.predecessorCount + 1;
            this.predecessorCount = i2;
            Graphs.checkPositive(i2);
            List<NodeConnection<N>> list = this.orderedNodeConnections;
            if (list != null) {
                list.add(new NodeConnection.Pred(n2));
            }
        }
    }

    @Override // com.google.common.graph.GraphConnections
    public V addSuccessor(N n2, V v2) {
        Object objPut = this.adjacentNodeValues.put(n2, v2);
        if (objPut == null) {
            objPut = null;
        } else if (objPut instanceof PredAndSucc) {
            this.adjacentNodeValues.put(n2, new PredAndSucc(v2));
            objPut = ((PredAndSucc) objPut).successorValue;
        } else if (objPut == PRED) {
            this.adjacentNodeValues.put(n2, new PredAndSucc(v2));
            objPut = null;
        }
        if (objPut == null) {
            int i2 = this.successorCount + 1;
            this.successorCount = i2;
            Graphs.checkPositive(i2);
            List<NodeConnection<N>> list = this.orderedNodeConnections;
            if (list != null) {
                list.add(new NodeConnection.Succ(n2));
            }
        }
        if (objPut == null) {
            return null;
        }
        return (V) objPut;
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> adjacentNodes() {
        return this.orderedNodeConnections == null ? Collections.unmodifiableSet(this.adjacentNodeValues.keySet()) : new AbstractSet<N>() { // from class: com.google.common.graph.DirectedGraphConnections.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return DirectedGraphConnections.this.adjacentNodeValues.containsKey(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DirectedGraphConnections.this.adjacentNodeValues.size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<N> iterator() {
                final Iterator it = DirectedGraphConnections.this.orderedNodeConnections.iterator();
                final HashSet hashSet = new HashSet();
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.1.1
                    @Override // com.google.common.collect.AbstractIterator
                    public N computeNext() {
                        while (it.hasNext()) {
                            NodeConnection nodeConnection = (NodeConnection) it.next();
                            if (hashSet.add(nodeConnection.node)) {
                                return nodeConnection.node;
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    @Override // com.google.common.graph.GraphConnections
    public Iterator<EndpointPair<N>> incidentEdgeIterator(N n2) {
        Preconditions.checkNotNull(n2);
        List<NodeConnection<N>> list = this.orderedNodeConnections;
        final Iterator itConcat = list == null ? Iterators.concat(Iterators.transform(predecessors().iterator(), new e(n2, 0)), Iterators.transform(successors().iterator(), new e(n2, 1))) : Iterators.transform(list.iterator(), new e(n2, 2));
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        return new AbstractIterator<EndpointPair<N>>(this) { // from class: com.google.common.graph.DirectedGraphConnections.4
            @Override // com.google.common.collect.AbstractIterator
            public EndpointPair<N> computeNext() {
                while (itConcat.hasNext()) {
                    EndpointPair<N> endpointPair = (EndpointPair) itConcat.next();
                    if (!endpointPair.nodeU().equals(endpointPair.nodeV()) || !atomicBoolean.getAndSet(true)) {
                        return endpointPair;
                    }
                }
                return endOfData();
            }
        };
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> predecessors() {
        return new AbstractSet<N>() { // from class: com.google.common.graph.DirectedGraphConnections.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return DirectedGraphConnections.isPredecessor(DirectedGraphConnections.this.adjacentNodeValues.get(obj));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DirectedGraphConnections.this.predecessorCount;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<N> iterator() {
                if (DirectedGraphConnections.this.orderedNodeConnections == null) {
                    final Iterator it = DirectedGraphConnections.this.adjacentNodeValues.entrySet().iterator();
                    return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.2.1
                        @Override // com.google.common.collect.AbstractIterator
                        public N computeNext() {
                            while (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                if (DirectedGraphConnections.isPredecessor(entry.getValue())) {
                                    return (N) entry.getKey();
                                }
                            }
                            return endOfData();
                        }
                    };
                }
                final Iterator it2 = DirectedGraphConnections.this.orderedNodeConnections.iterator();
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.2.2
                    @Override // com.google.common.collect.AbstractIterator
                    public N computeNext() {
                        while (it2.hasNext()) {
                            NodeConnection nodeConnection = (NodeConnection) it2.next();
                            if (nodeConnection instanceof NodeConnection.Pred) {
                                return nodeConnection.node;
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:? A[RETURN, SYNTHETIC] */
    @Override // com.google.common.graph.GraphConnections
    public void removePredecessor(N n2) {
        boolean z2;
        List<NodeConnection<N>> list;
        Preconditions.checkNotNull(n2);
        Object obj = this.adjacentNodeValues.get(n2);
        if (obj != PRED) {
            if (obj instanceof PredAndSucc) {
                this.adjacentNodeValues.put(n2, ((PredAndSucc) obj).successorValue);
            } else {
                z2 = false;
            }
            if (z2) {
                int i2 = this.predecessorCount - 1;
                this.predecessorCount = i2;
                Graphs.checkNonNegative(i2);
                list = this.orderedNodeConnections;
                if (list != null) {
                    list.remove(new NodeConnection.Pred(n2));
                }
            }
        }
        this.adjacentNodeValues.remove(n2);
        z2 = true;
        if (z2) {
            int i3 = this.predecessorCount - 1;
            this.predecessorCount = i3;
            Graphs.checkNonNegative(i3);
            list = this.orderedNodeConnections;
            if (list != null) {
                list.remove(new NodeConnection.Pred(n2));
            }
        }
    }

    @Override // com.google.common.graph.GraphConnections
    public V removeSuccessor(Object obj) {
        Object obj2;
        Preconditions.checkNotNull(obj);
        Object obj3 = this.adjacentNodeValues.get(obj);
        if (obj3 == null || obj3 == (obj2 = PRED)) {
            obj3 = null;
        } else if (obj3 instanceof PredAndSucc) {
            this.adjacentNodeValues.put(obj, obj2);
            obj3 = ((PredAndSucc) obj3).successorValue;
        } else {
            this.adjacentNodeValues.remove(obj);
        }
        if (obj3 != null) {
            int i2 = this.successorCount - 1;
            this.successorCount = i2;
            Graphs.checkNonNegative(i2);
            List<NodeConnection<N>> list = this.orderedNodeConnections;
            if (list != null) {
                list.remove(new NodeConnection.Succ(obj));
            }
        }
        if (obj3 == null) {
            return null;
        }
        return (V) obj3;
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> successors() {
        return new AbstractSet<N>() { // from class: com.google.common.graph.DirectedGraphConnections.3
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return DirectedGraphConnections.isSuccessor(DirectedGraphConnections.this.adjacentNodeValues.get(obj));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DirectedGraphConnections.this.successorCount;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<N> iterator() {
                if (DirectedGraphConnections.this.orderedNodeConnections == null) {
                    final Iterator it = DirectedGraphConnections.this.adjacentNodeValues.entrySet().iterator();
                    return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.3.1
                        @Override // com.google.common.collect.AbstractIterator
                        public N computeNext() {
                            while (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                if (DirectedGraphConnections.isSuccessor(entry.getValue())) {
                                    return (N) entry.getKey();
                                }
                            }
                            return endOfData();
                        }
                    };
                }
                final Iterator it2 = DirectedGraphConnections.this.orderedNodeConnections.iterator();
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.3.2
                    @Override // com.google.common.collect.AbstractIterator
                    public N computeNext() {
                        while (it2.hasNext()) {
                            NodeConnection nodeConnection = (NodeConnection) it2.next();
                            if (nodeConnection instanceof NodeConnection.Succ) {
                                return nodeConnection.node;
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.GraphConnections
    public V value(N n2) {
        Preconditions.checkNotNull(n2);
        V v2 = (V) this.adjacentNodeValues.get(n2);
        if (v2 == PRED) {
            return null;
        }
        return v2 instanceof PredAndSucc ? (V) ((PredAndSucc) v2).successorValue : v2;
    }
}
