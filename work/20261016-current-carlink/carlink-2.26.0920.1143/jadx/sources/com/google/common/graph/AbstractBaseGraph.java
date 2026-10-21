package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
abstract class AbstractBaseGraph<N> implements BaseGraph<N> {

    /* JADX INFO: renamed from: com.google.common.graph.AbstractBaseGraph$2, reason: invalid class name */
    public class AnonymousClass2 extends IncidentEdgeSet<N> {
        public AnonymousClass2(AbstractBaseGraph abstractBaseGraph, BaseGraph baseGraph, Object obj) {
            super(baseGraph, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ EndpointPair lambda$iterator$0(Object obj) {
            return EndpointPair.ordered(obj, this.node);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ EndpointPair lambda$iterator$1(Object obj) {
            return EndpointPair.ordered(this.node, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ EndpointPair lambda$iterator$2(Object obj) {
            return EndpointPair.unordered(this.node, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            if (!this.graph.isDirected()) {
                final int i2 = 2;
                return Iterators.unmodifiableIterator(Iterators.transform(this.graph.adjacentNodes(this.node).iterator(), new Function(this) { // from class: com.google.common.graph.a
                    public final /* synthetic */ AbstractBaseGraph.AnonymousClass2 c;

                    {
                        this.c = this;
                    }

                    @Override // com.google.common.base.Function, java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i2) {
                            case 0:
                                return this.c.lambda$iterator$0(obj);
                            case 1:
                                return this.c.lambda$iterator$1(obj);
                            default:
                                return this.c.lambda$iterator$2(obj);
                        }
                    }
                }));
            }
            final int i3 = 0;
            final int i4 = 1;
            return Iterators.unmodifiableIterator(Iterators.concat(Iterators.transform(this.graph.predecessors((Object) this.node).iterator(), new Function(this) { // from class: com.google.common.graph.a
                public final /* synthetic */ AbstractBaseGraph.AnonymousClass2 c;

                {
                    this.c = this;
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i3) {
                        case 0:
                            return this.c.lambda$iterator$0(obj);
                        case 1:
                            return this.c.lambda$iterator$1(obj);
                        default:
                            return this.c.lambda$iterator$2(obj);
                    }
                }
            }), Iterators.transform(Sets.difference(this.graph.successors((Object) this.node), ImmutableSet.of(this.node)).iterator(), new Function(this) { // from class: com.google.common.graph.a
                public final /* synthetic */ AbstractBaseGraph.AnonymousClass2 c;

                {
                    this.c = this;
                }

                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i4) {
                        case 0:
                            return this.c.lambda$iterator$0(obj);
                        case 1:
                            return this.c.lambda$iterator$1(obj);
                        default:
                            return this.c.lambda$iterator$2(obj);
                    }
                }
            })));
        }
    }

    @Override // com.google.common.graph.BaseGraph
    public int degree(N n2) {
        if (isDirected()) {
            return IntMath.saturatedAdd(predecessors((Object) n2).size(), successors((Object) n2).size());
        }
        Set<N> setAdjacentNodes = adjacentNodes(n2);
        return IntMath.saturatedAdd(setAdjacentNodes.size(), (allowsSelfLoops() && setAdjacentNodes.contains(n2)) ? 1 : 0);
    }

    public long edgeCount() {
        Iterator<N> it = nodes().iterator();
        long jDegree = 0;
        while (it.hasNext()) {
            jDegree += (long) degree(it.next());
        }
        Preconditions.checkState((1 & jDegree) == 0);
        return jDegree >>> 1;
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<EndpointPair<N>> edges() {
        return new AbstractSet<EndpointPair<N>>() { // from class: com.google.common.graph.AbstractBaseGraph.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof EndpointPair)) {
                    return false;
                }
                EndpointPair<?> endpointPair = (EndpointPair) obj;
                return AbstractBaseGraph.this.isOrderingCompatible(endpointPair) && AbstractBaseGraph.this.nodes().contains(endpointPair.nodeU()) && AbstractBaseGraph.this.successors(endpointPair.nodeU()).contains(endpointPair.nodeV());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Ints.saturatedCast(AbstractBaseGraph.this.edgeCount());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<EndpointPair<N>> iterator() {
                return EndpointPairIterator.of(AbstractBaseGraph.this);
            }
        };
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(N n2, N n3) {
        Preconditions.checkNotNull(n2);
        Preconditions.checkNotNull(n3);
        return nodes().contains(n2) && successors((Object) n2).contains(n3);
    }

    @Override // com.google.common.graph.BaseGraph
    public int inDegree(N n2) {
        return isDirected() ? predecessors((Object) n2).size() : degree(n2);
    }

    @Override // com.google.common.graph.BaseGraph
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.unordered();
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<EndpointPair<N>> incidentEdges(N n2) {
        Preconditions.checkNotNull(n2);
        Preconditions.checkArgument(nodes().contains(n2), "Node %s is not an element of this graph.", n2);
        return new AnonymousClass2(this, this, n2);
    }

    public final boolean isOrderingCompatible(EndpointPair<?> endpointPair) {
        return endpointPair.isOrdered() == isDirected();
    }

    @Override // com.google.common.graph.BaseGraph
    public int outDegree(N n2) {
        return isDirected() ? successors((Object) n2).size() : degree(n2);
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors(obj);
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors(obj);
    }

    public final void validateEndpoints(EndpointPair<?> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        Preconditions.checkArgument(isOrderingCompatible(endpointPair), "Mismatch: endpoints' ordering is not compatible with directionality of the graph");
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        if (!isOrderingCompatible(endpointPair)) {
            return false;
        }
        N nNodeU = endpointPair.nodeU();
        return nodes().contains(nNodeU) && successors((Object) nNodeU).contains(endpointPair.nodeV());
    }
}
