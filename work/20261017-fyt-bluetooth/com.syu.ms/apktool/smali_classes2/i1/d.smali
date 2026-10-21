.class public Li1/d;
.super Li1/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/s<",
        "Li1/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public h:I

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lo1/h0;

.field public p:Landroid/util/SparseIntArray;

.field public q:Ljava/lang/Runnable;

.field public r:[Ljava/lang/Integer;

.field public s:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Li1/s;-><init>(II)V

    const/16 p1, 0xff

    .line 2
    iput p1, p0, Li1/d;->h:I

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Li1/d;->i:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Li1/d;->j:I

    .line 5
    iput v0, p0, Li1/d;->k:I

    .line 6
    iput v0, p0, Li1/d;->l:I

    .line 7
    iput v0, p0, Li1/d;->m:I

    .line 8
    iput-boolean v0, p0, Li1/d;->n:Z

    .line 9
    new-instance v0, Lo1/h0;

    const-string v1, "wireless_steer"

    invoke-direct {v0, v1}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li1/d;->o:Lo1/h0;

    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Li1/d$a;

    invoke-direct {v0, p0}, Li1/d$a;-><init>(Li1/d;)V

    iput-object v0, p0, Li1/d;->q:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Li1/d;->r:[Ljava/lang/Integer;

    .line 13
    iput-wide p1, p0, Li1/d;->s:J

    .line 14
    new-instance p1, Li1/d$b;

    invoke-direct {p1}, Li1/d$b;-><init>()V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 15
    invoke-virtual {p1}, Li1/e;->h()V

    .line 16
    invoke-virtual {p0}, Li1/d;->y()V

    return-void
.end method

.method public static synthetic v(Li1/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Li1/d;->l:I

    return p1
.end method

.method public static synthetic w(Li1/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Li1/d;->m:I

    return p1
.end method


# virtual methods
.method public i(I)Li1/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li1/s<",
            "Li1/d$b;",
            ">.a;"
        }
    .end annotation

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Li1/s;->i(I)Li1/s$a;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 7

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/16 v0, 0xff

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iput v0, p0, Li1/d;->h:I

    .line 2
    iget-object p1, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    :goto_0
    move p3, p4

    goto/16 :goto_2

    :pswitch_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    .line 4
    aget p1, p2, p3

    iput p1, p0, Li1/d;->h:I

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    .line 5
    array-length p1, p2

    if-lez p1, :cond_2

    .line 6
    aget p1, p2, p3

    if-ne p1, p4, :cond_0

    .line 7
    iput-boolean p4, p0, Li1/d;->n:Z

    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, Li1/d;->h:I

    .line 9
    iput-boolean p3, p0, Li1/d;->n:Z

    .line 10
    iget-object p1, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    const/4 p2, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-lez p1, :cond_1

    .line 11
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object v0, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lo1/h0;->q(II)V

    .line 12
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object p3, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    const/16 v0, 0x8

    invoke-virtual {p3, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    invoke-virtual {p1, p4, p3}, Lo1/h0;->q(II)V

    .line 13
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object p3, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    invoke-virtual {p1, v2, p3}, Lo1/h0;->q(II)V

    .line 14
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object p3, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lo1/h0;->q(II)V

    .line 15
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object p3, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lo1/h0;->q(II)V

    .line 16
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object p2, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    const/16 p3, 0x80

    invoke-virtual {p2, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-virtual {p1, v4, p2}, Lo1/h0;->q(II)V

    .line 17
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    iget-object p2, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    const/16 p3, 0x90

    invoke-virtual {p2, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Lo1/h0;->q(II)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, p3, v0}, Lo1/h0;->q(II)V

    .line 19
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, p4, v0}, Lo1/h0;->q(II)V

    .line 20
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, v2, v0}, Lo1/h0;->q(II)V

    .line 21
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, v1, v0}, Lo1/h0;->q(II)V

    .line 22
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, p2, v0}, Lo1/h0;->q(II)V

    .line 23
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, v4, v0}, Lo1/h0;->q(II)V

    .line 24
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1, v3, v0}, Lo1/h0;->q(II)V

    .line 25
    :goto_1
    iget-object p1, p0, Li1/d;->o:Lo1/h0;

    invoke-virtual {p1}, Lo1/h0;->d()V

    goto/16 :goto_0

    :cond_2
    :goto_2
    return p3

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l([I)V
    .locals 11

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-lez v0, :cond_3

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    .line 3
    iget-object v4, p0, Li1/d;->r:[Ljava/lang/Integer;

    aget-object v5, v4, v1

    if-nez v5, :cond_0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    goto :goto_1

    .line 5
    :cond_0
    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    xor-int/lit16 v4, v4, 0xa5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v3, :cond_2

    .line 6
    iget-object v4, p0, Li1/d;->r:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    .line 7
    iget-object v3, p0, Li1/d;->r:[Ljava/lang/Integer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Li1/d;->j:I

    .line 8
    iget-object v3, p0, Li1/d;->r:[Ljava/lang/Integer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    iput v3, p0, Li1/d;->k:I

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 10
    iget-wide v7, p0, Li1/d;->i:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0xc8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 11
    iput-wide v3, p0, Li1/d;->i:J

    .line 12
    iget v3, p0, Li1/d;->j:I

    if-eqz v3, :cond_1

    iget v3, p0, Li1/d;->k:I

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Li1/d;->x()V

    .line 13
    :cond_1
    iget-object v3, p0, Li1/d;->r:[Ljava/lang/Integer;

    aput-object v5, v3, v1

    .line 14
    aput-object v5, v3, v6

    goto :goto_1

    .line 15
    :cond_2
    iget-object v4, p0, Li1/d;->r:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 16
    iget-object v3, p0, Li1/d;->r:[Ljava/lang/Integer;

    aput-object v5, v3, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 6

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    move p3, v0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v1, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    iget-object v3, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v0

    aput v4, v5, p3

    .line 4
    invoke-static {p1, p2, v5}, Lo1/x;->v(Ly/b;I[I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p3
.end method

.method public final x()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Li1/d;->n:Z

    const/16 v1, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 2
    iget v0, p0, Li1/d;->h:I

    const/16 v5, 0x65

    if-ne v0, v1, :cond_0

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-virtual {p0, v5, v0}, Li1/s;->r(I[I)V

    goto/16 :goto_1

    .line 4
    :cond_0
    iget v1, p0, Li1/d;->k:I

    const/16 v6, 0x10

    if-eq v1, v6, :cond_1

    .line 5
    iget-object v6, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    new-array v0, v2, [I

    .line 6
    iget v1, p0, Li1/d;->k:I

    aput v1, v0, v3

    iget v1, p0, Li1/d;->h:I

    aput v1, v0, v4

    invoke-virtual {p0, v5, v0}, Li1/s;->r(I[I)V

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    iget v6, p0, Li1/d;->j:I

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    new-array v0, v2, [I

    .line 8
    iget v1, p0, Li1/d;->j:I

    aput v1, v0, v3

    iget v1, p0, Li1/d;->h:I

    aput v1, v0, v4

    invoke-virtual {p0, v5, v0}, Li1/s;->r(I[I)V

    goto/16 :goto_1

    .line 9
    :cond_2
    iget v0, p0, Li1/d;->m:I

    iget v5, p0, Li1/d;->k:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Li1/d;->l:I

    iget v6, p0, Li1/d;->j:I

    if-eq v0, v6, :cond_6

    .line 10
    :cond_3
    iput v5, p0, Li1/d;->m:I

    .line 11
    iget v0, p0, Li1/d;->j:I

    iput v0, p0, Li1/d;->l:I

    .line 12
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v5, p0, Li1/d;->q:Ljava/lang/Runnable;

    invoke-static {v0, v5}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v5, p0, Li1/d;->q:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v0, v5, v6, v7}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 14
    iget-object v0, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    iget v5, p0, Li1/d;->k:I

    and-int/2addr v1, v5

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 15
    iget-object v0, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    iget v1, p0, Li1/d;->j:I

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :cond_4
    const/16 v1, 0x3c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 16
    :pswitch_0
    invoke-static {}, Lo1/u;->b0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-static {}, Lo1/u;->k()V

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {}, Lo1/u;->E()I

    :goto_0
    return-void

    :pswitch_1
    new-array v0, v4, [I

    aput v3, v0, v3

    .line 19
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    return-void

    :pswitch_2
    new-array v0, v4, [I

    const/4 v2, 0x6

    aput v2, v0, v3

    .line 20
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    return-void

    :pswitch_3
    new-array v0, v4, [I

    const/4 v2, 0x5

    aput v2, v0, v3

    .line 21
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    return-void

    .line 22
    :pswitch_4
    invoke-static {}, Lu0/d;->E1()V

    return-void

    .line 23
    :pswitch_5
    invoke-static {}, Lu0/d;->v1()V

    return-void

    .line 24
    :pswitch_6
    invoke-static {}, Lo1/u;->a1()V

    return-void

    .line 25
    :pswitch_7
    invoke-static {}, Lu0/d;->D1()V

    return-void

    .line 26
    :pswitch_8
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v4}, Lh0/f;->h(I)V

    return-void

    .line 27
    :pswitch_9
    invoke-static {}, Lu0/d;->w1()V

    return-void

    .line 28
    :pswitch_a
    invoke-static {}, Lu0/d;->I1()V

    return-void

    .line 29
    :pswitch_b
    invoke-static {}, Lu0/d;->y1()V

    return-void

    .line 30
    :pswitch_c
    invoke-static {}, Lu0/d;->B1()V

    return-void

    .line 31
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "net.easyconn"

    const-string v3, "net.easyconn.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    return-void

    .line 34
    :pswitch_e
    invoke-static {}, Lu0/d;->N1()V

    return-void

    .line 35
    :pswitch_f
    invoke-static {}, Lu0/d;->M1()V

    return-void

    .line 36
    :pswitch_10
    invoke-static {}, Lu0/d;->O1()V

    return-void

    .line 37
    :pswitch_11
    invoke-static {}, Lu0/d;->u1()V

    return-void

    .line 38
    :pswitch_12
    invoke-static {}, Lu0/d;->t1()V

    return-void

    .line 39
    :pswitch_13
    invoke-static {}, Lu0/d;->C1()V

    return-void

    .line 40
    :pswitch_14
    invoke-static {}, Lu0/d;->A1()V

    return-void

    .line 41
    :pswitch_15
    invoke-static {v2}, Lu0/d;->U1(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    .line 2
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    .line 3
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    .line 4
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    .line 5
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    .line 6
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    .line 7
    iget-object v0, p0, Li1/d;->o:Lo1/h0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lo1/h0;->h(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li1/d;->z(II)V

    return-void
.end method

.method public z(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x90

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x80

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x9

    :goto_0
    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Li1/d;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
