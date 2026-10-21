.class public Lmodule/bt/CmdBtSofia$d;
.super Ly/b$a;
.source "SourceFile"

# interfaces
.implements Ld0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/bt/CmdBtSofia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:[I

.field public final synthetic b:Lmodule/bt/CmdBtSofia;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSofia;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSofia$d;->b:Lmodule/bt/CmdBtSofia;

    invoke-direct {p0}, Ly/b$a;-><init>()V

    const/16 p1, 0x13

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lmodule/bt/CmdBtSofia$d;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x6
        0x7
        0x8
        0x9
        0xd
        0xe
        0xf
        0x10
        0x12
        0x13
        0x16
        0x18
        0x1a
        0x1c
        0x1d
        0x1f
    .end array-data
.end method


# virtual methods
.method public H0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->c(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->L(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->m(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 p3, 0x0

    .line 9
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :pswitch_7
    invoke-static {p1, p2, p3, p4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12
    :pswitch_8
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->B(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_9
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->S(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :pswitch_a
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->F(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :pswitch_b
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20
    :pswitch_c
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->l(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_d
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->s(I)V

    goto :goto_0

    .line 24
    :pswitch_e
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lmodule/bt/CmdBtSofia;->c0()Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, p4, v1

    invoke-static {}, Lmodule/bt/CmdBtSofia;->e0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lmodule/bt/CmdBtSofia$d;->b:Lmodule/bt/CmdBtSofia;

    invoke-static {p1}, Lmodule/bt/CmdBtSofia;->f0(Lmodule/bt/CmdBtSofia;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lh0/e;->T(Ljava/lang/Runnable;)V

    .line 28
    invoke-static {v1}, Lmodule/bt/CmdBtSofia;->d0(Z)Z

    goto :goto_0

    .line 29
    :pswitch_f
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->O(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :pswitch_10
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->N(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :pswitch_11
    invoke-static {p2, v0}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    aget p1, p2, v1

    invoke-static {p1}, Lh0/e;->o(I)V

    goto :goto_0

    .line 35
    :pswitch_12
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_13
    invoke-static {p4, v0}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    aget-object p1, p4, v1

    invoke-static {p1}, Lh0/e;->k(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public O(Ly/d;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ly/d;->p2(I)Ly/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly/g;->O2(Ly/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x1e

    .line 2
    sget v1, Lh0/c;->Q:I

    invoke-virtual {v0, p1, v1}, Ly/g;->L2(II)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$d;->a:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 4
    sget-object v1, Lh0/c;->c:Ly/g;

    aget v0, v0, p1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Ly/g;->Y1(Ly/b;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 5
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

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly/g;->O2(Ly/c;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lmodule/bt/CmdBtSofia$d;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    sget-object v2, Lh0/c;->c:Ly/g;

    aget v1, v1, v0

    invoke-virtual {v2, p0, v1}, Ly/g;->P0(Ly/b;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
