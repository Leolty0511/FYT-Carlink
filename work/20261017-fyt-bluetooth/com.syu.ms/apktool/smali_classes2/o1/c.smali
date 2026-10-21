.class public Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Z

.field public c:[Ljava/lang/Object;

.field public d:[I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0, p1}, Lo1/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo1/c;->b:Z

    .line 4
    iput p2, p0, Lo1/c;->a:I

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lo1/g;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lo1/c;->c:[Ljava/lang/Object;

    .line 6
    sget-object p1, Lo1/g;->a:[I

    iput-object p1, p0, Lo1/c;->d:[I

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lo1/b;->b(I)I

    move-result p1

    .line 8
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lo1/c;->c:[Ljava/lang/Object;

    .line 9
    new-array p1, p1, [I

    iput-object p1, p0, Lo1/c;->d:[I

    .line 10
    :goto_0
    iput v0, p0, Lo1/c;->e:I

    return-void
.end method


# virtual methods
.method public a()Lo1/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo1/c<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lo1/c;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lo1/c;->c:[Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lo1/c;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lo1/c;->d:[I
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public b(Ljava/lang/Comparable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/c;->c:[Ljava/lang/Object;

    iget v1, p0, Lo1/c;->e:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lo1/c;->d:[I

    aget v1, v0, p1

    iget v2, p0, Lo1/c;->a:I

    if-eq v1, v2, :cond_0

    .line 3
    aput v2, v0, p1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo1/c;->b:Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget v0, p0, Lo1/c;->e:I

    .line 2
    iget-object v1, p0, Lo1/c;->c:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lo1/c;->d:[I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget v6, v2, v4

    .line 5
    iget v7, p0, Lo1/c;->a:I

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 6
    aget-object v7, v1, v4

    aput-object v7, v1, v5

    const/4 v7, 0x0

    .line 7
    aput-object v7, v1, v4

    .line 8
    aput v6, v2, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v3, p0, Lo1/c;->b:Z

    .line 10
    iput v5, p0, Lo1/c;->e:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo1/c;->a()Lo1/c;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Comparable;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/c;->c:[Ljava/lang/Object;

    iget v1, p0, Lo1/c;->e:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lo1/c;->d:[I

    aget v1, v0, p1

    iget v2, p0, Lo1/c;->a:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public e(I)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lo1/c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/c;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lo1/c;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public f(Ljava/lang/Comparable;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/c;->c:[Ljava/lang/Object;

    iget v1, p0, Lo1/c;->e:I

    invoke-static {v0, v1, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 2
    iget-object p1, p0, Lo1/c;->d:[I

    aget v3, p1, v0

    if-eq v3, p2, :cond_0

    .line 3
    aput p2, p1, v0

    return v1

    :cond_0
    return v2

    :cond_1
    not-int v0, v0

    .line 4
    iget v3, p0, Lo1/c;->e:I

    const/4 v4, 0x2

    if-ge v0, v3, :cond_2

    iget-object v5, p0, Lo1/c;->d:[I

    aget v6, v5, v0

    iget v7, p0, Lo1/c;->a:I

    if-ne v6, v7, :cond_2

    .line 5
    iget-object v1, p0, Lo1/c;->c:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 6
    aput p2, v5, v0

    return v4

    .line 7
    :cond_2
    iget-boolean v5, p0, Lo1/c;->b:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lo1/c;->c:[Ljava/lang/Object;

    array-length v5, v5

    if-lt v3, v5, :cond_3

    .line 8
    invoke-virtual {p0}, Lo1/c;->c()V

    .line 9
    iget-object v0, p0, Lo1/c;->c:[Ljava/lang/Object;

    iget v3, p0, Lo1/c;->e:I

    invoke-static {v0, v3, p1}, Lo1/g;->b([Ljava/lang/Object;ILjava/lang/Comparable;)I

    move-result v0

    not-int v0, v0

    .line 10
    :cond_3
    iget v3, p0, Lo1/c;->e:I

    iget-object v5, p0, Lo1/c;->c:[Ljava/lang/Object;

    array-length v5, v5

    if-lt v3, v5, :cond_4

    add-int/2addr v3, v1

    .line 11
    invoke-static {v3}, Lo1/b;->b(I)I

    move-result v3

    .line 12
    new-array v5, v3, [Ljava/lang/Object;

    .line 13
    new-array v3, v3, [I

    .line 14
    iget-object v6, p0, Lo1/c;->c:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v6, p0, Lo1/c;->d:[I

    array-length v7, v6

    invoke-static {v6, v2, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput-object v5, p0, Lo1/c;->c:[Ljava/lang/Object;

    .line 17
    iput-object v3, p0, Lo1/c;->d:[I

    .line 18
    :cond_4
    iget v2, p0, Lo1/c;->e:I

    sub-int v3, v2, v0

    if-eqz v3, :cond_5

    .line 19
    iget-object v3, p0, Lo1/c;->c:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v2, v0

    invoke-static {v3, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v2, p0, Lo1/c;->d:[I

    iget v3, p0, Lo1/c;->e:I

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :cond_5
    iget-object v2, p0, Lo1/c;->c:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 22
    iget-object p1, p0, Lo1/c;->d:[I

    aput p2, p1, v0

    .line 23
    iget p1, p0, Lo1/c;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lo1/c;->e:I

    return v4
.end method

.method public g(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lo1/c;->b(Ljava/lang/Comparable;)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo1/c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/c;->c()V

    .line 3
    :cond_0
    iget v0, p0, Lo1/c;->e:I

    return v0
.end method

.method public i(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo1/c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/c;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lo1/c;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo1/c;->h()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lo1/c;->e:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lo1/c;->e:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lo1/c;->e(I)Ljava/lang/Comparable;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v1}, Lo1/c;->i(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
