.class public final synthetic Lcom/google/common/collect/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:[Ljava/util/stream/BaseStream;


# direct methods
.method public synthetic constructor <init>([Ljava/util/stream/BaseStream;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/j1;->b:I

    iput-object p1, p0, Lcom/google/common/collect/j1;->c:[Ljava/util/stream/BaseStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/j1;->b:I

    iget-object v1, p0, Lcom/google/common/collect/j1;->c:[Ljava/util/stream/BaseStream;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, [Ljava/util/stream/DoubleStream;

    invoke-static {v1}, Lcom/google/common/collect/Streams;->h([Ljava/util/stream/DoubleStream;)V

    return-void

    :pswitch_1
    check-cast v1, [Ljava/util/stream/Stream;

    invoke-static {v1}, Lcom/google/common/collect/Streams;->c([Ljava/util/stream/Stream;)V

    return-void

    :pswitch_2
    check-cast v1, [Ljava/util/stream/LongStream;

    invoke-static {v1}, Lcom/google/common/collect/Streams;->i([Ljava/util/stream/LongStream;)V

    return-void

    :goto_0
    check-cast v1, [Ljava/util/stream/IntStream;

    invoke-static {v1}, Lcom/google/common/collect/Streams;->e([Ljava/util/stream/IntStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
