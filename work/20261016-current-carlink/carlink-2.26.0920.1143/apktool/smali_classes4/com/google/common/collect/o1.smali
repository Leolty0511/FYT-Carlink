.class public final synthetic Lcom/google/common/collect/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/o1;->a:I

    iput-object p1, p0, Lcom/google/common/collect/o1;->b:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/o1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/o1;->b:Ljava/util/function/BinaryOperator;

    check-cast p1, Lcom/google/common/collect/Table;

    check-cast p2, Lcom/google/common/collect/Table;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/TableCollectors;->a(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/Table;Lcom/google/common/collect/Table;)Lcom/google/common/collect/Table;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/o1;->b:Ljava/util/function/BinaryOperator;

    check-cast p1, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    check-cast p2, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/TableCollectors;->d(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;)Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
