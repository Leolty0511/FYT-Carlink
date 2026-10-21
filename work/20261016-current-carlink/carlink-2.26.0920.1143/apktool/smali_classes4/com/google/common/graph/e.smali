.class public final synthetic Lcom/google/common/graph/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/graph/e;->b:I

    iput-object p1, p0, Lcom/google/common/graph/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/graph/e;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/graph/e;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;

    invoke-static {v0, p1}, Lcom/google/common/graph/DirectedGraphConnections;->a(Ljava/lang/Object;Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/graph/e;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/DirectedGraphConnections;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/graph/e;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/DirectedGraphConnections;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/e;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/UndirectedGraphConnections;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
