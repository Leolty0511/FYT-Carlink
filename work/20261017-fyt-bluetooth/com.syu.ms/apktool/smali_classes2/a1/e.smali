.class public La1/e;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static g:La1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    const-string v1, "Steer-TRAN"

    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    const-string v0, "STEER"

    .line 3
    invoke-virtual {p0, v0}, Lbase/b;->P2(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized X2()La1/e;
    .locals 2

    const-class v0, La1/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, La1/e;->g:La1/e;

    if-nez v1, :cond_0

    new-instance v1, La1/e;

    invoke-direct {v1}, La1/e;-><init>()V

    sput-object v1, La1/e;->g:La1/e;

    .line 2
    :cond_0
    sget-object v1, La1/e;->g:La1/e;
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

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p3}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    aget p1, p2, p4

    if-ltz p1, :cond_2

    aget p1, p2, p4

    const/4 p3, 0x6

    if-ge p1, p3, :cond_2

    .line 2
    new-instance p1, Ly/f;

    sget-object p3, La1/b;->d:[I

    aget p2, p2, p4

    aget p2, p3, p2

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p3}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    aget p1, p2, p4

    if-ltz p1, :cond_2

    aget p1, p2, p4

    const/16 p3, 0x32

    if-ge p1, p3, :cond_2

    .line 4
    new-instance p1, Ly/f;

    sget-object p3, La1/b;->c:[I

    aget p2, p2, p4

    aget p2, p3, p2

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cmdCode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " ints: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Steer"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    const/4 p4, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    aget p1, p2, v0

    if-nez p1, :cond_0

    new-array p1, p3, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :cond_0
    aget p1, p2, v0

    if-ne p1, p4, :cond_1

    sget-object p1, La1/b;->b:La1/d;

    instance-of p2, p1, La1/a;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, La1/a;

    invoke-virtual {p1}, La1/a;->o()V

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p2, p1}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, La1/b;->b:La1/d;

    aget v0, p2, v0

    aget p4, p2, p4

    aget p2, p2, p3

    invoke-interface {p1, v0, p4, p2}, La1/d;->h(III)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p0, p2, p3}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, La1/b;->b:La1/d;

    aget p3, p2, v0

    aget p2, p2, p4

    invoke-interface {p1, p3, p2}, La1/d;->i(II)V

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-virtual {p0, p2, p3}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    sget-object p1, La1/b;->b:La1/d;

    aget p3, p2, v0

    aget p2, p2, p4

    sget p4, La1/b;->e:I

    invoke-interface {p1, p3, p2, p4}, La1/d;->e(III)V

    goto :goto_0

    .line 13
    :pswitch_5
    invoke-virtual {p0, p2, p3}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, La1/b;->b:La1/d;

    aget p3, p2, v0

    aget p2, p2, p4

    invoke-interface {p1, p3, p2}, La1/d;->g(II)V

    goto :goto_0

    .line 15
    :pswitch_6
    invoke-virtual {p0, p2, p4}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    sget-object p1, La1/b;->b:La1/d;

    aget p2, p2, v0

    invoke-interface {p1, p2}, La1/d;->f(I)V

    goto :goto_0

    .line 17
    :pswitch_7
    sget-object p1, La1/b;->b:La1/d;

    invoke-interface {p1}, La1/d;->save()V

    goto :goto_0

    .line 18
    :pswitch_8
    sget-object p1, La1/b;->b:La1/d;

    invoke-interface {p1}, La1/d;->clear()V

    goto :goto_0

    .line 19
    :pswitch_9
    invoke-virtual {p0, p2, p4}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    sget-object p1, La1/b;->b:La1/d;

    aget p2, p2, v0

    invoke-interface {p1, p2}, La1/d;->j(I)V

    goto :goto_0

    .line 21
    :pswitch_a
    invoke-virtual {p0, p2, p4}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    sget-object p1, La1/b;->b:La1/d;

    aget p2, p2, v0

    sget p3, La1/b;->e:I

    invoke-interface {p1, p2, p3}, La1/d;->c(II)V

    goto :goto_0

    .line 23
    :pswitch_b
    invoke-virtual {p0, p2, p4}, La1/e;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    aget p1, p2, v0

    invoke-static {p1}, La1/c;->g(I)V

    :cond_1
    :goto_0
    return-void

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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xc5
        0x0
    .end array-data
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 1

    .line 1
    sget-object p1, La1/b;->b:La1/d;

    instance-of v0, p1, La1/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, La1/a;

    invoke-virtual {p1}, La1/a;->A()V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    const/4 v1, 0x2

    if-eq p2, v0, :cond_6

    if-eq p2, v1, :cond_5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, La1/b;->h:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 3
    :cond_3
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, La1/b;->g:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    :cond_4
    move v2, p3

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_8

    .line 4
    iget-object v3, p0, Lbase/b;->f:Lo1/x;

    new-array v4, v1, [I

    aput v2, v4, p3

    sget-object v5, La1/b;->d:[I

    aget v5, v5, v2

    aput v5, v4, v0

    invoke-virtual {v3, p1, p2, v4}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_5
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, La1/b;->e:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    :cond_6
    move v2, p3

    :goto_1
    const/16 v3, 0x32

    if-ge v2, v3, :cond_8

    .line 6
    iget-object v3, p0, Lbase/b;->f:Lo1/x;

    new-array v4, v1, [I

    aput v2, v4, p3

    sget-object v5, La1/b;->c:[I

    aget v5, v5, v2

    aput v5, v4, v0

    invoke-virtual {v3, p1, p2, v4}, Lo1/x;->G(Ly/b;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_7
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, La1/b;->f:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final Y2([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
