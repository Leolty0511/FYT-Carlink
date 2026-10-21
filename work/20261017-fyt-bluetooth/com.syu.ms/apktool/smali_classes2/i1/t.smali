.class public Li1/t;
.super Li1/s;
.source "SourceFile"

# interfaces
.implements Li1/b0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/t$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/s<",
        "Li1/t$d;",
        ">;",
        "Li1/b0$a;"
    }
.end annotation


# instance fields
.field public A:[I

.field public final B:Ljava/lang/Runnable;

.field public final C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public p:Li1/b0;

.field public q:Landroid/util/SparseIntArray;

.field public r:Landroid/util/SparseIntArray;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:[I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/s;-><init>(II)V

    const/16 p1, 0xd2

    .line 2
    iput p1, p0, Li1/t;->h:I

    const/16 p1, 0xd3

    .line 3
    iput p1, p0, Li1/t;->i:I

    const/16 p1, 0xd4

    .line 4
    iput p1, p0, Li1/t;->j:I

    const/16 p1, 0xd5

    .line 5
    iput p1, p0, Li1/t;->k:I

    const/16 p1, 0xd6

    .line 6
    iput p1, p0, Li1/t;->l:I

    const/16 p1, 0xd7

    .line 7
    iput p1, p0, Li1/t;->m:I

    const/16 p1, 0xd8

    .line 8
    iput p1, p0, Li1/t;->n:I

    const/16 p1, 0xd9

    .line 9
    iput p1, p0, Li1/t;->o:I

    .line 10
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    .line 11
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    .line 12
    new-instance p1, Li1/t$a;

    invoke-direct {p1, p0}, Li1/t$a;-><init>(Li1/t;)V

    iput-object p1, p0, Li1/t;->B:Ljava/lang/Runnable;

    .line 13
    new-instance p1, Li1/t$b;

    invoke-direct {p1, p0}, Li1/t$b;-><init>(Li1/t;)V

    iput-object p1, p0, Li1/t;->C:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Li1/t$c;

    invoke-direct {p1, p0}, Li1/t$c;-><init>(Li1/t;)V

    iput-object p1, p0, Li1/t;->D:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Li1/t$d;

    invoke-direct {p1}, Li1/t$d;-><init>()V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 16
    invoke-virtual {p1}, Li1/e;->h()V

    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xd9

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 3
    invoke-virtual {p0, v0, v1}, Li1/s;->r(I[I)V

    :cond_0
    return-void
.end method

.method public a(Li1/b0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Li1/t;->p:Li1/b0;

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object v0, p0, Li1/t;->D:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c([B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li1/s;->b([B)V

    return-void
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 8

    const/4 p3, 0x1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    move p3, p4

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-static {p2, p3}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Li1/t;->y:I

    aget v0, p2, p4

    iget-object v1, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    aget p4, p2, p4

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    aget p2, p2, p3

    invoke-virtual {p0, p1, v0, p4, p2}, Li1/t;->w(IIII)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-static {p2, p3}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Li1/t;->y:I

    aget v0, p2, p4

    aget v1, p2, p3

    iget-object v2, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    aget p2, p2, p4

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Li1/t;->w(IIII)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p2, p4

    iget v0, p0, Li1/t;->y:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x3

    new-array v0, p1, [I

    aput p1, v0, p4

    aput p3, v0, p3

    .line 8
    aget p1, p2, p4

    const/4 p2, 0x2

    add-int/2addr p1, p2

    aput p1, v0, p2

    invoke-virtual {p0, v0}, Li1/t;->y([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-static {p2, p3}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p2, p4

    iget v0, p0, Li1/t;->w:I

    if-ne p1, v0, :cond_0

    aget p1, p2, p3

    iget v0, p0, Li1/t;->x:I

    if-eq p1, v0, :cond_1

    .line 10
    :cond_0
    iget v2, p0, Li1/t;->u:I

    iget v3, p0, Li1/t;->s:I

    iget v4, p0, Li1/t;->t:I

    iget v5, p0, Li1/t;->v:I

    aget v6, p2, p4

    aget v7, p2, p3

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Li1/t;->x(IIIIII)[I

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p2, p4

    iget v0, p0, Li1/t;->v:I

    if-eq p1, v0, :cond_1

    .line 13
    iget v2, p0, Li1/t;->u:I

    iget v3, p0, Li1/t;->s:I

    iget v4, p0, Li1/t;->t:I

    aget v5, p2, p4

    iget v6, p0, Li1/t;->w:I

    iget v7, p0, Li1/t;->x:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Li1/t;->x(IIIIII)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p2, p4

    iget v0, p0, Li1/t;->t:I

    if-eq p1, v0, :cond_1

    .line 15
    iget v2, p0, Li1/t;->u:I

    iget v3, p0, Li1/t;->s:I

    aget v4, p2, p4

    iget v5, p0, Li1/t;->v:I

    iget v6, p0, Li1/t;->w:I

    iget v7, p0, Li1/t;->x:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Li1/t;->x(IIIIII)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p2, p4

    iget v0, p0, Li1/t;->s:I

    if-eq p1, v0, :cond_1

    .line 17
    iget v2, p0, Li1/t;->u:I

    aget v3, p2, p4

    iget v4, p0, Li1/t;->t:I

    iget v5, p0, Li1/t;->v:I

    iget v6, p0, Li1/t;->w:I

    iget v7, p0, Li1/t;->x:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Li1/t;->x(IIIIII)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    goto :goto_0

    .line 18
    :pswitch_7
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p2, p4

    iget v0, p0, Li1/t;->u:I

    if-eq p1, v0, :cond_1

    .line 19
    aget v2, p2, p4

    iget v3, p0, Li1/t;->s:I

    iget v4, p0, Li1/t;->t:I

    iget v5, p0, Li1/t;->v:I

    iget v6, p0, Li1/t;->w:I

    iget v7, p0, Li1/t;->x:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Li1/t;->x(IIIIII)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/t;->y([I)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 20
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object p2, p0, Li1/t;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object p2, p0, Li1/t;->D:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return p3

    :pswitch_data_0
    .packed-switch 0xd2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l([I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Li1/t;->v()V

    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    array-length v1, p1

    .line 4
    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    iput-object v4, p0, Li1/t;->A:[I

    .line 5
    aget v4, p1, v3

    .line 6
    iget v5, p0, Li1/t;->y:I

    if-eq v4, v5, :cond_1

    .line 7
    iput v4, p0, Li1/t;->y:I

    const/16 v5, 0xd7

    new-array v3, v3, [I

    aput v4, v3, v0

    .line 8
    invoke-virtual {p0, v5, v3}, Li1/s;->r(I[I)V

    :cond_1
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_8

    .line 9
    aget v3, p1, v3

    invoke-virtual {p0, v0, v3}, Li1/t;->z(II)V

    .line 10
    aget v3, p1, v4

    invoke-virtual {p0, v0, v3}, Li1/t;->A(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_2
    array-length v1, p1

    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    iput-object v1, p0, Li1/t;->z:[I

    .line 12
    aget v1, p1, v3

    .line 13
    iget v4, p0, Li1/t;->u:I

    if-eq v1, v4, :cond_3

    .line 14
    iput v1, p0, Li1/t;->u:I

    const/16 v4, 0xd2

    new-array v5, v3, [I

    aput v1, v5, v0

    .line 15
    invoke-virtual {p0, v4, v5}, Li1/s;->r(I[I)V

    .line 16
    :cond_3
    aget v1, p1, v2

    .line 17
    iget v4, p0, Li1/t;->s:I

    if-eq v1, v4, :cond_4

    .line 18
    iput v1, p0, Li1/t;->s:I

    const/16 v4, 0xd3

    new-array v5, v3, [I

    aput v1, v5, v0

    .line 19
    invoke-virtual {p0, v4, v5}, Li1/s;->r(I[I)V

    :cond_4
    const/4 v1, 0x3

    .line 20
    aget v1, p1, v1

    .line 21
    iget v4, p0, Li1/t;->t:I

    if-eq v1, v4, :cond_5

    .line 22
    iput v1, p0, Li1/t;->t:I

    const/16 v4, 0xd4

    new-array v5, v3, [I

    aput v1, v5, v0

    .line 23
    invoke-virtual {p0, v4, v5}, Li1/s;->r(I[I)V

    :cond_5
    const/4 v1, 0x4

    .line 24
    aget v1, p1, v1

    .line 25
    iget v4, p0, Li1/t;->v:I

    if-eq v1, v4, :cond_6

    .line 26
    iput v1, p0, Li1/t;->v:I

    const/16 v4, 0xd5

    new-array v5, v3, [I

    aput v1, v5, v0

    .line 27
    invoke-virtual {p0, v4, v5}, Li1/s;->r(I[I)V

    .line 28
    :cond_6
    array-length v1, p1

    sub-int/2addr v1, v2

    aget v1, p1, v1

    .line 29
    array-length v4, p1

    sub-int/2addr v4, v3

    aget p1, p1, v4

    .line 30
    iget v4, p0, Li1/t;->w:I

    if-ne v1, v4, :cond_7

    iget v4, p0, Li1/t;->x:I

    if-eq p1, v4, :cond_8

    .line 31
    :cond_7
    iput v1, p0, Li1/t;->w:I

    .line 32
    iput p1, p0, Li1/t;->x:I

    const/16 v4, 0xd6

    new-array v2, v2, [I

    aput v1, v2, v0

    aput p1, v2, v3

    .line 33
    invoke-virtual {p0, v4, v2}, Li1/s;->r(I[I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    iget-object v2, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    .line 2
    :goto_0
    iget-object v3, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-array v3, p3, [I

    .line 3
    iget-object v4, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v0

    iget-object v4, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v3, v1

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object v2, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    .line 5
    :goto_1
    iget-object v3, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-array v3, p3, [I

    .line 6
    iget-object v4, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v0

    iget-object v4, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v3, v1

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    new-array p3, v1, [I

    .line 7
    iget v2, p0, Li1/t;->y:I

    aput v2, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :pswitch_3
    new-array p3, p3, [I

    .line 8
    iget v2, p0, Li1/t;->w:I

    aput v2, p3, v0

    iget v0, p0, Li1/t;->x:I

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :pswitch_4
    new-array p3, v1, [I

    .line 9
    iget v2, p0, Li1/t;->v:I

    aput v2, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :pswitch_5
    new-array p3, v1, [I

    .line 10
    iget v2, p0, Li1/t;->t:I

    aput v2, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :pswitch_6
    new-array p3, v1, [I

    .line 11
    iget v2, p0, Li1/t;->s:I

    aput v2, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :pswitch_7
    new-array p3, v1, [I

    .line 12
    iget v2, p0, Li1/t;->u:I

    aput v2, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_1
    :goto_2
    move v0, v1

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0xd2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/t;->p:Li1/b0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xff

    aput v3, v1, v2

    .line 2
    invoke-virtual {v0, v1}, Lb/c$b;->f([I)V

    :cond_0
    return-void
.end method

.method public w(IIII)[I
    .locals 6

    .line 1
    iget-object v0, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Li1/t;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne p4, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Li1/t;->A:[I

    array-length v0, v0

    add-int/lit8 v1, v0, 0x2

    .line 3
    invoke-static {v1}, Lo1/s0;->a(I)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4
    aput v3, v1, v2

    const/4 v4, 0x1

    .line 5
    aput v0, v1, v4

    .line 6
    iget-object v5, p0, Li1/t;->A:[I

    invoke-static {v5, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aput p1, v1, v3

    mul-int/2addr p2, v3

    add-int/lit8 p2, p2, 0x3

    .line 8
    aput p3, v1, p2

    add-int/2addr p2, v4

    .line 9
    aput p4, v1, p2

    return-object v1
.end method

.method public x(IIIIII)[I
    .locals 7

    .line 1
    iget-object v0, p0, Li1/t;->z:[I

    array-length v0, v0

    add-int/lit8 v1, v0, 0x2

    .line 2
    invoke-static {v1}, Lo1/s0;->a(I)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    aput v4, v2, v3

    .line 4
    aput v0, v2, v4

    .line 5
    iget-object v5, p0, Li1/t;->z:[I

    const/4 v6, 0x2

    invoke-static {v5, v3, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput p1, v2, v6

    const/4 p1, 0x3

    .line 7
    aput p2, v2, p1

    const/4 p1, 0x4

    .line 8
    aput p3, v2, p1

    const/4 p1, 0x5

    .line 9
    aput p4, v2, p1

    add-int/lit8 p1, v1, -0x2

    .line 10
    aput p5, v2, p1

    sub-int/2addr v1, v4

    .line 11
    aput p6, v2, v1

    return-object v2
.end method

.method public varargs y([I)V
    .locals 6

    .line 1
    array-length v0, p1

    add-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [I

    const/16 v2, 0x2e

    const/4 v3, 0x0

    .line 3
    aput v2, v1, v3

    move v2, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v5, p1, v3

    aput v5, v1, v4

    .line 5
    aget v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    xor-int/lit16 p1, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 6
    aput p1, v1, v0

    .line 7
    iget-object p1, p0, Li1/t;->p:Li1/b0;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Lb/c$b;->f([I)V

    :cond_1
    return-void
.end method

.method public z(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Li1/t;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xd8

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 3
    invoke-virtual {p0, v0, v1}, Li1/s;->r(I[I)V

    :cond_0
    return-void
.end method
