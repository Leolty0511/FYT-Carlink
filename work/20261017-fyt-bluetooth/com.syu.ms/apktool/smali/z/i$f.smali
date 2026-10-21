.class public Lz/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/i;


# direct methods
.method public constructor <init>(Lz/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/i$f;->a:Lz/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lz/i$f;->a:Lz/i;

    invoke-static {v0}, Lz/i;->c(Lz/i;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v0, :cond_1

    new-array v0, v3, [I

    aput v2, v0, v5

    aput v5, v0, v4

    .line 2
    invoke-static {}, Lo1/q0;->J()I

    move-result v2

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lo1/q0;->J()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lz/i$f;->a:Lz/i;

    invoke-static {v0, v5}, Lz/i;->a(Lz/i;I)I

    new-array v0, v3, [I

    aput v2, v0, v5

    aput v5, v0, v4

    aput v4, v0, v1

    .line 6
    invoke-static {v0}, Lz/k;->s([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
