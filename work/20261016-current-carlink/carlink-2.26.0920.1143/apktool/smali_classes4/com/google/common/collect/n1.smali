.class public final synthetic Lcom/google/common/collect/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic d:Ljava/util/function/Function;

.field public final synthetic e:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;I)V
    .locals 0

    iput p5, p0, Lcom/google/common/collect/n1;->a:I

    iput-object p1, p0, Lcom/google/common/collect/n1;->b:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/n1;->c:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/common/collect/n1;->d:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/google/common/collect/n1;->e:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    iget v0, p0, Lcom/google/common/collect/n1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/common/collect/n1;->b:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/google/common/collect/n1;->c:Ljava/util/function/Function;

    iget-object v3, p0, Lcom/google/common/collect/n1;->d:Ljava/util/function/Function;

    iget-object v4, p0, Lcom/google/common/collect/n1;->e:Ljava/util/function/BinaryOperator;

    move-object v5, p1

    check-cast v5, Lcom/google/common/collect/Table;

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/google/common/collect/TableCollectors;->b(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/Table;Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object v6, p0, Lcom/google/common/collect/n1;->b:Ljava/util/function/Function;

    iget-object v7, p0, Lcom/google/common/collect/n1;->c:Ljava/util/function/Function;

    iget-object v8, p0, Lcom/google/common/collect/n1;->d:Ljava/util/function/Function;

    iget-object v9, p0, Lcom/google/common/collect/n1;->e:Ljava/util/function/BinaryOperator;

    move-object v10, p1

    check-cast v10, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Lcom/google/common/collect/TableCollectors;->f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
