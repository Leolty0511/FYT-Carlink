.class public Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lq1/b;->a:I

    .line 3
    iput v0, p0, Lq1/b;->b:I

    .line 4
    iput v0, p0, Lq1/b;->c:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lq1/b;->d:I

    const/4 v1, 0x3

    .line 6
    iput v1, p0, Lq1/b;->e:I

    .line 7
    iput-boolean v0, p0, Lq1/b;->f:Z

    .line 8
    iput p1, p0, Lq1/b;->c:I

    iput p1, p0, Lq1/b;->b:I

    .line 9
    iput p2, p0, Lq1/b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lq1/b;->a:I

    .line 2
    iget v1, p0, Lq1/b;->b:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lq1/b;->f:Z

    .line 3
    iput v0, p0, Lq1/b;->b:I

    .line 4
    iput v2, p0, Lq1/b;->d:I

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lq1/b;->b:I

    iput v0, p0, Lq1/b;->a:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq1/b;->f:Z

    .line 3
    iput p1, p0, Lq1/b;->b:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lq1/b;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lq1/b;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lq1/b;->b:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq1/b;->f:Z

    return v0
.end method

.method public f(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lq1/b;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(I)I
    .locals 5

    .line 1
    iget v0, p0, Lq1/b;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v3, p0, Lq1/b;->c:I

    if-ne p1, v3, :cond_1

    .line 3
    iget v3, p0, Lq1/b;->d:I

    add-int/2addr v3, v1

    iput v3, p0, Lq1/b;->d:I

    .line 4
    iget v4, p0, Lq1/b;->e:I

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput v2, p0, Lq1/b;->d:I

    goto :goto_1

    .line 6
    :cond_1
    iput v1, p0, Lq1/b;->d:I

    .line 7
    iput p1, p0, Lq1/b;->c:I

    :goto_0
    move p1, v0

    goto :goto_1

    .line 8
    :cond_2
    iput v2, p0, Lq1/b;->d:I

    :goto_1
    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 9
    :goto_2
    iput-boolean v1, p0, Lq1/b;->f:Z

    if-eqz v1, :cond_4

    .line 10
    iput v0, p0, Lq1/b;->a:I

    .line 11
    iput p1, p0, Lq1/b;->b:I

    :cond_4
    return p1
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget v0, p0, Lq1/b;->b:I

    iput v0, p0, Lq1/b;->a:I

    .line 2
    iput p1, p0, Lq1/b;->c:I

    iput p1, p0, Lq1/b;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marker: [ mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tmpValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " passingGrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
