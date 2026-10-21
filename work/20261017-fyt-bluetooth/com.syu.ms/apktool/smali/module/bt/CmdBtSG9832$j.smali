.class public Lmodule/bt/CmdBtSG9832$j;
.super Ly/b$a;
.source "SourceFile"

# interfaces
.implements Ld0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/bt/CmdBtSG9832;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public a:[I

.field public final synthetic b:Lmodule/bt/CmdBtSG9832;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSG9832;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$j;->b:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ly/b$a;-><init>()V

    const/16 p1, 0x14

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$j;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
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
    .locals 1

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbase/b;->W2(I[I[F[Ljava/lang/String;)V

    return-void
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
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$j;->a:[I

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
    iget-object v1, p0, Lmodule/bt/CmdBtSG9832$j;->a:[I

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
