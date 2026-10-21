.class public final synthetic Lcom/google/common/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/cache/e;->b:I

    iput-object p1, p0, Lcom/google/common/cache/e;->c:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/cache/e;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/cache/e;->c:Ljava/util/function/Predicate;

    invoke-static {v0, p1, p2}, Lcom/google/common/cache/LocalCache$EntrySet;->a(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/e;->c:Ljava/util/function/Predicate;

    invoke-static {v0, p1, p2}, Lcom/google/common/cache/LocalCache$Values;->a(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
