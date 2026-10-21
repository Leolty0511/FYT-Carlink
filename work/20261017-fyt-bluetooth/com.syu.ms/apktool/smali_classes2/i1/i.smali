.class public Li1/i;
.super Li1/s;
.source "SourceFile"

# interfaces
.implements Li1/b0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/i$a;,
        Li1/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/s<",
        "Li1/i$a;",
        ">;",
        "Li1/b0$a;"
    }
.end annotation


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public o:I

.field public p:Li1/b0;

.field public q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Li1/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/s;-><init>(II)V

    const/16 p1, 0xc8

    .line 2
    iput p1, p0, Li1/i;->h:I

    const/16 p1, 0xc9

    .line 3
    iput p1, p0, Li1/i;->i:I

    const/16 p1, 0xca

    .line 4
    iput p1, p0, Li1/i;->j:I

    const/16 p1, 0xcb

    .line 5
    iput p1, p0, Li1/i;->k:I

    const/16 p1, 0xcc

    .line 6
    iput p1, p0, Li1/i;->l:I

    const/16 p1, 0xcd

    .line 7
    iput p1, p0, Li1/i;->m:I

    const/16 p1, 0xce

    .line 8
    iput p1, p0, Li1/i;->n:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Li1/i;->o:I

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Li1/i;->q:Landroid/util/SparseArray;

    .line 11
    new-instance p1, Li1/i$a;

    invoke-direct {p1}, Li1/i$a;-><init>()V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 12
    invoke-virtual {p1}, Li1/e;->h()V

    return-void
.end method


# virtual methods
.method public a(Li1/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/i;->p:Li1/b0;

    return-void
.end method

.method public c([B)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Li1/s;->b([B)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l([I)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    aget v2, p1, v1

    int-to-float v2, v2

    const v3, 0x4048f5c3    # 3.14f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    .line 2
    aget v4, p1, v3

    add-int/lit8 v4, v4, -0x32

    int-to-float v4, v4

    const/4 v5, 0x3

    .line 3
    aget v6, p1, v5

    const/4 v7, 0x4

    aget v8, p1, v7

    const/4 v9, 0x5

    aget v10, p1, v9

    invoke-static {v6, v8, v10}, Lo1/s0;->y(III)I

    move-result v6

    new-array v8, v5, [Ljava/lang/Object;

    .line 4
    aget v10, p1, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v1

    aget v10, p1, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    aget v10, p1, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v8, v11

    const-string v10, "%02X%02X%02X"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 5
    aget v10, p1, v11

    const/4 v12, 0x6

    shr-int/2addr v10, v12

    and-int/2addr v10, v5

    .line 6
    aget v13, p1, v11

    shr-int/2addr v13, v7

    and-int/2addr v13, v5

    .line 7
    aget v14, p1, v11

    shr-int/2addr v14, v11

    and-int/2addr v14, v5

    .line 8
    aget v15, p1, v11

    and-int/2addr v15, v5

    .line 9
    iget-object v12, v0, Li1/i;->q:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v12, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li1/i$b;

    if-nez v12, :cond_0

    .line 10
    new-instance v12, Li1/i$b;

    invoke-direct {v12}, Li1/i$b;-><init>()V

    .line 11
    invoke-virtual {v12, v8}, Li1/i$b;->b(Ljava/lang/String;)Z

    .line 12
    iget-object v8, v0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    :cond_0
    invoke-virtual {v12, v2}, Li1/i$b;->e(F)Z

    move-result v8

    const v16, -0xffffff

    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v0, v2}, Li1/i;->v(F)F

    move-result v2

    const/16 v8, 0xc8

    new-array v7, v3, [I

    aput v16, v7, v1

    new-array v5, v3, [F

    aput v2, v5, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 15
    iget-object v11, v12, Li1/i$b;->a:Ljava/lang/String;

    aput-object v11, v2, v1

    invoke-virtual {v0, v8, v7, v5, v2}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-virtual {v12, v4}, Li1/i$b;->g(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc9

    new-array v5, v3, [I

    aput v16, v5, v1

    new-array v7, v3, [F

    aput v4, v7, v1

    new-array v4, v3, [Ljava/lang/String;

    .line 17
    iget-object v8, v12, Li1/i$b;->a:Ljava/lang/String;

    aput-object v8, v4, v1

    invoke-virtual {v0, v2, v5, v7, v4}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-virtual {v12, v10}, Li1/i$b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xca

    new-array v4, v3, [I

    aput v10, v4, v1

    new-array v5, v3, [Ljava/lang/String;

    .line 19
    iget-object v7, v12, Li1/i$b;->a:Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-virtual {v0, v2, v4, v9, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {v12, v14}, Li1/i$b;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xcc

    new-array v4, v3, [I

    aput v14, v4, v1

    new-array v5, v3, [Ljava/lang/String;

    .line 21
    iget-object v7, v12, Li1/i$b;->a:Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-virtual {v0, v2, v4, v9, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-virtual {v12, v13}, Li1/i$b;->d(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xcb

    new-array v4, v3, [I

    aput v13, v4, v1

    new-array v5, v3, [Ljava/lang/String;

    .line 23
    iget-object v7, v12, Li1/i$b;->a:Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-virtual {v0, v2, v4, v9, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    .line 24
    :cond_5
    invoke-virtual {v12, v15}, Li1/i$b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xcd

    new-array v4, v3, [I

    aput v15, v4, v1

    new-array v5, v3, [Ljava/lang/String;

    .line 25
    iget-object v7, v12, Li1/i$b;->a:Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-virtual {v0, v2, v4, v9, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    :cond_6
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    iget v4, v12, Li1/i$b;->b:F

    .line 27
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    iget v1, v12, Li1/i$b;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iget-object v1, v12, Li1/i$b;->a:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    iget v1, v12, Li1/i$b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iget v1, v12, Li1/i$b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    iget v1, v12, Li1/i$b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v1, 0x7

    iget v3, v12, Li1/i$b;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "00 senor : [pressure: %.2f, temp: %.2f, id: %d, idName: %s, mode: %d, motion: %d, state: %d, battery: %d]"

    .line 28
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tpms"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----updateCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_7

    :cond_0
    const p1, -0xffffff

    const/4 p3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 3
    iget-object p2, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li1/i$b;

    const/16 v3, 0xcd

    new-array v4, v2, [I

    .line 4
    iget v5, p2, Li1/i$b;->g:I

    aput v5, v4, v1

    new-array v5, v2, [Ljava/lang/String;

    iget-object p2, p2, Li1/i$b;->a:Ljava/lang/String;

    aput-object p2, v5, v1

    invoke-virtual {p0, v3, v4, p3, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_1
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 5
    iget-object p2, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li1/i$b;

    const/16 v3, 0xcc

    new-array v4, v2, [I

    .line 6
    iget v5, p2, Li1/i$b;->d:I

    aput v5, v4, v1

    new-array v5, v2, [Ljava/lang/String;

    iget-object p2, p2, Li1/i$b;->a:Ljava/lang/String;

    aput-object p2, v5, v1

    invoke-virtual {p0, v3, v4, p3, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :pswitch_2
    move p1, v1

    :goto_2
    if-ge p1, v0, :cond_1

    .line 7
    iget-object p2, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li1/i$b;

    const/16 v3, 0xcb

    new-array v4, v2, [I

    .line 8
    iget v5, p2, Li1/i$b;->f:I

    aput v5, v4, v1

    new-array v5, v2, [Ljava/lang/String;

    iget-object p2, p2, Li1/i$b;->a:Ljava/lang/String;

    aput-object p2, v5, v1

    invoke-virtual {p0, v3, v4, p3, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :pswitch_3
    move p1, v1

    :goto_3
    if-ge p1, v0, :cond_1

    .line 9
    iget-object p2, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li1/i$b;

    const/16 v3, 0xca

    new-array v4, v2, [I

    .line 10
    iget v5, p2, Li1/i$b;->e:I

    aput v5, v4, v1

    new-array v5, v2, [Ljava/lang/String;

    iget-object p2, p2, Li1/i$b;->a:Ljava/lang/String;

    aput-object p2, v5, v1

    invoke-virtual {p0, v3, v4, p3, v5}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :pswitch_4
    move p2, v1

    :goto_4
    if-ge p2, v0, :cond_1

    .line 11
    iget-object p3, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li1/i$b;

    const/16 v3, 0xc9

    new-array v4, v2, [I

    aput p1, v4, v1

    new-array v5, v2, [F

    .line 12
    iget v6, p3, Li1/i$b;->c:F

    aput v6, v5, v1

    new-array v6, v2, [Ljava/lang/String;

    iget-object p3, p3, Li1/i$b;->a:Ljava/lang/String;

    aput-object p3, v6, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :pswitch_5
    move p2, v1

    :goto_5
    if-ge p2, v0, :cond_1

    .line 13
    iget-object p3, p0, Li1/i;->q:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li1/i$b;

    .line 14
    iget v3, p3, Li1/i$b;->b:F

    invoke-virtual {p0, v3}, Li1/i;->v(F)F

    move-result v3

    const/16 v4, 0xc8

    new-array v5, v2, [I

    aput p1, v5, v1

    new-array v6, v2, [F

    aput v3, v6, v1

    new-array v3, v2, [Ljava/lang/String;

    .line 15
    iget-object p3, p3, Li1/i$b;->a:Ljava/lang/String;

    aput-object p3, v3, v1

    invoke-virtual {p0, v4, v5, v6, v3}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_1
    move v1, v2

    :goto_6
    return v1

    .line 16
    :cond_2
    :goto_7
    invoke-super {p0, p1, p2, p3}, Li1/s;->p(Ly/b;II)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(F)F
    .locals 2

    .line 1
    iget v0, p0, Li1/i;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x3e1484c7

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr p1, v0

    return p1
.end method
