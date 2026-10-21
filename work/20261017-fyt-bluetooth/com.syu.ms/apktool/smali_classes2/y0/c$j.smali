.class public Ly0/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
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
    iput-boolean v0, p0, Ly0/c$j;->c:Z

    .line 3
    iput p1, p0, Ly0/c$j;->a:I

    .line 4
    iput p2, p0, Ly0/c$j;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Ly0/c$j;->b:I

    .line 2
    iget-boolean p1, p0, Ly0/c$j;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ly0/c$j;->c:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget v0, p0, Ly0/c$j;->d:I

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
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Ly0/c$j;->c:Z

    .line 2
    iget v0, p0, Ly0/c$j;->a:I

    iget v1, p0, Ly0/c$j;->b:I

    invoke-static {v0, v1}, Lz/k;->m(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ly0/c$j;->c:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget v1, p0, Ly0/c$j;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
