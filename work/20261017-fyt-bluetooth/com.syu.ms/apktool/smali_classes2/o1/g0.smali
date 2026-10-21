.class public Lo1/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:I

.field public c:I

.field public d:[I

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo1/g0;->a:Landroid/content/SharedPreferences;

    .line 3
    iput p2, p0, Lo1/g0;->b:I

    .line 4
    new-array p1, p2, [I

    iput-object p1, p0, Lo1/g0;->d:[I

    .line 5
    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lo1/g0;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(II)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo1/g0;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p2
.end method

.method public c(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/g0;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(II)I
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lo1/g0;->b:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lo1/g0;->d:[I

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo1/g0;->d:[I

    aget v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, 0xffff

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lo1/g0;->e:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    monitor-exit v0

    return p2

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lo1/g0;->b(II)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return p2
.end method

.method public e(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo1/g0;->f(ILjava/lang/String;)V

    return-void
.end method

.method public f(ILjava/lang/String;)V
    .locals 5

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lo1/g0;->b:I

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lo1/g0;->d:[I

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo1/g0;->d:[I

    aget v2, v1, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    aget v2, v1, p1

    const/high16 v4, -0x10000

    and-int/2addr v2, v4

    aput v2, v1, p1

    .line 5
    iget-object v1, p0, Lo1/g0;->e:[Ljava/lang/String;

    aput-object v3, v1, p1

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, p1, v3}, Lo1/g0;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lo1/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public g(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo1/g0;->h(ILjava/lang/String;)V

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 5

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lo1/g0;->b:I

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lo1/g0;->d:[I

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo1/g0;->d:[I

    aget v2, v1, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 4
    iget v2, p0, Lo1/g0;->c:I

    aget v4, v1, v2

    and-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 5
    iput v3, p0, Lo1/g0;->c:I

    aget v3, v1, v2

    shl-int/lit8 v4, p1, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 6
    :cond_0
    aget v2, v1, p1

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    aput v2, v1, p1

    .line 7
    aget v2, v1, p1

    or-int/lit8 v2, v2, 0x2

    aput v2, v1, p1

    .line 8
    iget-object v1, p0, Lo1/g0;->e:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo1/g0;->d:[I

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    iget v3, p0, Lo1/g0;->c:I

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lo1/g0;->d:[I

    aget v4, v3, v2

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 4
    aget v6, v3, v4

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 5
    aget v5, v3, v4

    const/high16 v6, -0x10000

    and-int/2addr v5, v6

    aput v5, v3, v4

    .line 6
    iget-object v3, p0, Lo1/g0;->e:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p0, v4, v3}, Lo1/g0;->f(ILjava/lang/String;)V

    .line 7
    iget-object v3, p0, Lo1/g0;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput v1, p0, Lo1/g0;->c:I

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lo1/g0;->i()V

    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lo1/g0;->d:[I

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    iget v3, p0, Lo1/g0;->c:I

    if-ge v1, v3, :cond_3

    .line 3
    iget-object v3, p0, Lo1/g0;->d:[I

    aget v4, v3, v1

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 4
    aget v6, v3, v4

    and-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget v7, v3, v4

    const/high16 v8, -0x10000

    and-int/2addr v7, v8

    aput v7, v3, v4

    .line 6
    aget v7, v3, v4

    or-int/2addr v7, v6

    aput v7, v3, v4

    if-nez v6, :cond_1

    .line 7
    iget-object v3, p0, Lo1/g0;->e:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p0, v4, v3}, Lo1/g0;->f(ILjava/lang/String;)V

    .line 8
    iget-object v3, p0, Lo1/g0;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_1

    :cond_1
    if-ne v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    aget v6, v3, v2

    and-int/2addr v5, v6

    aput v5, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 10
    aget v6, v3, v2

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v6

    aput v4, v3, v2

    move v2, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iput v2, p0, Lo1/g0;->c:I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
