.class public Ly0/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/i$f$a;
    }
.end annotation


# instance fields
.field public final a:Ly0/i$f$a;

.field public final b:I

.field public c:I

.field public final d:J

.field public e:Z


# direct methods
.method public constructor <init>(Ly0/i$f$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly0/i$f;->a:Ly0/i$f$a;

    .line 3
    iput p2, p0, Ly0/i$f;->b:I

    .line 4
    iput-wide p3, p0, Ly0/i$f;->d:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Ly0/i$f;->c:I

    .line 2
    iget-boolean p1, p0, Ly0/i$f;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ly0/i$f;->e:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget-wide v0, p0, Ly0/i$f;->d:J

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
    iput-boolean v0, p0, Ly0/i$f;->e:Z

    .line 2
    iget-object v0, p0, Ly0/i$f;->a:Ly0/i$f$a;

    iget v1, p0, Ly0/i$f;->b:I

    iget v2, p0, Ly0/i$f;->c:I

    invoke-interface {v0, v1, v2}, Ly0/i$f$a;->a(II)V
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
