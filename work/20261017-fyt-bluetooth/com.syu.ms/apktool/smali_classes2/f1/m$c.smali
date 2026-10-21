.class public Lf1/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:[I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lf1/m$d;


# direct methods
.method public constructor <init>([IIIIII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf1/m$c;->a:[I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lf1/m$c;->b:I

    .line 4
    iput v1, p0, Lf1/m$c;->c:I

    .line 5
    iput v1, p0, Lf1/m$c;->d:I

    .line 6
    iput v1, p0, Lf1/m$c;->e:I

    .line 7
    iput v1, p0, Lf1/m$c;->f:I

    .line 8
    iput-object v0, p0, Lf1/m$c;->g:Lf1/m$d;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lf1/m$d;

    const/4 v1, 0x4

    aget v1, p1, v1

    const/16 v2, 0x9

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lf1/m$d;-><init>(III)V

    iput-object v0, p0, Lf1/m$c;->g:Lf1/m$d;

    .line 10
    :cond_0
    iput-object p1, p0, Lf1/m$c;->a:[I

    .line 11
    iput p2, p0, Lf1/m$c;->b:I

    .line 12
    iput p3, p0, Lf1/m$c;->c:I

    .line 13
    iput p4, p0, Lf1/m$c;->d:I

    .line 14
    iput p5, p0, Lf1/m$c;->e:I

    .line 15
    iput p6, p0, Lf1/m$c;->f:I

    return-void
.end method


# virtual methods
.method public a(III)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/m$c;->g:Lf1/m$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lf1/m$d;->a(III)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lf1/m$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/m$c;->g:Lf1/m$d;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lf1/m$c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf1/m$c;

    .line 3
    iget-object p1, p1, Lf1/m$c;->a:[I

    iget-object v0, p0, Lf1/m$c;->a:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/m$c;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lf1/m$c;->g:Lf1/m$d;

    invoke-virtual {v1}, Lf1/m$d;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lf1/m$c;->b:I

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Lf1/m$c;->c:I

    mul-int/lit8 v1, v1, 0x1b

    add-int/2addr v0, v1

    iget v1, p0, Lf1/m$c;->d:I

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    iget v1, p0, Lf1/m$c;->e:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget v1, p0, Lf1/m$c;->f:I

    mul-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixTiming: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/m$c;->g:Lf1/m$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value8312 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget v2, p0, Lf1/m$c;->b:I

    const-string v3, "%02X"

    const-string v4, "%d"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lf1/m$c;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value8313 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v6, p0, Lf1/m$c;->c:I

    if-eq v6, v5, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lf1/m$c;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value7033 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v6, p0, Lf1/m$c;->d:I

    if-eq v6, v5, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lf1/m$c;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value7034 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v6, p0, Lf1/m$c;->e:I

    if-eq v6, v5, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lf1/m$c;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value8111 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v6, p0, Lf1/m$c;->f:I

    if-eq v6, v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lf1/m$c;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
