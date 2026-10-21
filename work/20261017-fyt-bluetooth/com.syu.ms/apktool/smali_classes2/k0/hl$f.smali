.class public Lk0/hl$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hl;


# direct methods
.method public constructor <init>(Lk0/hl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/hl$f;->a:Lk0/hl;

    iget v1, v0, Lk0/hl;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/hl;->n:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    .line 2
    sget v1, Lu0/b;->a0:I

    const/4 v4, 0x4

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/hl;->m3(Lk0/hl;I)V

    .line 4
    iget-object v0, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v0}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/hl;->n3(Lk0/hl;I)V

    new-array v0, v4, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/16 v5, 0xa

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    const/16 v6, 0x12

    if-eq v0, v6, :cond_0

    const/16 v6, 0x15

    if-eq v0, v6, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v0}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v6, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v6}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lo1/g0;->b(II)I

    move-result v4

    iget-object v6, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v6}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v0, v2, v4, v3}, Lk0/hl;->o3(Lk0/hl;III)V

    .line 8
    iget-object v0, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v0}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v2, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v2}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lk0/hl;->p3(Lk0/hl;II)V

    .line 9
    iget-object v0, p0, Lk0/hl$f;->a:Lk0/hl;

    invoke-static {v0}, Lk0/hl;->l3(Lk0/hl;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/hl;->q3(Lk0/hl;I)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 10
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, Lk0/hl;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/hl$f;->a:Lk0/hl;

    iput v3, v0, Lk0/hl;->n:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x5
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x5
        0x4
        0x1
    .end array-data
.end method
