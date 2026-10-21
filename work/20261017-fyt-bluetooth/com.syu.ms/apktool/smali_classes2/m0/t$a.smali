.class public Lm0/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/t;


# direct methods
.method public constructor <init>(Lm0/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/t$a;->a:Lm0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestUpgradeMode  mUpgradeStep == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/t$a;->a:Lm0/t;

    invoke-static {v2}, Lm0/t;->O2(Lm0/t;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    invoke-static {v0}, Lm0/t;->O2(Lm0/t;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    invoke-static {v0}, Lm0/t;->R2(Lm0/t;)I

    .line 4
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    invoke-static {v0}, Lm0/t;->P2(Lm0/t;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    invoke-static {v0, v3}, Lm0/t;->Q2(Lm0/t;I)I

    .line 6
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    invoke-static {v0}, Lm0/t;->S2(Lm0/t;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v2, v1, [I

    const/16 v4, 0x7f

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lm0/t;->a3([I)V

    const-wide/16 v5, 0x64

    .line 8
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 9
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v2, v1, [I

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lm0/t;->a3([I)V

    .line 10
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 11
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v2, v1, [I

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lm0/t;->a3([I)V

    .line 12
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 13
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v2, v1, [I

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lm0/t;->a3([I)V

    .line 14
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 15
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v2, v1, [I

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lm0/t;->a3([I)V

    .line 16
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 17
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v2, v1, [I

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lm0/t;->a3([I)V

    .line 18
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 19
    iget-object v0, p0, Lm0/t$a;->a:Lm0/t;

    new-array v1, v1, [I

    aput v4, v1, v3

    invoke-virtual {v0, v1}, Lm0/t;->a3([I)V

    const-wide/16 v0, 0x14

    .line 20
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CAN"

    const-string v1, "sleep exception"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0}, Lm0/d;->h(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
