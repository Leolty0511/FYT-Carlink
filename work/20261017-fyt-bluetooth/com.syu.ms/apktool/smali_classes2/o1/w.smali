.class public Lo1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    if-gtz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lo1/w;->a:I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lo1/w;->b:[I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/w;->b:[I

    return-object v0
.end method

.method public declared-synchronized b(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lo1/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lo1/w;->b:[I

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lo1/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lo1/w;->b:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo1/w;->c:I

    aget p1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(I)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget v2, p0, Lo1/w;->c:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v4, p0, Lo1/w;->b:[I

    aget v5, v4, v1

    if-ne v5, p1, :cond_0

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v2, v5

    .line 3
    invoke-static {v4, v5, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v1, p0, Lo1/w;->c:I

    sub-int/2addr v1, v3

    iput v1, p0, Lo1/w;->c:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget v1, p0, Lo1/w;->c:I

    iget v2, p0, Lo1/w;->a:I

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lo1/w;->b:[I

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lo1/w;->b:[I

    iget v1, p0, Lo1/w;->a:I

    sub-int/2addr v1, v3

    aput p1, v0, v1

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lo1/w;->b:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo1/w;->c:I

    aput p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lo1/w;->c:I

    return v0
.end method
