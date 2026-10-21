.class public Lmodule/canbus/y$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public b:Z

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/canbus/y$i;->b:Z

    .line 3
    iput p1, p0, Lmodule/canbus/y$i;->a:I

    .line 4
    iput p2, p0, Lmodule/canbus/y$i;->c:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmodule/canbus/y$i;->d:I

    .line 2
    iget-boolean p1, p0, Lmodule/canbus/y$i;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmodule/canbus/y$i;->b:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget v0, p0, Lmodule/canbus/y$i;->c:I

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

.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmodule/canbus/y$i;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0xc4

    const/4 v4, 0x1

    aput v2, v0, v4

    aput v4, v0, v1

    const/4 v1, 0x3

    .line 2
    iget v2, p0, Lmodule/canbus/y$i;->d:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iput-boolean v3, p0, Lmodule/canbus/y$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
