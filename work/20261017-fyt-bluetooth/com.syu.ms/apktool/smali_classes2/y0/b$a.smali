.class public Ly0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly0/b$a;->c:Z

    .line 3
    iput v0, p0, Ly0/b$a;->e:I

    .line 4
    iput p1, p0, Ly0/b$a;->a:I

    .line 5
    iput p2, p0, Ly0/b$a;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Ly0/b$a;->c:Z

    .line 2
    iget v1, p0, Ly0/b$a;->a:I

    iget v2, p0, Ly0/b$a;->b:I

    invoke-static {v1, v2}, Lz/k;->m(II)I

    move-result v1

    if-gez v1, :cond_0

    iget v1, p0, Ly0/b$a;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ly0/b$a;->e:I

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 3
    iput-boolean v2, p0, Ly0/b$a;->c:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget v1, p0, Ly0/b$a;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Ly0/b$a;->e:I
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
