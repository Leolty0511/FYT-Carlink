.class public Lm0/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/v;


# direct methods
.method public constructor <init>(Lm0/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/v$a;->a:Lm0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestUpgradeMode  mUpgradeStep == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/v$a;->a:Lm0/v;

    invoke-static {v2}, Lm0/v;->O2(Lm0/v;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lm0/v$a;->a:Lm0/v;

    invoke-static {v0}, Lm0/v;->O2(Lm0/v;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lm0/v$a;->a:Lm0/v;

    invoke-static {v0}, Lm0/v;->R2(Lm0/v;)I

    .line 4
    iget-object v0, p0, Lm0/v$a;->a:Lm0/v;

    invoke-static {v0}, Lm0/v;->P2(Lm0/v;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lm0/v$a;->a:Lm0/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/v;->Q2(Lm0/v;I)I

    .line 6
    iget-object v0, p0, Lm0/v$a;->a:Lm0/v;

    invoke-static {v0}, Lm0/v;->S2(Lm0/v;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lm0/v$a;->a:Lm0/v;

    iget v1, v0, Lm0/v;->i:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const/16 v1, 0xf

    new-array v1, v1, [I

    .line 8
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lm0/v;->a3([I)V

    const-wide/16 v0, 0x64

    .line 9
    invoke-static {v0, v1}, La/i;->a0(J)V

    :cond_1
    const-wide/16 v0, 0x14

    .line 10
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CAN"

    const-string v1, "sleep exception"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u8fdb\u5165CAN\u76d2\u81ea\u8eab\u7684\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
    .end array-data
.end method
