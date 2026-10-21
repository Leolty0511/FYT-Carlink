.class public final synthetic Lcom/google/common/graph/c;
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

    iput p2, p0, Lcom/google/common/graph/c;->b:I

    iput-object p1, p0, Lcom/google/common/graph/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/graph/c;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/graph/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/graph/Graphs$TransposedGraph$1;

    check-cast p1, Lcom/google/common/graph/EndpointPair;

    invoke-static {v0, p1}, Lcom/google/common/graph/Graphs$TransposedGraph$1;->a(Lcom/google/common/graph/Graphs$TransposedGraph$1;Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/graph/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/graph/AbstractNetwork$1$1;

    invoke-static {v0, p1}, Lcom/google/common/graph/AbstractNetwork$1$1;->a(Lcom/google/common/graph/AbstractNetwork$1$1;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/graph/ValueGraph;

    check-cast p1, Lcom/google/common/graph/EndpointPair;

    invoke-static {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->a(Lcom/google/common/graph/ValueGraph;Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
