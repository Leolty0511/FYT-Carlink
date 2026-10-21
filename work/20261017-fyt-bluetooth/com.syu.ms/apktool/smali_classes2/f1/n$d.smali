.class public Lf1/n$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:[I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lf1/n$e;


# direct methods
.method public constructor <init>([IIIIII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf1/n$d;->a:[I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lf1/n$d;->b:I

    .line 4
    iput v1, p0, Lf1/n$d;->c:I

    .line 5
    iput v1, p0, Lf1/n$d;->d:I

    .line 6
    iput v1, p0, Lf1/n$d;->e:I

    .line 7
    iput v1, p0, Lf1/n$d;->f:I

    .line 8
    iput-object v0, p0, Lf1/n$d;->g:Lf1/n$e;

    .line 9
    new-instance v0, Lf1/n$e;

    const/4 v1, 0x4

    aget v1, p1, v1

    const/16 v2, 0x9

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lf1/n$e;-><init>(III)V

    iput-object v0, p0, Lf1/n$d;->g:Lf1/n$e;

    .line 10
    iput-object p1, p0, Lf1/n$d;->a:[I

    .line 11
    iput p2, p0, Lf1/n$d;->b:I

    .line 12
    iput p3, p0, Lf1/n$d;->c:I

    .line 13
    iput p4, p0, Lf1/n$d;->d:I

    .line 14
    iput p5, p0, Lf1/n$d;->e:I

    .line 15
    iput p6, p0, Lf1/n$d;->f:I

    return-void
.end method


# virtual methods
.method public a(III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/n$d;->a:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    const/16 p1, 0x9

    aget p1, v0, p1

    if-ne p1, p2, :cond_0

    aget p1, v0, v2

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public b(Lf1/n$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/n$d;->g:Lf1/n$e;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lf1/n$d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf1/n$d;

    .line 3
    iget-object p1, p1, Lf1/n$d;->a:[I

    iget-object v0, p0, Lf1/n$d;->a:[I

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
    iget-object v0, p0, Lf1/n$d;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lf1/n$d;->g:Lf1/n$e;

    invoke-virtual {v1}, Lf1/n$e;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
