.class public Lmodule/canbus/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:I

.field public b:Z

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/canbus/b$h;->b:Z

    .line 3
    iput p1, p0, Lmodule/canbus/b$h;->a:I

    .line 4
    iput p2, p0, Lmodule/canbus/b$h;->c:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmodule/canbus/b$h;->j:I

    .line 2
    iget-boolean p1, p0, Lmodule/canbus/b$h;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmodule/canbus/b$h;->b:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget v0, p0, Lmodule/canbus/b$h;->c:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(IIIIII)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmodule/canbus/b$h;->d:I

    .line 2
    iput p3, p0, Lmodule/canbus/b$h;->e:I

    .line 3
    iput p2, p0, Lmodule/canbus/b$h;->f:I

    .line 4
    iput p4, p0, Lmodule/canbus/b$h;->h:I

    .line 5
    iput p5, p0, Lmodule/canbus/b$h;->i:I

    .line 6
    iput p6, p0, Lmodule/canbus/b$h;->g:I

    .line 7
    iget-boolean p1, p0, Lmodule/canbus/b$h;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lmodule/canbus/b$h;->b:Z

    .line 9
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget p2, p0, Lmodule/canbus/b$h;->c:I

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmodule/canbus/b$h;->a:I

    const/4 v1, 0x3

    const/16 v2, 0xe3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v0, v5, :cond_0

    new-array v0, v3, [I

    aput v2, v0, v6

    const/16 v2, 0xc4

    aput v2, v0, v4

    aput v4, v0, v5

    .line 2
    iget v2, p0, Lmodule/canbus/b$h;->j:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iput-boolean v6, p0, Lmodule/canbus/b$h;->b:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [I

    aput v2, v0, v6

    const/16 v2, 0xc7

    aput v2, v0, v4

    const/4 v2, 0x6

    aput v2, v0, v5

    aput v6, v0, v1

    .line 4
    iget v1, p0, Lmodule/canbus/b$h;->f:I

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v3, p0, Lmodule/canbus/b$h;->e:I

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iput-boolean v6, p0, Lmodule/canbus/b$h;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
