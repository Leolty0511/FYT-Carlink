.class public Lu0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/e;->i(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lu0/e$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-class v0, Lu0/e;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lu0/e;->a()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lu0/e;->c([B)[B

    .line 4
    invoke-static {v1}, Lu0/e;->d([I)[I

    .line 5
    invoke-static {}, Lu0/e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    const-string v5, "\u8bf7\u6c42\u5347\u7ea7\u8d85\u65f6\uff0c\u5347\u7ea7\u5931\u8d25\uff0cMCU\u672a\u8fdb\u5165\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v1, v5}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_0
    new-array v1, v4, [I

    const/4 v4, 0x7

    aput v4, v1, v3

    .line 7
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lu0/e;->a()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 9
    invoke-static {}, Lu0/e;->b()I

    .line 10
    invoke-static {}, Lu0/e;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bf7\u6c42\u8fdb\u5165\u5347\u7ea7\u6a21\u5f0f sTryReqTick = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu0/e;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_2
    new-array v1, v4, [I

    const/4 v5, 0x4

    aput v5, v1, v3

    .line 12
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    .line 13
    iget v1, p0, Lu0/e$a;->a:I

    const/4 v2, 0x2

    const/16 v5, 0xeb

    const/4 v6, 0x3

    if-nez v1, :cond_3

    new-array v1, v6, [I

    aput v5, v1, v3

    aput v3, v1, v4

    const/16 v3, 0x20

    aput v3, v1, v2

    .line 14
    invoke-static {v1}, Lu0/e;->f([I)V

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    new-array v1, v6, [I

    aput v5, v1, v3

    aput v3, v1, v4

    const/16 v3, 0x21

    aput v3, v1, v2

    .line 15
    invoke-static {v1}, Lu0/e;->f([I)V

    .line 16
    :cond_4
    :goto_0
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
