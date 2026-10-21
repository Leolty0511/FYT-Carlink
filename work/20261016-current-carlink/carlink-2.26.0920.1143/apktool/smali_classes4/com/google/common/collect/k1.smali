.class public final synthetic Lcom/google/common/collect/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/DoubleStream;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/k1;->b:I

    iput-object p1, p0, Lcom/google/common/collect/k1;->c:Ljava/util/stream/DoubleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/k1;->b:I

    iget-object v1, p0, Lcom/google/common/collect/k1;->c:Ljava/util/stream/DoubleStream;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/common/collect/d1;->w(Ljava/util/stream/DoubleStream;)V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/d1;->w(Ljava/util/stream/DoubleStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
