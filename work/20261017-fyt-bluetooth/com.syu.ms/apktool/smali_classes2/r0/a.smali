.class public Lr0/a;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static u:Lr0/a;


# instance fields
.field public final g:Z

.field public h:Z

.field public i:Lo1/z;

.field public j:Landroid/util/SparseIntArray;

.field public k:Landroid/util/SparseIntArray;

.field public l:Landroid/util/SparseIntArray;

.field public m:Landroid/util/SparseIntArray;

.field public n:Landroid/util/SparseIntArray;

.field public o:Landroid/util/SparseIntArray;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:J

.field public s:J

.field public t:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lr0/a;->g:Z

    .line 3
    iput-boolean v0, p0, Lr0/a;->h:Z

    .line 4
    new-instance v1, Lo1/z;

    invoke-direct {v1}, Lo1/z;-><init>()V

    iput-object v1, p0, Lr0/a;->i:Lo1/z;

    .line 5
    new-instance v1, Lr0/a$a;

    invoke-direct {v1, p0}, Lr0/a$a;-><init>(Lr0/a;)V

    iput-object v1, p0, Lr0/a;->p:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lr0/a;->q:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lr0/a;->r:J

    iput-wide v0, p0, Lr0/a;->s:J

    const-string v0, "Gestrue"

    .line 8
    invoke-virtual {p0, v0}, Lbase/b;->P2(Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lr0/a;->n:Landroid/util/SparseIntArray;

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lr0/a;->o:Landroid/util/SparseIntArray;

    .line 13
    invoke-virtual {p0}, Lr0/a;->b3()V

    return-void
.end method

.method public static declared-synchronized X2()Lr0/a;
    .locals 2

    const-class v0, Lr0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lr0/a;->u:Lr0/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lr0/a;

    invoke-direct {v1}, Lr0/a;-><init>()V

    sput-object v1, Lr0/a;->u:Lr0/a;

    .line 3
    :cond_0
    sget-object v1, Lr0/a;->u:Lr0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 4

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    const/4 v1, -0x1

    if-eq p1, v0, :cond_8

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2
    aget p1, p2, p4

    if-ne p1, v0, :cond_1

    move p4, v0

    :cond_1
    invoke-virtual {p0, p4}, Lr0/a;->g3(Z)V

    goto/16 :goto_5

    .line 3
    :cond_2
    iget-object p1, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    .line 4
    iget-object p1, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    iget-object p2, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, p2}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 7
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, v0}, Lo1/h0;->e(I)V

    goto :goto_1

    .line 8
    :cond_4
    :goto_0
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 9
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1}, Lo1/h0;->d()V

    .line 10
    :goto_1
    iget-object p1, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    iget-object p2, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p4, p2}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 12
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, p4}, Lo1/h0;->e(I)V

    goto/16 :goto_5

    .line 13
    :cond_6
    :goto_2
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, p4}, Lo1/h0;->v(I)V

    .line 14
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1}, Lo1/h0;->d()V

    goto/16 :goto_5

    .line 15
    :cond_7
    iget-object p1, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 16
    iget-object p1, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 17
    iget-object p1, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    .line 18
    iget-object p1, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    .line 19
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, p4}, Lo1/h0;->v(I)V

    .line 20
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 21
    iget-object p1, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p1}, Lo1/h0;->d()V

    new-array p1, v0, [I

    aput v1, p1, p4

    .line 22
    invoke-virtual {p0, p4, p1}, Lr0/a;->h3(I[I)V

    new-array p1, v0, [I

    aput v1, p1, p4

    .line 23
    invoke-virtual {p0, v0, p1}, Lr0/a;->h3(I[I)V

    goto :goto_5

    .line 24
    :cond_8
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 25
    aget v2, p2, v0

    .line 26
    aget p2, p2, p4

    .line 27
    iget-object v3, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    if-ltz v2, :cond_9

    .line 28
    iget-object v1, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 29
    :cond_9
    iget-object v1, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_3
    new-array p3, p3, [I

    aput p2, p3, p4

    aput v2, p3, v0

    .line 30
    invoke-virtual {p0, p1, p3}, Lr0/a;->h3(I[I)V

    goto :goto_5

    .line 31
    :cond_a
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 32
    aget v1, p2, v0

    .line 33
    aget p2, p2, p4

    .line 34
    iget-object v2, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p4}, Landroid/util/SparseIntArray;->get(II)I

    if-ne v1, v0, :cond_b

    .line 35
    iget-object v2, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 36
    :cond_b
    iget-object v2, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_4
    new-array p3, p3, [I

    aput p2, p3, p4

    aput v1, p3, v0

    .line 37
    invoke-virtual {p0, p1, p3}, Lr0/a;->h3(I[I)V

    :cond_c
    :goto_5
    return-void
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    :cond_0
    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iput-object v1, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    .line 3
    :cond_0
    iget-object v1, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iput-object v2, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    .line 6
    :cond_1
    iget-object v2, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    iput-object v2, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    const-string v3, "ro.sys.touchGesture"

    .line 7
    invoke-static {v3, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lo1/h0;->h(II)I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lr0/a;->g3(Z)V

    .line 8
    iget-boolean p1, p0, Lr0/a;->h:Z

    if-eqz p1, :cond_3

    const-string p1, "1"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    const-string v0, "persist.gesture.switch"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 8

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v1, v1, [I

    iget-boolean v2, p0, Lr0/a;->h:Z

    aput v2, v1, v0

    invoke-virtual {p3, p1, p2, v1}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object v2, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_3

    return-void

    :cond_3
    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_8

    .line 5
    iget-object v4, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 6
    iget-object v5, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ltz v4, :cond_4

    .line 7
    iget-object v6, p0, Lbase/b;->f:Lo1/x;

    new-array v7, p3, [I

    aput v4, v7, v0

    aput v5, v7, v1

    invoke-virtual {v6, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_5
    iget-object v2, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_6

    return-void

    :cond_6
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_8

    .line 9
    iget-object v4, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 10
    iget-object v5, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ltz v4, :cond_7

    .line 11
    iget-object v6, p0, Lbase/b;->f:Lo1/x;

    new-array v7, p3, [I

    aput v4, v7, v0

    aput v5, v7, v1

    invoke-virtual {v6, p1, p2, v7}, Lo1/x;->G(Ly/b;I[I)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public Y2(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x36

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0x35

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x30

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x2f

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2d

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x2c

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2b

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x3a

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x31

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x3c

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x2e

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x3b

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x29

    goto :goto_0

    .line 1
    :pswitch_14
    invoke-virtual {p0, p1, p2}, Lr0/a;->f3(II)I

    move-result v0

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x1a

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x1b

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x15

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x17

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x18

    :goto_0
    :pswitch_1d
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lr0/a;->c3(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
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
.end method

.method public Z2(II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 p1, 0x20

    goto/16 :goto_5

    :cond_1
    const/16 p1, 0x1e

    goto/16 :goto_5

    :cond_2
    const/16 p1, 0x1c

    goto/16 :goto_5

    :cond_3
    const/16 p1, 0x1a

    goto/16 :goto_5

    :pswitch_1
    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const/16 p1, 0x1f

    goto/16 :goto_5

    :cond_5
    const/16 p1, 0x1d

    goto/16 :goto_5

    :cond_6
    const/16 p1, 0x1b

    goto/16 :goto_5

    :cond_7
    const/16 p1, 0x19

    goto/16 :goto_5

    :pswitch_2
    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    goto/16 :goto_4

    :cond_8
    const/16 p1, 0xd

    goto/16 :goto_5

    :cond_9
    const/16 p1, 0x10

    goto/16 :goto_5

    :cond_a
    const/16 p1, 0xf

    goto/16 :goto_5

    :cond_b
    const/16 p1, 0xe

    goto/16 :goto_5

    :pswitch_3
    if-eq p2, v4, :cond_e

    if-eq p2, v3, :cond_f

    if-eq p2, v2, :cond_d

    if-eq p2, v1, :cond_c

    move v1, v0

    goto :goto_0

    :cond_c
    const/16 v1, 0x15

    goto :goto_0

    :cond_d
    const/16 v1, 0x11

    goto :goto_0

    :cond_e
    const/4 v1, 0x1

    :cond_f
    :goto_0
    move p1, v1

    goto/16 :goto_5

    :pswitch_4
    if-eq p2, v4, :cond_13

    if-eq p2, v3, :cond_12

    if-eq p2, v2, :cond_11

    if-eq p2, v1, :cond_10

    move v4, v0

    goto :goto_1

    :cond_10
    const/16 v4, 0x16

    goto :goto_1

    :cond_11
    const/16 v4, 0x12

    goto :goto_1

    :cond_12
    const/4 v4, 0x6

    :cond_13
    :goto_1
    move p1, v4

    goto :goto_5

    :pswitch_5
    if-eq p2, v4, :cond_17

    if-eq p2, v3, :cond_16

    if-eq p2, v2, :cond_15

    if-eq p2, v1, :cond_14

    move v2, v0

    goto :goto_2

    :cond_14
    const/16 v2, 0x18

    goto :goto_2

    :cond_15
    const/16 v2, 0x14

    goto :goto_2

    :cond_16
    const/16 v2, 0x8

    :cond_17
    :goto_2
    move p1, v2

    goto :goto_5

    :pswitch_6
    if-eq p2, v4, :cond_1b

    if-eq p2, v3, :cond_1a

    if-eq p2, v2, :cond_19

    if-eq p2, v1, :cond_18

    move v3, v0

    goto :goto_3

    :cond_18
    const/16 v3, 0x17

    goto :goto_3

    :cond_19
    const/16 v3, 0x13

    goto :goto_3

    :cond_1a
    const/4 v3, 0x7

    :cond_1b
    :goto_3
    move p1, v3

    goto :goto_5

    :pswitch_7
    if-eq p2, v4, :cond_1f

    if-eq p2, v3, :cond_1e

    if-eq p2, v2, :cond_1d

    if-eq p2, v1, :cond_1c

    goto :goto_4

    :cond_1c
    const/16 p1, 0xc

    goto :goto_5

    :cond_1d
    const/16 p1, 0xb

    goto :goto_5

    :cond_1e
    const/16 p1, 0xa

    goto :goto_5

    :cond_1f
    const/16 p1, 0x9

    goto :goto_5

    :goto_4
    move p1, v0

    .line 1
    :goto_5
    invoke-virtual {p0, p1, v0}, Lr0/a;->Y2(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
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

.method public a3(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b3()V
    .locals 10

    const-string v0, "func"

    const-string v1, "gesture"

    const-string v2, "learnable"

    const-string v3, "gestures"

    const-string v4, "Test"

    .line 1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/f;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/oem/gestures.config"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    :try_start_0
    invoke-static {v5, v7, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load Str: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 10
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v3, :cond_2

    move v5, v7

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_0
    if-ge v7, v5, :cond_4

    .line 12
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 14
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v7, v2

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load funcMap size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  supportLearn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 17
    invoke-virtual {p0, v6, v7}, Lr0/a;->d3(Landroid/util/SparseIntArray;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method public c3(I)V
    .locals 3

    const/16 v0, 0x29

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-gez v0, :cond_1

    if-gez v2, :cond_1

    .line 4
    iget-object v0, p0, Lr0/a;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lr0/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    :cond_1
    if-lez v0, :cond_3

    if-gez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lc/e;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lr0/a;->i:Lo1/z;

    if-eqz p1, :cond_3

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d3(Landroid/util/SparseIntArray;Z)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_3

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lbase/b;->M2()Lo1/h0;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lo1/h0;->h(II)I

    move-result v3

    if-nez v3, :cond_2

    move p2, v0

    :goto_1
    if-ge p2, v1, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 4
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 5
    iget-object v6, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    iget-object v6, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    iget-object v3, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v3

    iput-object v3, p0, Lr0/a;->k:Landroid/util/SparseIntArray;

    .line 8
    iget-object v3, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v3

    iput-object v3, p0, Lr0/a;->m:Landroid/util/SparseIntArray;

    .line 9
    iget-object v3, p0, Lbase/b;->b:Lo1/h0;

    iget-object v5, p0, Lr0/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v5}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 10
    iget-object v3, p0, Lbase/b;->b:Lo1/h0;

    iget-object v5, p0, Lr0/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v5}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 11
    iget-object v3, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {v3, v0}, Lo1/h0;->e(I)V

    .line 12
    iget-object v3, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {v3, v2}, Lo1/h0;->e(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lbase/b;->M2()Lo1/h0;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Lo1/h0;->q(II)V

    .line 14
    invoke-virtual {p0}, Lbase/b;->M2()Lo1/h0;

    move-result-object p1

    invoke-virtual {p1}, Lo1/h0;->d()V

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    :goto_2
    if-ge v0, v1, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 17
    iget-object v4, p0, Lr0/a;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    iget-object v4, p0, Lr0/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public e3(Lo1/p;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lr0/a;->i:Lo1/z;

    invoke-virtual {v0, p1}, Lo1/z;->a(Lo1/p;)V

    :cond_0
    return-void
.end method

.method public f3(II)I
    .locals 9

    .line 1
    iget p2, p0, Lr0/a;->q:I

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lr0/a;->a3(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    if-nez p2, :cond_3

    .line 4
    iget-wide v5, p0, Lr0/a;->r:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x190

    cmp-long p2, v5, v7

    if-ltz p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-wide v5, p0, Lr0/a;->t:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lr0/a;->t:J

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    iput-wide v3, p0, Lr0/a;->t:J

    .line 7
    :goto_2
    iput p1, p0, Lr0/a;->q:I

    .line 8
    iput-wide v1, p0, Lr0/a;->r:J

    const-wide/16 v1, 0x3

    const-wide/16 v5, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 9
    :pswitch_0
    iget-wide p1, p0, Lr0/a;->t:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_4

    const/16 v0, 0x20

    goto :goto_3

    :cond_4
    cmp-long v3, p1, v5

    if-nez v3, :cond_5

    const/16 v0, 0x24

    goto :goto_3

    :cond_5
    cmp-long p1, p1, v1

    if-nez p1, :cond_c

    const/16 v0, 0x28

    goto :goto_3

    .line 10
    :pswitch_1
    iget-wide p1, p0, Lr0/a;->t:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_6

    const/16 v0, 0x1f

    goto :goto_3

    :cond_6
    cmp-long v3, p1, v5

    if-nez v3, :cond_7

    const/16 v0, 0x23

    goto :goto_3

    :cond_7
    cmp-long p1, p1, v1

    if-nez p1, :cond_c

    const/16 v0, 0x27

    goto :goto_3

    .line 11
    :pswitch_2
    iget-wide p1, p0, Lr0/a;->t:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_8

    const/16 v0, 0x1e

    goto :goto_3

    :cond_8
    cmp-long v3, p1, v5

    if-nez v3, :cond_9

    const/16 v0, 0x22

    goto :goto_3

    :cond_9
    cmp-long p1, p1, v1

    if-nez p1, :cond_c

    const/16 v0, 0x26

    goto :goto_3

    .line 12
    :pswitch_3
    iget-wide p1, p0, Lr0/a;->t:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_a

    const/16 v0, 0x1d

    goto :goto_3

    :cond_a
    cmp-long v3, p1, v5

    if-nez v3, :cond_b

    const/16 v0, 0x21

    goto :goto_3

    :cond_b
    cmp-long p1, p1, v1

    if-nez p1, :cond_c

    const/16 v0, 0x25

    :cond_c
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g3(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr0/a;->h:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean p1, p0, Lr0/a;->h:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.gesture.switch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lbase/b;->b:Lo1/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lo1/h0;->q(II)V

    .line 5
    iget-object v0, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {v0, v1}, Lo1/h0;->e(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 6
    invoke-virtual {p0, v0, v1}, Lr0/a;->h3(I[I)V

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lg1/a;->a:Lo1/y;

    iget-object v0, p0, Lr0/a;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lg1/a;->a:Lo1/y;

    iget-object v0, p0, Lr0/a;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs h3(I[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1, v1}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
