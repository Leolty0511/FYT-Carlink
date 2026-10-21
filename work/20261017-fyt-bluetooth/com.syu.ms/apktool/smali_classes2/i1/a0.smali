.class public Li1/a0;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/a0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/a0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Z

.field public l:I

.field public m:[I

.field public n:[I

.field public o:[I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:[I

.field public v:[I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/Runnable;

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li1/a0;->k:Z

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Li1/a0;->l:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Li1/a0;->m:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Li1/a0;->n:[I

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Li1/a0;->o:[I

    .line 7
    iput p2, p0, Li1/a0;->s:I

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Li1/a0;->t:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 9
    iput-object v1, p0, Li1/a0;->u:[I

    new-array v0, v0, [I

    .line 10
    iput-object v0, p0, Li1/a0;->v:[I

    .line 11
    iput p2, p0, Li1/a0;->w:I

    const-string p2, ""

    .line 12
    iput-object p2, p0, Li1/a0;->x:Ljava/lang/String;

    .line 13
    new-instance p2, Li1/a0$a;

    invoke-direct {p2, p0}, Li1/a0$a;-><init>(Li1/a0;)V

    iput-object p2, p0, Li1/a0;->y:Ljava/lang/Runnable;

    .line 14
    new-instance p2, Li1/a0$b;

    invoke-direct {p2, p0}, Li1/a0$b;-><init>(Li1/a0;)V

    iput-object p2, p0, Li1/a0;->z:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {p0}, Li1/a;->v()V

    .line 16
    new-instance v0, Li1/a0$c;

    invoke-direct {v0, p0}, Li1/a0$c;-><init>(Li1/a0;)V

    iput-object v0, p0, Li1/s;->a:Li1/e;

    .line 17
    invoke-virtual {v0}, Li1/e;->h()V

    .line 18
    sget-object v0, Lu0/c;->m:Lo1/y;

    invoke-virtual {v0, p2, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public A(IIII)V
    .locals 6

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0x7

    .line 1
    iget v1, p0, Li1/a0;->p:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iput v0, p0, Li1/a0;->p:I

    new-array v1, v2, [I

    const/4 v5, 0x4

    aput v5, v1, v4

    aput v0, v1, v3

    .line 3
    invoke-virtual {p0, v4, v1}, Li1/s;->r(I[I)V

    :cond_0
    and-int/lit8 p1, p1, 0x7

    and-int/lit16 p2, p2, 0xff

    .line 4
    iget-object v0, p0, Li1/a0;->o:[I

    aget v1, v0, v4

    if-ne p1, v1, :cond_1

    aget v1, v0, v3

    if-eq p2, v1, :cond_2

    .line 5
    :cond_1
    aput p1, v0, v4

    .line 6
    aput p2, v0, v3

    const/4 p1, 0x3

    new-array p2, p1, [I

    aput p1, p2, v4

    .line 7
    aget p1, v0, v4

    aput p1, p2, v3

    aget p1, v0, v3

    aput p1, p2, v2

    invoke-virtual {p0, v4, p2}, Li1/s;->r(I[I)V

    :cond_2
    and-int/lit16 p1, p3, 0xff

    .line 8
    iget p2, p0, Li1/a0;->q:I

    if-eq p1, p2, :cond_3

    .line 9
    iput p1, p0, Li1/a0;->q:I

    new-array p2, v2, [I

    const/4 p3, 0x5

    aput p3, p2, v4

    aput p1, p2, v3

    .line 10
    invoke-virtual {p0, v4, p2}, Li1/s;->r(I[I)V

    :cond_3
    and-int/lit16 p1, p4, 0xff

    .line 11
    iget p2, p0, Li1/a0;->r:I

    if-eq p1, p2, :cond_4

    .line 12
    iput p1, p0, Li1/a0;->r:I

    new-array p2, v2, [I

    const/4 p3, 0x6

    aput p3, p2, v4

    aput p1, p2, v3

    .line 13
    invoke-virtual {p0, v4, p2}, Li1/s;->r(I[I)V

    :cond_4
    return-void
.end method

.method public B(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1
    invoke-virtual {p0, v2, v0}, Li1/s;->r(I[I)V

    return-void
.end method

.method public C(I)V
    .locals 3

    .line 1
    iget v0, p0, Li1/a0;->w:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Li1/a0;->w:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 3
    invoke-virtual {p0, v2, v0}, Li1/s;->r(I[I)V

    :cond_0
    return-void
.end method

.method public D(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/a0;->v:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    aget v2, v0, v3

    if-eq p2, v2, :cond_1

    .line 2
    :cond_0
    aput p1, v0, v1

    .line 3
    aput p2, v0, v3

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/16 p2, 0x9

    aput p2, p1, v1

    .line 4
    aget p2, v0, v1

    aput p2, p1, v3

    const/4 p2, 0x2

    aget v0, v0, v3

    aput v0, p1, p2

    invoke-virtual {p0, v1, p1}, Li1/s;->r(I[I)V

    :cond_1
    return-void
.end method

.method public E(I)V
    .locals 3

    .line 1
    iget v0, p0, Li1/a0;->s:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Li1/a0;->s:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 3
    invoke-virtual {p0, v2, v0}, Li1/s;->r(I[I)V

    :cond_0
    return-void
.end method

.method public F([B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, "ascii"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  handleVersion version:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Device"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Li1/a0;->x:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iput-object v0, p0, Li1/a0;->x:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 5
    invoke-virtual {p0, v2, v0, p1}, Li1/s;->q(ILjava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public G(I)V
    .locals 3

    .line 1
    iget v0, p0, Li1/a0;->t:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Li1/a0;->t:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 3
    invoke-virtual {p0, v2, v0}, Li1/s;->r(I[I)V

    :cond_0
    return-void
.end method

.method public varargs H([I)V
    .locals 9

    .line 1
    iget-object v0, p0, Li1/a;->h:Li1/b0;

    if-eqz v0, :cond_3

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    array-length v2, p1

    :goto_0
    if-nez v2, :cond_1

    .line 4
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v3, v2, 0x2

    .line 5
    new-array v4, v3, [I

    const/16 v5, 0x2e

    .line 6
    aput v5, v4, v1

    .line 7
    aget v5, p1, v1

    const/4 v6, 0x1

    aput v5, v4, v6

    add-int/lit8 v5, v2, -0x2

    const/4 v7, 0x2

    .line 8
    aput v5, v4, v7

    .line 9
    aget v5, v4, v6

    aget v8, v4, v7

    add-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xff

    :goto_1
    if-ge v7, v2, :cond_2

    .line 10
    aget v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    add-int/lit8 v8, v7, 0x1

    .line 11
    aget v7, p1, v7

    aput v7, v4, v8

    move v7, v8

    goto :goto_1

    :cond_2
    add-int/2addr v2, v6

    xor-int/lit16 p1, v5, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 12
    aput p1, v4, v2

    const-string p1, "Device"

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==============  PluginWLLeds write serial:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    invoke-virtual {p1, v4}, Lb/c$b;->f([I)V

    .line 15
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==============  RaiseLeds handleCmd cmdCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ints: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Device"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-nez v1, :cond_c

    .line 2
    invoke-static {v2, v5}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3
    aget v4, v2, v5

    const/16 v6, 0xff

    const/16 v7, 0x8

    const/16 v8, 0xf

    const/4 v10, 0x5

    const/16 v11, 0x8d

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 4
    :pswitch_1
    invoke-static {v2, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, -0x1

    .line 5
    aget v8, v2, v3

    if-eqz v8, :cond_1

    if-eq v8, v3, :cond_0

    if-eq v8, v14, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    aget v4, v2, v3

    shl-int/2addr v4, v13

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    goto :goto_0

    .line 7
    :cond_1
    aget v4, v2, v3

    :goto_0
    new-array v6, v15, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v14, v6, v9

    aput v4, v6, v14

    .line 8
    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-static {v2, v9}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 10
    aget v4, v2, v3

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v14, :cond_2

    goto/16 :goto_1

    :cond_2
    new-array v4, v12, [I

    aput v11, v4, v5

    aput v5, v4, v3

    aput v13, v4, v9

    .line 11
    iget-object v6, v0, Li1/a0;->u:[I

    aget v5, v6, v5

    aput v5, v4, v14

    aget v5, v6, v3

    aput v5, v4, v15

    aget v5, v6, v9

    aput v5, v4, v10

    aget v5, v2, v9

    aput v5, v4, v13

    invoke-virtual {v0, v4}, Li1/a0;->H([I)V

    goto/16 :goto_1

    :cond_3
    new-array v4, v12, [I

    aput v11, v4, v5

    aput v5, v4, v3

    aput v13, v4, v9

    .line 12
    iget-object v6, v0, Li1/a0;->u:[I

    aget v5, v6, v5

    aput v5, v4, v14

    aget v5, v6, v3

    aput v5, v4, v15

    aget v5, v2, v9

    aput v5, v4, v10

    aget v5, v6, v14

    aput v5, v4, v13

    invoke-virtual {v0, v4}, Li1/a0;->H([I)V

    goto/16 :goto_1

    :cond_4
    new-array v4, v12, [I

    aput v11, v4, v5

    aput v5, v4, v3

    aput v13, v4, v9

    .line 13
    iget-object v6, v0, Li1/a0;->u:[I

    aget v5, v6, v5

    aput v5, v4, v14

    aget v5, v2, v9

    aput v5, v4, v15

    aget v5, v6, v9

    aput v5, v4, v10

    aget v5, v6, v14

    aput v5, v4, v13

    invoke-virtual {v0, v4}, Li1/a0;->H([I)V

    goto/16 :goto_1

    :cond_5
    new-array v4, v12, [I

    aput v11, v4, v5

    aput v5, v4, v3

    aput v13, v4, v9

    .line 14
    aget v5, v2, v9

    aput v5, v4, v14

    iget-object v5, v0, Li1/a0;->u:[I

    aget v6, v5, v3

    aput v6, v4, v15

    aget v6, v5, v9

    aput v6, v4, v10

    aget v5, v5, v14

    aput v5, v4, v13

    invoke-virtual {v0, v4}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 15
    :pswitch_3
    invoke-static {v2, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    new-array v4, v15, [I

    aput v11, v4, v5

    aput v5, v4, v3

    aput v10, v4, v9

    .line 16
    aget v5, v2, v3

    aput v5, v4, v14

    invoke-virtual {v0, v4}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 17
    :pswitch_4
    invoke-static {v2, v9}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 18
    aget v4, v2, v5

    and-int/2addr v4, v8

    shl-int/2addr v4, v15

    aget v6, v2, v3

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    new-array v6, v15, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v15, v6, v9

    aput v4, v6, v14

    .line 19
    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 20
    :pswitch_5
    invoke-static {v2, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 21
    aget v4, v2, v3

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v6, v12, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v9, v6, v9

    .line 22
    iget v7, v0, Li1/a0;->p:I

    shl-int/2addr v7, v15

    iget-object v8, v0, Li1/a0;->o:[I

    aget v5, v8, v5

    or-int/2addr v5, v7

    aput v5, v6, v14

    aget v5, v8, v3

    aput v5, v6, v15

    iget v5, v0, Li1/a0;->q:I

    aput v5, v6, v10

    aput v4, v6, v13

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 23
    :pswitch_6
    invoke-static {v2, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 24
    aget v4, v2, v3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v6, v12, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v9, v6, v9

    .line 25
    iget v7, v0, Li1/a0;->p:I

    shl-int/2addr v7, v15

    iget-object v8, v0, Li1/a0;->o:[I

    aget v5, v8, v5

    or-int/2addr v5, v7

    aput v5, v6, v14

    aget v5, v8, v3

    aput v5, v6, v15

    aput v4, v6, v10

    iget v4, v0, Li1/a0;->r:I

    aput v4, v6, v13

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 26
    :pswitch_7
    invoke-static {v2, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 27
    aget v4, v2, v3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v6, v12, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v9, v6, v9

    shl-int/2addr v4, v15

    .line 28
    iget-object v7, v0, Li1/a0;->o:[I

    aget v5, v7, v5

    or-int/2addr v4, v5

    aput v4, v6, v14

    aget v4, v7, v3

    aput v4, v6, v15

    iget v4, v0, Li1/a0;->q:I

    aput v4, v6, v10

    iget v4, v0, Li1/a0;->r:I

    aput v4, v6, v13

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 29
    :pswitch_8
    invoke-static {v2, v9}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 30
    aget v4, v2, v3

    if-ne v4, v3, :cond_6

    .line 31
    iget v4, v0, Li1/a0;->p:I

    shl-int/2addr v4, v15

    .line 32
    aget v6, v2, v9

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    or-int/2addr v4, v6

    new-array v6, v12, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v9, v6, v9

    aput v4, v6, v14

    .line 33
    iget-object v4, v0, Li1/a0;->o:[I

    aget v4, v4, v3

    aput v4, v6, v15

    iget v4, v0, Li1/a0;->q:I

    aput v4, v6, v10

    iget v4, v0, Li1/a0;->r:I

    aput v4, v6, v13

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 34
    :cond_6
    aget v4, v2, v3

    if-ne v4, v9, :cond_b

    .line 35
    aget v4, v2, v9

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v6, v12, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v9, v6, v9

    .line 36
    iget v7, v0, Li1/a0;->p:I

    shl-int/2addr v7, v15

    iget-object v8, v0, Li1/a0;->o:[I

    aget v5, v8, v5

    or-int/2addr v5, v7

    aput v5, v6, v14

    aput v4, v6, v15

    iget v4, v0, Li1/a0;->q:I

    aput v4, v6, v10

    iget v4, v0, Li1/a0;->r:I

    aput v4, v6, v13

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 37
    :pswitch_9
    invoke-static {v2, v9}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 38
    aget v4, v2, v3

    if-nez v4, :cond_7

    .line 39
    aget v4, v2, v9

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 40
    aget v16, v2, v9

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v16

    .line 41
    aget v17, v2, v9

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    const/16 v6, 0xa

    new-array v6, v6, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v3, v6, v9

    aput v8, v6, v14

    aput v4, v6, v15

    aput v16, v6, v10

    aput v17, v6, v13

    aput v4, v6, v12

    aput v16, v6, v7

    const/16 v4, 0x9

    aput v17, v6, v4

    .line 42
    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 43
    :cond_7
    aget v4, v2, v3

    if-ne v4, v3, :cond_8

    .line 44
    aget v4, v2, v9

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 45
    aget v6, v2, v9

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 46
    aget v8, v2, v9

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const/16 v7, 0xa

    new-array v7, v7, [I

    aput v11, v7, v5

    aput v5, v7, v3

    aput v3, v7, v9

    aput v12, v7, v14

    aput v4, v7, v15

    aput v6, v7, v10

    aput v8, v7, v13

    .line 47
    iget-object v4, v0, Li1/a0;->n:[I

    aget v4, v4, v3

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v7, v12

    iget-object v4, v0, Li1/a0;->n:[I

    aget v4, v4, v3

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/16 v5, 0x8

    aput v4, v7, v5

    iget-object v4, v0, Li1/a0;->n:[I

    aget v4, v4, v3

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x9

    aput v4, v7, v5

    invoke-virtual {v0, v7}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 48
    :cond_8
    aget v4, v2, v3

    if-ne v4, v9, :cond_b

    .line 49
    aget v4, v2, v9

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 50
    aget v6, v2, v9

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 51
    aget v7, v2, v9

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const/16 v8, 0xa

    new-array v8, v8, [I

    aput v11, v8, v5

    aput v5, v8, v3

    aput v3, v8, v9

    aput v12, v8, v14

    .line 52
    iget-object v9, v0, Li1/a0;->n:[I

    aget v9, v9, v5

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    aput v9, v8, v15

    iget-object v9, v0, Li1/a0;->n:[I

    aget v9, v9, v5

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    aput v9, v8, v10

    iget-object v9, v0, Li1/a0;->n:[I

    aget v5, v9, v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    aput v5, v8, v13

    aput v4, v8, v12

    const/16 v4, 0x8

    aput v6, v8, v4

    const/16 v4, 0x9

    aput v7, v8, v4

    invoke-virtual {v0, v8}, Li1/a0;->H([I)V

    goto/16 :goto_1

    .line 53
    :pswitch_a
    invoke-static {v2, v9}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 54
    iget v4, v0, Li1/a0;->l:I

    shl-int/2addr v4, v13

    .line 55
    aget v6, v2, v3

    if-nez v6, :cond_9

    or-int/2addr v4, v8

    new-array v6, v13, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v5, v6, v9

    aput v4, v6, v14

    .line 56
    aget v4, v2, v9

    aput v4, v6, v15

    aget v4, v2, v9

    aput v4, v6, v10

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto :goto_1

    .line 57
    :cond_9
    aget v6, v2, v3

    if-ne v6, v3, :cond_a

    or-int/2addr v4, v12

    new-array v6, v13, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v5, v6, v9

    aput v4, v6, v14

    .line 58
    aget v4, v2, v9

    aput v4, v6, v15

    iget-object v4, v0, Li1/a0;->m:[I

    aget v4, v4, v3

    aput v4, v6, v10

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto :goto_1

    .line 59
    :cond_a
    aget v6, v2, v3

    if-ne v6, v9, :cond_b

    or-int/2addr v4, v12

    new-array v6, v13, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v5, v6, v9

    aput v4, v6, v14

    .line 60
    iget-object v4, v0, Li1/a0;->m:[I

    aget v4, v4, v5

    aput v4, v6, v15

    aget v4, v2, v9

    aput v4, v6, v10

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    goto :goto_1

    .line 61
    :pswitch_b
    invoke-static {v2, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 62
    iget v4, v0, Li1/a0;->l:I

    aget v6, v2, v3

    if-eq v4, v6, :cond_b

    .line 63
    aget v4, v2, v3

    and-int/2addr v4, v3

    shl-int/2addr v4, v13

    new-array v6, v13, [I

    aput v11, v6, v5

    aput v5, v6, v3

    aput v5, v6, v9

    aput v4, v6, v14

    .line 64
    iget-object v4, v0, Li1/a0;->m:[I

    aget v5, v4, v5

    aput v5, v6, v15

    aget v4, v4, v3

    aput v4, v6, v10

    invoke-virtual {v0, v6}, Li1/a0;->H([I)V

    :cond_b
    :goto_1
    :pswitch_c
    move v5, v3

    :cond_c
    :goto_2
    if-eqz v5, :cond_d

    goto :goto_3

    .line 65
    :cond_d
    invoke-super/range {p0 .. p4}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result v5

    :goto_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public l([I)V
    .locals 4

    const-string v0, "Device"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============  RaiseLeds onHandle data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget v0, p1, v3

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Li1/a0;->y([I)V

    .line 4
    :goto_0
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Li1/a;->h:Li1/b0;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Lb/c$b;->f([I)V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p(Ly/b;II)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v1, v3, v1

    .line 1
    iget v4, p0, Li1/a0;->l:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    const/4 v3, 0x3

    new-array v4, v3, [I

    aput v0, v4, v1

    .line 2
    iget-object v5, p0, Li1/a0;->m:[I

    aget v6, v5, v1

    aput v6, v4, v0

    aget v5, v5, v0

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v4, v3, [I

    aput v2, v4, v1

    .line 3
    iget-object v5, p0, Li1/a0;->n:[I

    aget v6, v5, v1

    aput v6, v4, v0

    aget v5, v5, v0

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v4, v3, [I

    aput v3, v4, v1

    .line 4
    iget-object v5, p0, Li1/a0;->o:[I

    aget v6, v5, v1

    aput v6, v4, v0

    aget v5, v5, v0

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v4, v2, [I

    const/4 v5, 0x5

    aput v5, v4, v1

    .line 5
    iget v6, p0, Li1/a0;->q:I

    aput v6, v4, v0

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v4, v2, [I

    const/4 v6, 0x4

    aput v6, v4, v1

    .line 6
    iget v7, p0, Li1/a0;->p:I

    aput v7, v4, v0

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v4, v5, [I

    const/16 v5, 0xc

    aput v5, v4, v1

    .line 7
    iget-object v5, p0, Li1/a0;->u:[I

    aget v7, v5, v1

    aput v7, v4, v0

    aget v7, v5, v0

    aput v7, v4, v2

    aget v7, v5, v2

    aput v7, v4, v3

    aget v5, v5, v3

    aput v5, v4, v6

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v4, v2, [I

    const/16 v5, 0xa

    aput v5, v4, v1

    .line 8
    iget v5, p0, Li1/a0;->w:I

    aput v5, v4, v0

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v3, [I

    const/16 v4, 0x9

    aput v4, v3, v1

    .line 9
    iget-object v4, p0, Li1/a0;->v:[I

    aget v5, v4, v1

    aput v5, v3, v0

    aget v4, v4, v0

    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v2, [I

    const/4 v4, 0x7

    aput v4, v3, v1

    .line 10
    iget v4, p0, Li1/a0;->s:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v2, v2, [I

    const/16 v3, 0x8

    aput v3, v2, v1

    .line 11
    iget v1, p0, Li1/a0;->t:I

    aput v1, v2, v0

    invoke-static {p1, p2, v2}, Lo1/x;->v(Ly/b;I[I)V

    const/16 v1, 0xb

    .line 12
    iget-object v2, p0, Li1/a0;->x:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lo1/x;->t(Ly/b;IILjava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-super {p0, p1, p2, p3}, Li1/s;->p(Ly/b;II)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public w(III)V
    .locals 4

    shr-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0xff

    .line 1
    iget v0, p0, Li1/a0;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Li1/a0;->l:I

    new-array v0, v1, [I

    aput v3, v0, v3

    aput p1, v0, v2

    .line 3
    invoke-virtual {p0, v3, v0}, Li1/s;->r(I[I)V

    :cond_0
    and-int/lit16 p1, p2, 0xff

    and-int/lit16 p2, p3, 0xff

    .line 4
    iget-object p3, p0, Li1/a0;->m:[I

    aget v0, p3, v3

    if-ne p1, v0, :cond_1

    aget v0, p3, v2

    if-eq p2, v0, :cond_2

    .line 5
    :cond_1
    aput p1, p3, v3

    .line 6
    aput p2, p3, v2

    const/4 p1, 0x3

    new-array p1, p1, [I

    aput v2, p1, v3

    .line 7
    aget p2, p3, v3

    aput p2, p1, v2

    aget p2, p3, v2

    aput p2, p1, v1

    invoke-virtual {p0, v3, p1}, Li1/s;->r(I[I)V

    :cond_2
    return-void
.end method

.method public x(IIIIIII)V
    .locals 0

    .line 1
    invoke-static {p2, p3, p4}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 2
    invoke-static {p5, p6, p7}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    .line 3
    iget-object p3, p0, Li1/a0;->n:[I

    const/4 p4, 0x0

    aget p5, p3, p4

    const/4 p6, 0x1

    if-ne p1, p5, :cond_0

    aget p5, p3, p6

    if-eq p2, p5, :cond_1

    .line 4
    :cond_0
    aput p1, p3, p4

    .line 5
    aput p2, p3, p6

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/4 p2, 0x2

    aput p2, p1, p4

    .line 6
    aget p5, p3, p4

    aput p5, p1, p6

    aget p3, p3, p6

    aput p3, p1, p2

    invoke-virtual {p0, p4, p1}, Li1/s;->r(I[I)V

    :cond_1
    return-void
.end method

.method public y([I)V
    .locals 14

    const/4 v0, 0x1

    .line 1
    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-static {p1, v4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li1/s;->a:Li1/e;

    check-cast v0, Li1/a0$c;

    iget-object v0, v0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    invoke-static {p1}, Lo1/s0;->r([I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/a0;->F([B)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-static {p1, v4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Li1/a0;->C(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-static {p1, v3}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    aget v0, p1, v4

    aget p1, p1, v3

    invoke-virtual {p0, v0, p1}, Li1/a0;->D(II)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-static {p1, v1}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    aget v0, p1, v4

    aget v3, p1, v3

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, v0, v3, v2, p1}, Li1/a0;->z(IIII)V

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-static {p1, v4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Li1/a0;->G(I)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-static {p1, v4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Li1/a0;->E(I)V

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-static {p1, v4}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    aget p1, p1, v4

    invoke-virtual {p0, p1}, Li1/a0;->B(I)V

    goto :goto_0

    .line 16
    :pswitch_7
    invoke-static {p1, v1}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    aget v0, p1, v4

    aget v3, p1, v3

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, v0, v3, v2, p1}, Li1/a0;->A(IIII)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    .line 18
    invoke-static {p1, v0}, Lo1/s0;->h([II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    aget v7, p1, v4

    aget v8, p1, v3

    aget v9, p1, v2

    aget v10, p1, v1

    const/4 v1, 0x6

    aget v11, p1, v1

    const/4 v1, 0x7

    aget v12, p1, v1

    aget v13, p1, v0

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Li1/a0;->x(IIIIIII)V

    goto :goto_0

    .line 20
    :pswitch_9
    invoke-static {p1, v2}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    aget v0, p1, v4

    aget v1, p1, v3

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Li1/a0;->w(III)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z(IIII)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p2, 0x2

    aput p3, v1, p2

    const/4 p3, 0x3

    aput p4, v1, p3

    .line 1
    iget-object p4, p0, Li1/a0;->u:[I

    invoke-static {v1, p4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p4

    if-nez p4, :cond_0

    .line 2
    iput-object v1, p0, Li1/a0;->u:[I

    const/4 p4, 0x5

    new-array p4, p4, [I

    const/16 v3, 0xc

    aput v3, p4, v2

    .line 3
    aget v3, v1, v2

    aput v3, p4, p1

    aget p1, v1, p1

    aput p1, p4, p2

    aget p1, v1, p2

    aput p1, p4, p3

    aget p1, v1, p3

    aput p1, p4, v0

    invoke-virtual {p0, v2, p4}, Li1/s;->r(I[I)V

    :cond_0
    return-void
.end method
