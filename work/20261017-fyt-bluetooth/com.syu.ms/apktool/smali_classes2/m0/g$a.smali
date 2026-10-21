.class public Lm0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/g;


# direct methods
.method public constructor <init>(Lm0/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/g$a;->a:Lm0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestUpgradeMode  mUpgradeStep == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/g$a;->a:Lm0/g;

    invoke-static {v2}, Lm0/g;->O2(Lm0/g;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lm0/g$a;->a:Lm0/g;

    invoke-static {v0}, Lm0/g;->O2(Lm0/g;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lm0/g$a;->a:Lm0/g;

    invoke-static {v0}, Lm0/g;->R2(Lm0/g;)I

    .line 4
    iget-object v0, p0, Lm0/g$a;->a:Lm0/g;

    invoke-static {v0}, Lm0/g;->P2(Lm0/g;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lm0/g$a;->a:Lm0/g;

    invoke-static {v0, v3}, Lm0/g;->Q2(Lm0/g;I)I

    .line 6
    iget-object v0, p0, Lm0/g$a;->a:Lm0/g;

    invoke-static {v0}, Lm0/g;->S2(Lm0/g;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lm0/g$a;->a:Lm0/g;

    new-array v1, v1, [I

    const/16 v2, 0x7f

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lm0/g;->a3([I)V

    const-wide/16 v0, 0x14

    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CAN"

    const-string v1, "sleep exception"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u8fdb\u5165CAN\u76d2\u81ea\u8eab\u7684\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p0}, Lm0/d;->h(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
