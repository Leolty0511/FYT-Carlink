.class public Lc1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/d;


# direct methods
.method public constructor <init>(Lc1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/d$a;->a:Lc1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lc1/d;->Q2()I

    .line 2
    invoke-static {}, Lc1/d;->O2()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lc1/d$a;->a:Lc1/d;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lc1/d;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Lc1/d;->P2(I)I

    .line 6
    :cond_0
    iget-object v0, p0, Lc1/d$a;->a:Lc1/d;

    invoke-static {v0}, Lc1/d;->R2(Lc1/d;)Lo1/l0;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lo1/l0;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lc1/d$a;->a:Lc1/d;

    invoke-static {v2}, Lc1/d;->S2(Lc1/d;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 8
    iget-object v2, p0, Lc1/d$a;->a:Lc1/d;

    invoke-static {v2, v0}, Lc1/d;->T2(Lc1/d;I)I

    const/16 v0, 0x12

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Lc1/d$a;->a:Lc1/d;

    invoke-static {v3}, Lc1/d;->S2(Lc1/d;)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lc1/b;->i(I[I)V

    :cond_1
    return-void
.end method
