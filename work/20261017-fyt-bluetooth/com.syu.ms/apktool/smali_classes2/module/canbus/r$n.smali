.class public Lmodule/canbus/r$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/canbus/r$n;->c:Z

    .line 3
    iput p1, p0, Lmodule/canbus/r$n;->a:I

    .line 4
    iput p2, p0, Lmodule/canbus/r$n;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lmodule/canbus/r$n;->b:I

    .line 2
    iget-boolean p1, p0, Lmodule/canbus/r$n;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmodule/canbus/r$n;->c:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget v0, p0, Lmodule/canbus/r$n;->d:I

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
    .locals 4

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v1, v0, v3

    const/4 v1, 0x3

    .line 1
    iget v3, p0, Lmodule/canbus/r$n;->a:I

    aput v3, v0, v1

    const/4 v1, 0x4

    iget v3, p0, Lmodule/canbus/r$n;->b:I

    aput v3, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    iput-boolean v2, p0, Lmodule/canbus/r$n;->c:Z
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
