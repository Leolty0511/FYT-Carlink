.class public final synthetic Lcom/google/common/collect/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/stream/Stream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Stream;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/g1;->b:I

    iput-object p1, p0, Lcom/google/common/collect/g1;->c:Ljava/util/stream/Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/g1;->b:I

    iget-object v1, p0, Lcom/google/common/collect/g1;->c:Ljava/util/stream/Stream;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/common/collect/d1;->x(Ljava/util/stream/Stream;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/google/common/collect/d1;->x(Ljava/util/stream/Stream;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/google/common/collect/d1;->x(Ljava/util/stream/Stream;)V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/d1;->x(Ljava/util/stream/Stream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
