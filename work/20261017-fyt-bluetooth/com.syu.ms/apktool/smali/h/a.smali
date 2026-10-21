.class public Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh/a;->a:I

    const/high16 v0, 0x10000

    .line 3
    iput v0, p0, Lh/a;->b:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lh/a;->d:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lh/a;->e:Ljava/lang/String;

    .line 6
    iput p1, p0, Lh/a;->c:I

    .line 7
    iput p2, p0, Lh/a;->d:I

    return-void
.end method

.method public constructor <init>(Lh/a;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lh/a;->a:I

    const/high16 v0, 0x10000

    .line 10
    iput v0, p0, Lh/a;->b:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lh/a;->d:I

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lh/a;->e:Ljava/lang/String;

    .line 13
    iget v0, p1, Lh/a;->b:I

    iput v0, p0, Lh/a;->b:I

    .line 14
    iget v0, p1, Lh/a;->a:I

    iput v0, p0, Lh/a;->a:I

    .line 15
    iget v0, p1, Lh/a;->c:I

    iput v0, p0, Lh/a;->c:I

    .line 16
    iget v0, p1, Lh/a;->d:I

    iput v0, p0, Lh/a;->d:I

    .line 17
    iget-object p1, p1, Lh/a;->e:Ljava/lang/String;

    iput-object p1, p0, Lh/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lh/a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lh/a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lh/a;

    .line 3
    iget v0, p0, Lh/a;->b:I

    iget v1, p1, Lh/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lh/a;->c:I

    invoke-virtual {p1}, Lh/a;->a()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Station_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Station: { index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " freq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
