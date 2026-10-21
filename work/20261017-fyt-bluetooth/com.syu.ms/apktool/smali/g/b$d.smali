.class public Lg/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/b;


# direct methods
.method public constructor <init>(Lg/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/b$d;->a:Lg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v0, v1}, Lg/b;->j(Lg/b;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v0}, Lg/b;->i(Lg/b;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v0, v2}, Lg/b;->j(Lg/b;Z)Z

    .line 6
    :cond_1
    sget v0, Lu0/b;->o:I

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 7
    :cond_2
    sget v0, Lu0/b;->o4:I

    if-eqz v0, :cond_3

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_3

    .line 8
    sget v0, Lu0/b;->o4:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 9
    :goto_0
    iget-object v3, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v3}, Lg/b;->k(Lg/b;)I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 10
    iget-object v3, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v3, v0}, Lg/b;->l(Lg/b;I)I

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ltz v0, :cond_6

    const/16 v4, 0xb

    if-ge v0, v4, :cond_6

    .line 11
    iget-object v4, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v4}, Lg/b;->m(Lg/b;)I

    move-result v4

    if-ne v4, v0, :cond_5

    if-eqz v3, :cond_6

    .line 12
    :cond_5
    iget-object v3, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v3, v0}, Lg/b;->n(Lg/b;I)I

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v3

    iget-object v4, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v4}, Lg/b;->o(Lg/b;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v3

    iget-object v4, p0, Lg/b$d;->a:Lg/b;

    invoke-static {v4}, Lg/b;->o(Lg/b;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_6
    if-eqz v0, :cond_7

    const-string v0, "LG"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11DataMain.sSignalOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lu0/b;->r4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x45

    new-array v1, v1, [I

    .line 16
    sget v3, Lu0/b;->r4:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
