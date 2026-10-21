.class public final synthetic Lcom/google/common/util/concurrent/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/DoubleBinaryOperator;

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(IDLjava/util/function/DoubleBinaryOperator;)V
    .locals 0

    iput p1, p0, Lcom/google/common/util/concurrent/i;->a:I

    iput-object p4, p0, Lcom/google/common/util/concurrent/i;->b:Ljava/util/function/DoubleBinaryOperator;

    iput-wide p2, p0, Lcom/google/common/util/concurrent/i;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 3

    iget v0, p0, Lcom/google/common/util/concurrent/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/i;->c:D

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->a(Ljava/util/function/DoubleBinaryOperator;DD)D

    move-result-wide p1

    return-wide p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/i;->c:D

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicDouble;->a(Ljava/util/function/DoubleBinaryOperator;DD)D

    move-result-wide p1

    return-wide p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/i;->c:D

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicDouble;->b(Ljava/util/function/DoubleBinaryOperator;DD)D

    move-result-wide p1

    return-wide p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/i;->c:D

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->b(Ljava/util/function/DoubleBinaryOperator;DD)D

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
