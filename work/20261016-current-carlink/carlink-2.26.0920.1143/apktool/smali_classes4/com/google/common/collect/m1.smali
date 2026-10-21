.class public final synthetic Lcom/google/common/collect/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/stream/LongStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/LongStream;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/m1;->b:I

    iput-object p1, p0, Lcom/google/common/collect/m1;->c:Ljava/util/stream/LongStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/m1;->b:I

    iget-object v1, p0, Lcom/google/common/collect/m1;->c:Ljava/util/stream/LongStream;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/common/collect/e1;->A(Ljava/util/stream/LongStream;)V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/e1;->A(Ljava/util/stream/LongStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
