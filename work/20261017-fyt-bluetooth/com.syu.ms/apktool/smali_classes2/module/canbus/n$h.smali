.class public Lmodule/canbus/n$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/n;
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


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/canbus/n$h;->b:Z

    .line 3
    iput p1, p0, Lmodule/canbus/n$h;->a:I

    .line 4
    iput p2, p0, Lmodule/canbus/n$h;->c:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(IIIIII)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmodule/canbus/n$h;->d:I

    .line 2
    iput p2, p0, Lmodule/canbus/n$h;->e:I

    .line 3
    iput p3, p0, Lmodule/canbus/n$h;->f:I

    .line 4
    iput p4, p0, Lmodule/canbus/n$h;->h:I

    .line 5
    iput p5, p0, Lmodule/canbus/n$h;->i:I

    .line 6
    iput p6, p0, Lmodule/canbus/n$h;->g:I

    .line 7
    iget-boolean p1, p0, Lmodule/canbus/n$h;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lmodule/canbus/n$h;->b:Z

    .line 9
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget p2, p0, Lmodule/canbus/n$h;->c:I

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
    .locals 6

    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x83

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x7

    aput v4, v1, v2

    const/4 v2, 0x3

    .line 1
    iget v5, p0, Lmodule/canbus/n$h;->d:I

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    iget v0, p0, Lmodule/canbus/n$h;->e:I

    aput v0, v1, v4

    const/16 v0, 0x8

    iget v2, p0, Lmodule/canbus/n$h;->f:I

    aput v2, v1, v0

    const/16 v0, 0x9

    aput v3, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 2
    iput-boolean v3, p0, Lmodule/canbus/n$h;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
