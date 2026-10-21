.class public Lo0/c$d;
.super Ly/b$a;
.source "SourceFile"

# interfaces
.implements Ld0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lo0/c;


# direct methods
.method public constructor <init>(Lo0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-direct {p0}, Ly/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public H0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 p3, 0x11

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_5

    const/16 p3, 0x14

    if-eq p1, p3, :cond_3

    const/16 p3, 0x26

    if-eq p1, p3, :cond_2

    const/16 p3, 0x23

    if-eq p1, p3, :cond_1

    const/16 p3, 0x24

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x21

    .line 1
    invoke-static {p1, p2}, Lo0/g;->T(I[I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->M(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->E(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_3
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->P(I)V

    .line 8
    iget-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-static {p1}, Lo0/c;->J(Lo0/c;)V

    .line 9
    iget-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-static {p1}, Lo0/c;->K(Lo0/c;)V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->I(I)V

    .line 12
    iget-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-static {p1}, Lo0/c;->K(Lo0/c;)V

    goto/16 :goto_0

    .line 13
    :pswitch_5
    invoke-virtual {p0, p2, p4}, Lo0/c$d;->K2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->O(I)V

    goto :goto_0

    .line 15
    :pswitch_6
    invoke-virtual {p0, p2, p4}, Lo0/c$d;->K2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->G(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->N(I)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->Q(I)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 22
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->f(I)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0, p2, p4}, Lo0/c$d;->K2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    aget p1, p2, v0

    if-ne p1, p4, :cond_4

    sget p1, Lo0/e;->I:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    .line 25
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->z(I)V

    goto :goto_0

    .line 26
    :cond_4
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->z(I)V

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {p0, p2, p4}, Lo0/c$d;->K2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 28
    aget p1, p2, v0

    invoke-static {p1}, Lo0/g;->D(I)V

    .line 29
    iget-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-static {p1}, Lo0/c;->J(Lo0/c;)V

    .line 30
    iget-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-static {p1}, Lo0/c;->K(Lo0/c;)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K2([II)Z
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

.method public O(Ly/d;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ly/d;->p2(I)Ly/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly/g;->O2(Ly/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0xc

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0xd

    .line 3
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x11

    .line 4
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x14

    .line 5
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x21

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, p1, v2}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0xe

    .line 7
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0xf

    .line 8
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x20

    .line 9
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x23

    .line 10
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x1f

    .line 11
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x24

    .line 12
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    const/16 p1, 0x26

    .line 13
    invoke-virtual {v0, p0, p1, v1}, Ly/g;->Y1(Ly/b;II)V

    .line 14
    sget p1, Lu0/b;->D:I

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 15
    iget-object p1, p0, Lo0/c$d;->a:Lo0/c;

    invoke-static {p1}, Lo0/c;->G(Lo0/c;)V

    .line 16
    :cond_0
    invoke-static {}, Lg1/c;->b()Lg1/c;

    move-result-object p1

    invoke-virtual {p1}, Lg1/c;->f()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.syu.dvd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v3, 0x15

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {v0, v3, v1}, Ly/g;->L2(II)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0, v3, v2}, Ly/g;->L2(II)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public m1()V
    .locals 3

    .line 1
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v0

    invoke-virtual {v0}, Ld0/b;->i()Ly/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lo0/e;->c:Ly/g;

    invoke-virtual {v0, v1}, Ly/g;->O2(Ly/c;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v2, 0xc

    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0xd

    .line 4
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x11

    .line 5
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x14

    .line 6
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x21

    .line 7
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0xe

    .line 8
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0xf

    .line 9
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x20

    .line 10
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x23

    .line 11
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x1f

    .line 12
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x24

    .line 13
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    const/16 v2, 0x26

    .line 14
    invoke-virtual {v0, p0, v2}, Ly/g;->P0(Ly/b;I)V

    .line 15
    invoke-virtual {v0, v1}, Ly/g;->O2(Ly/c;)V

    return-void
.end method
