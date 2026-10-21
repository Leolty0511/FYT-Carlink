.class public Lq0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq0/a;


# direct methods
.method public constructor <init>(Lq0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq0/a$a;->a:Lq0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq0/a$a;->a:Lq0/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq0/a;->c(Lq0/a;Z)Z

    .line 2
    sget v0, Lq0/b;->e:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lq0/a$a;->a:Lq0/a;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget v0, Lq0/b;->f:I

    add-int/lit16 v0, v0, -0x1db0

    .line 6
    div-int/lit8 v0, v0, 0x5

    .line 7
    iget-object v2, p0, Lq0/a$a;->a:Lq0/a;

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lq0/a;->h(Lq0/a;I)I

    .line 8
    iget-object v2, p0, Lq0/a$a;->a:Lq0/a;

    and-int/lit16 v0, v0, 0xff

    invoke-static {v2, v0}, Lq0/a;->j(Lq0/a;I)I

    .line 9
    iget-object v0, p0, Lq0/a$a;->a:Lq0/a;

    invoke-static {v0}, Lq0/a;->g(Lq0/a;)I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 10
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lq0/a$a;->a:Lq0/a;

    invoke-static {v1}, Lq0/a;->k(Lq0/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
