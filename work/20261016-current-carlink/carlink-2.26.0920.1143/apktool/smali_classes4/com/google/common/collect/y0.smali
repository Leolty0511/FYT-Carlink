.class public final synthetic Lcom/google/common/collect/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/y0;->b:I

    iput-object p1, p0, Lcom/google/common/collect/y0;->c:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/y0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/y0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/y0;->c:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets$3;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/y0;->c:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets$3;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/y0;->c:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets$1;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/y0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
