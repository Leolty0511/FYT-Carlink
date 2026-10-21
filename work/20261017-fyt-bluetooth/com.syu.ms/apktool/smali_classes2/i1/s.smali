.class public abstract Li1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Li1/e;",
        ">",
        "Ljava/lang/Object;",
        "Lo1/q;"
    }
.end annotation


# static fields
.field public static g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Li1/s<",
            "+",
            "Li1/e;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Li1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;

.field public final d:[I

.field public volatile e:I

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Li1/s<",
            "TP;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Li1/s;->g:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Li1/s;->d:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Li1/s;->e:I

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Li1/s;->f:Landroid/util/SparseArray;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/s;->b:Ljava/lang/Integer;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Li1/s;->c:Ljava/lang/Integer;

    .line 7
    sget-object p2, Li1/s;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized g(I)Li1/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li1/s<",
            "+",
            "Li1/e;",
            ">;"
        }
    .end annotation

    const-class v0, Li1/s;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Li1/s;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Li1/s;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static h()Li1/g;
    .locals 2

    const/16 v0, 0x13

    .line 1
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    .line 2
    instance-of v1, v0, Li1/g;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Li1/g;

    return-object v0

    :cond_0
    const/16 v0, 0x15

    .line 4
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    .line 5
    instance-of v1, v0, Li1/g;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Li1/g;

    return-object v0

    :cond_1
    const/16 v0, 0x17

    .line 7
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    .line 8
    instance-of v1, v0, Li1/g;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Li1/g;

    return-object v0

    :cond_2
    const/16 v0, 0x19

    .line 10
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    .line 11
    instance-of v1, v0, Li1/g;

    if-eqz v1, :cond_3

    .line 12
    check-cast v0, Li1/g;

    return-object v0

    :cond_3
    const/16 v0, 0x1b

    .line 13
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    .line 14
    instance-of v1, v0, Li1/g;

    if-eqz v1, :cond_4

    .line 15
    check-cast v0, Li1/g;

    return-object v0

    :cond_4
    const/16 v0, 0x1d

    .line 16
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    .line 17
    instance-of v1, v0, Li1/g;

    if-eqz v1, :cond_5

    .line 18
    check-cast v0, Li1/g;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized m(I[I[F[Ljava/lang/String;)Z
    .locals 4

    const-class v0, Li1/s;

    monitor-enter v0

    :try_start_0
    const-string v1, "Tpms"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandle  cmdCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  ints: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13

    .line 2
    invoke-static {v1}, Li1/s;->g(I)Li1/s;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p0, p1, p2, p3}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    const/16 v1, 0x15

    .line 4
    invoke-static {v1}, Li1/s;->g(I)Li1/s;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p0, p1, p2, p3}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    const/16 v1, 0x17

    .line 6
    invoke-static {v1}, Li1/s;->g(I)Li1/s;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1, p0, p1, p2, p3}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    move v1, v2

    .line 8
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized n(Ly/b;II)Z
    .locals 4

    const-class v0, Li1/s;

    monitor-enter v0

    const/16 v1, 0x13

    .line 1
    :try_start_0
    invoke-static {v1}, Li1/s;->g(I)Li1/s;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p0, p1, p2}, Li1/s;->p(Ly/b;II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    const/16 v1, 0x15

    .line 3
    invoke-static {v1}, Li1/s;->g(I)Li1/s;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0, p1, p2}, Li1/s;->p(Ly/b;II)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    const/16 v1, 0x17

    .line 5
    invoke-static {v1}, Li1/s;->g(I)Li1/s;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1, p0, p1, p2}, Li1/s;->p(Ly/b;II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    move v1, v2

    .line 7
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b([B)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Li1/s;->o([B)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    array-length v2, p1

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Li1/s;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 4
    invoke-static {p1}, Lo1/s0;->e([B)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/s;->l([I)V

    return-void

    .line 5
    :cond_1
    iget-object v3, p0, Li1/s;->a:Li1/e;

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_9

    .line 6
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_9

    aget-byte v4, p1, v3

    .line 7
    iget-object v5, p0, Li1/s;->a:Li1/e;

    invoke-virtual {v5}, Li1/e;->d()Z

    move-result v5

    if-nez v5, :cond_4

    .line 8
    array-length v4, p1

    .line 9
    new-array v5, v4, [I

    move v6, v1

    :goto_2
    if-ge v6, v4, :cond_3

    .line 10
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0, v5}, Li1/s;->l([I)V

    goto/16 :goto_4

    .line 12
    :cond_4
    iget-object v5, p0, Li1/s;->d:[I

    iget v6, p0, Li1/s;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Li1/s;->e:I

    aput v4, v5, v6

    .line 13
    iget-object v5, p0, Li1/s;->a:Li1/e;

    invoke-virtual {v5, v4}, Li1/e;->g(I)I

    move-result v4

    if-ne v4, v0, :cond_6

    .line 14
    iput v1, p0, Li1/s;->e:I

    .line 15
    iget-object v4, p0, Li1/s;->a:Li1/e;

    invoke-virtual {v4}, Li1/e;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    iget-object v4, p0, Li1/s;->a:Li1/e;

    iget-object v4, v4, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    new-array v4, v4, [I

    .line 17
    iget-object v5, p0, Li1/s;->a:Li1/e;

    iget-object v5, v5, Li1/e;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 18
    iget-object v5, p0, Li1/s;->a:Li1/e;

    iget-object v6, v5, Li1/e;->c:[I

    iget-object v5, v5, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-virtual {p0, v4}, Li1/s;->l([I)V

    goto :goto_3

    .line 20
    :cond_5
    iget-object v4, p0, Li1/s;->a:Li1/e;

    iget-object v5, v4, Li1/e;->c:[I

    iget-object v4, v4, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v1, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    invoke-virtual {p0, v4}, Li1/s;->l([I)V

    .line 21
    :goto_3
    iget-object v4, p0, Li1/s;->a:Li1/e;

    invoke-virtual {v4}, Li1/e;->b()V

    goto :goto_4

    :cond_6
    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 22
    iget v4, p0, Li1/s;->e:I

    .line 23
    iput v1, p0, Li1/s;->e:I

    if-le v4, v0, :cond_8

    .line 24
    iget-object v5, p0, Li1/s;->d:[I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v5, v0, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  recycles : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-static {v4, v1, v6}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  bufferOffset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Li1/s;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Device"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v4}, Lo1/s0;->r([I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Li1/s;->b([B)V

    goto :goto_4

    :cond_7
    const/4 v5, -0x2

    if-ne v4, v5, :cond_8

    .line 27
    iput v1, p0, Li1/s;->e:I

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public i(I)Li1/s$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li1/s<",
            "TP;>.a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li1/s;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li1/s$a;

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Li1/s;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance p1, Li1/s$a;

    iget-object v1, p0, Li1/s;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p1, p0, v1}, Li1/s$a;-><init>(Li1/s;I)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract l([I)V
.end method

.method public o([B)V
    .locals 0

    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Li1/s;->i(I)Li1/s$a;

    move-result-object p3

    .line 2
    iget-object v3, p3, Li1/s$a;->b:[I

    iget-object v4, p3, Li1/s$a;->c:[F

    iget-object v5, p3, Li1/s$a;->d:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Li1/s;->u(Ly/b;I[I[F[Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs q(ILjava/lang/String;[I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p3, p2, v0}, Li1/s;->s(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public varargs r(I[I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Li1/s;->i(I)Li1/s$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Li1/s$a;->b([I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, v0, Li1/s$a;->b:[I

    iget-object v1, v0, Li1/s$a;->c:[F

    iget-object v0, v0, Li1/s$a;->d:[Ljava/lang/String;

    invoke-static {p1, p2, v1, v0}, Lc1/b;->j(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s(I[I[F[Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Li1/s;->i(I)Li1/s$a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  ints:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  flts:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  strs:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Device"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0, p2}, Li1/s$a;->b([I)Z

    move-result p2

    .line 4
    invoke-virtual {v0, p3}, Li1/s$a;->a([F)Z

    move-result p3

    .line 5
    invoke-virtual {v0, p4}, Li1/s$a;->c([Ljava/lang/String;)Z

    move-result p4

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status  ints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Li1/s$a;->b:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Li1/s$a;->c:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Li1/s$a;->d:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 7
    :cond_0
    iget-object p2, v0, Li1/s$a;->b:[I

    iget-object p3, v0, Li1/s$a;->c:[F

    iget-object p4, v0, Li1/s$a;->d:[Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lc1/b;->j(I[I[F[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs t(Ly/b;I[I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Li1/s;->u(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public u(Ly/b;I[I[F[Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Li1/s;->i(I)Li1/s$a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  ints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  strs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0, p3}, Li1/s$a;->b([I)Z

    .line 4
    invoke-virtual {v0, p4}, Li1/s$a;->a([F)Z

    .line 5
    invoke-virtual {v0, p5}, Li1/s$a;->c([Ljava/lang/String;)Z

    .line 6
    invoke-static {}, Lc1/c;->O2()Lc1/c;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 7
    invoke-virtual/range {v3 .. v8}, Lc1/c;->S2(Ly/b;I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
