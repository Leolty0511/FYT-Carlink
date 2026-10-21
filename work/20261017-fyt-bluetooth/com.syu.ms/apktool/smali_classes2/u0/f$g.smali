.class public Lu0/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/f;->G([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-class v0, Lu0/e;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lu0/f;->g()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lu0/f;->p([B)[B

    .line 4
    invoke-static {v1}, Lu0/f;->i([I)[I

    new-array v1, v4, [I

    const/4 v4, 0x7

    aput v4, v1, v3

    .line 5
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lu0/f;->g()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 7
    invoke-static {}, Lu0/f;->h()I

    new-array v1, v4, [I

    const/4 v5, 0x4

    aput v5, v1, v3

    .line 8
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/16 v2, 0xeb

    aput v2, v1, v3

    aput v3, v1, v4

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 9
    invoke-static {v1}, Lu0/f;->j([I)V

    .line 10
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
