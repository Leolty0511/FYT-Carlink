.class public Ld1/h;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static g:Ld1/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    const-string v1, "Tv-TRAN"

    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    sget-object v1, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v2, "tv"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lo1/x;->d:Z

    const-string v0, "TV"

    .line 4
    invoke-virtual {p0, v0}, Lbase/b;->P2(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized X2()Ld1/h;
    .locals 2

    const-class v0, Ld1/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ld1/h;->g:Ld1/h;

    if-nez v1, :cond_0

    new-instance v1, Ld1/h;

    invoke-direct {v1}, Ld1/h;-><init>()V

    sput-object v1, Ld1/h;->g:Ld1/h;

    .line 2
    :cond_0
    sget-object v1, Ld1/h;->g:Ld1/h;
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
    .locals 1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ly/f;

    sget p2, Ld1/d;->c:I

    invoke-direct {p1, p2}, Ly/f;-><init>(I)V

    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0, p2, p3}, Ld1/h;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3
    aget p3, p2, p1

    if-ltz p3, :cond_2

    aget p3, p2, p1

    sget-object p4, Ld1/d;->j:[I

    array-length v0, p4

    if-ge p3, v0, :cond_2

    .line 4
    new-instance p3, Ly/f;

    aget p1, p2, p1

    aget p1, p4, p1

    invoke-direct {p3, p1}, Ly/f;-><init>(I)V

    return-object p3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Ld1/h;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Ld1/d;->b:Ld1/g;

    aget p2, p2, p4

    invoke-interface {p1, p2}, Ld1/g;->m(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Ld1/h;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Ld1/d;->b:Ld1/g;

    aget p2, p2, p4

    invoke-interface {p1, p2}, Ld1/g;->f(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Ld1/h;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Ld1/d;->b:Ld1/g;

    aget p2, p2, p4

    invoke-interface {p1, p2}, Ld1/g;->h(I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p2, p1}, Ld1/h;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Ld1/d;->b:Ld1/g;

    aget p4, p2, p4

    aget p3, p2, p3

    const/4 v0, 0x2

    aget p2, p2, v0

    invoke-interface {p1, p4, p3, p2}, Ld1/g;->j(III)V

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->n()V

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->l()V

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-virtual {p0, p2, p3}, Ld1/h;->Y2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----------  >>>UI SET  TV TYPE : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tv"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p1, Ld1/d;->b:Ld1/g;

    aget p2, p2, p4

    invoke-interface {p1, p2}, Ld1/g;->k(I)V

    goto :goto_0

    .line 14
    :pswitch_7
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->d()V

    goto :goto_0

    .line 15
    :pswitch_8
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->i()V

    goto :goto_0

    .line 16
    :pswitch_9
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->c()V

    goto :goto_0

    .line 17
    :pswitch_a
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->g()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 3

    const-string v0, "syu.tv.type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    sget-object v1, Lmodule/tv/TvStore;->a:Lmodule/tv/TvStore;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lo1/h0;->h(II)I

    move-result p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==================>>>> tv def == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tv"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Ld1/d;->b:Ld1/g;

    invoke-interface {v0, p1}, Ld1/g;->k(I)V

    .line 5
    sget v0, Ld1/d;->c:I

    if-eq p1, v0, :cond_0

    .line 6
    invoke-static {p1}, Ld1/f;->h(I)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 3

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

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->i:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->h:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->g:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->f:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->e:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->d:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Ld1/d;->c:I

    aput v2, v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    :goto_0
    return-void

    nop

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
