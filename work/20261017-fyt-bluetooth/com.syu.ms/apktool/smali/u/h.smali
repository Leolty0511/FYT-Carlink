.class public Lu/h;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Ljava/lang/StringBuilder;

.field public d:[C

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lu/h;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lu/h;->c:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lu/h;->f:Z

    .line 5
    iput-object p2, p0, Lu/h;->a:Ljava/lang/String;

    .line 6
    iput p3, p0, Lu/h;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/h;->c:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu/h;->d:[C

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/h;->c:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu/h;->d:[C

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/h;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu/h;->f:Z

    .line 3
    iget-object v1, p0, Lu/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lu/h;->d:[C

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lu/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lu/h;->d:[C

    .line 6
    :cond_0
    iget-object v1, p0, Lu/h;->d:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public write([CII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lu/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p3, p2

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-char p2, p1, p2

    .line 3
    iget v3, p0, Lu/h;->e:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lu/h;->e:I

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_0

    .line 4
    invoke-virtual {p0}, Lu/h;->c()V

    sub-int p2, v2, v1

    .line 5
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 6
    iput-boolean v4, p0, Lu/h;->f:Z

    .line 7
    iput v3, p0, Lu/h;->e:I

    move v1, v2

    .line 8
    :cond_0
    iget p2, p0, Lu/h;->b:I

    if-lez p2, :cond_2

    iget v6, p0, Lu/h;->e:I

    sub-int/2addr p2, v0

    if-lt v6, p2, :cond_2

    .line 9
    iget-boolean p2, p0, Lu/h;->f:Z

    if-nez p2, :cond_1

    .line 10
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 11
    iput-boolean v4, p0, Lu/h;->f:Z

    sub-int p2, v2, v1

    .line 12
    iput p2, p0, Lu/h;->e:I

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lu/h;->c()V

    sub-int p2, v2, v1

    .line 14
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 15
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 16
    iput-boolean v4, p0, Lu/h;->f:Z

    .line 17
    iput v3, p0, Lu/h;->e:I

    move v1, v2

    :cond_2
    :goto_1
    move p2, v2

    goto :goto_0

    :cond_3
    if-eq v1, p2, :cond_4

    .line 18
    invoke-virtual {p0}, Lu/h;->c()V

    sub-int/2addr p2, v1

    .line 19
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_4
    return-void
.end method
