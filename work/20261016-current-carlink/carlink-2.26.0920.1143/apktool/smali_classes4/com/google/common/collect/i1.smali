.class public final synthetic Lcom/google/common/collect/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/collect/Streams$1OptionalState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Streams$1OptionalState;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/i1;->b:I

    iput-object p1, p0, Lcom/google/common/collect/i1;->c:Lcom/google/common/collect/Streams$1OptionalState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/i1;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/i1;->c:Lcom/google/common/collect/Streams$1OptionalState;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Streams$1OptionalState;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
