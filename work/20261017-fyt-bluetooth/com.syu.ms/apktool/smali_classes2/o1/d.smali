.class public Lo1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:[Ljava/lang/Object;

.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo1/d;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lo1/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo1/d;->a:Z

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lo1/g;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lo1/d;->b:[Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lo1/d;->c:[Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lo1/b;->b(I)I

    move-result p1

    .line 7
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lo1/d;->c:[Ljava/lang/Object;

    .line 9
    :goto_0
    iput v0, p0, Lo1/d;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Comparable;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lo1/d;->d:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lo1/d;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lo1/d;->d:I

    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lo1/d;->d()V

    .line 6
    :cond_1
    iget v0, p0, Lo1/d;->d:I

    .line 7
    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 8
    invoke-static {v1}, Lo1/b;->b(I)I

    move-result v1

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lo1/d;->b:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v3, p0, Lo1/d;->c:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v2, p0, Lo1/d;->b:[Ljava/lang/Object;

    .line 14
    iput-object v1, p0, Lo1/d;->c:[Ljava/lang/Object;

    .line 15
    :cond_2
    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 16
    iget-object p1, p0, Lo1/d;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 17
    iput v0, p0, Lo1/d;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lo1/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo1/d<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lo1/d;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lo1/d;->b:[Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo1/d;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lo1/d;->c:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    :goto_0
    move-object v1, v0

    .line 4
    :goto_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized c(Ljava/lang/Comparable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/d;->b:[Ljava/lang/Object;

    iget v1, p0, Lo1/d;->d:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lo1/d;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lo1/d;->e:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 3
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo1/d;->a:Z
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

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo1/d;->b()Lo1/d;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 8

    .line 1
    iget v0, p0, Lo1/d;->d:I

    .line 2
    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lo1/d;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget-object v6, v2, v4

    .line 5
    sget-object v7, Lo1/d;->e:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 6
    aget-object v7, v1, v4

    aput-object v7, v1, v5

    const/4 v7, 0x0

    .line 7
    aput-object v7, v1, v4

    .line 8
    aput-object v6, v2, v5

    .line 9
    aput-object v7, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v3, p0, Lo1/d;->a:Z

    .line 11
    iput v5, p0, Lo1/d;->d:I

    return-void
.end method

.method public declared-synchronized e(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lo1/d;->f(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/d;->b:[Ljava/lang/Object;

    iget v1, p0, Lo1/d;->d:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lo1/d;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lo1/d;->e:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(I)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lo1/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/d;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Lo1/d;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Comparable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Ljava/lang/Comparable;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/d;->b:[Ljava/lang/Object;

    iget v1, p0, Lo1/d;->d:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Lo1/d;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    .line 3
    iget v1, p0, Lo1/d;->d:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lo1/d;->c:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Lo1/d;->e:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 4
    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 5
    aput-object p2, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lo1/d;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo1/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lo1/d;->d()V

    .line 9
    iget-object v0, p0, Lo1/d;->b:[Ljava/lang/Object;

    iget v1, p0, Lo1/d;->d:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result v0

    not-int v0, v0

    .line 10
    :cond_2
    iget v1, p0, Lo1/d;->d:I

    iget-object v2, p0, Lo1/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 11
    invoke-static {v1}, Lo1/b;->b(I)I

    move-result v1

    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lo1/d;->b:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v3, p0, Lo1/d;->c:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput-object v2, p0, Lo1/d;->b:[Ljava/lang/Object;

    .line 17
    iput-object v1, p0, Lo1/d;->c:[Ljava/lang/Object;

    .line 18
    :cond_3
    iget v1, p0, Lo1/d;->d:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, p0, Lo1/d;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v1, p0, Lo1/d;->c:[Ljava/lang/Object;

    iget v2, p0, Lo1/d;->d:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :cond_4
    iget-object v1, p0, Lo1/d;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 22
    iget-object p1, p0, Lo1/d;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 23
    iget p1, p0, Lo1/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo1/d;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lo1/d;->c(Ljava/lang/Comparable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lo1/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/d;->d()V

    .line 3
    :cond_0
    iget v0, p0, Lo1/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lo1/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/d;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Lo1/d;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lo1/d;->j()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lo1/d;->d:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lo1/d;->d:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lo1/d;->g(I)Ljava/lang/Comparable;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v1}, Lo1/d;->k(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
