.class public final synthetic Lcom/google/common/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/cache/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/cache/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/cache/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/common/cache/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/cache/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/cache/c;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/c;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/cache/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
