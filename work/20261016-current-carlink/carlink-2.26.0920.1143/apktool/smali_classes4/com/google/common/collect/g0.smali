.class public final synthetic Lcom/google/common/collect/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/g0;->a:I

    iput-object p1, p0, Lcom/google/common/collect/g0;->b:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/g0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/g0;->b:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/Maps$KeySet;->a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/g0;->b:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableMapValues;->a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/g0;->b:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableMapKeySet;->a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/g0;->b:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/Maps$Values;->a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
