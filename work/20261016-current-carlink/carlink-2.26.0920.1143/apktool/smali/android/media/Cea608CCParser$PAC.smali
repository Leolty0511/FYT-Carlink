.class Landroid/media/Cea608CCParser$PAC;
.super Landroid/media/Cea608CCParser$StyleCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PAC"
.end annotation


# instance fields
.field final mCol:I

.field final mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    .line 5
    .line 6
    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    .line 7
    .line 8
    return-void
.end method

.method public static fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    and-int/2addr p0, v1

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x20

    .line 13
    .line 14
    shr-int/lit8 v0, v0, 0x5

    .line 15
    .line 16
    add-int/2addr p0, v0

    .line 17
    and-int/lit8 v0, p1, 0x1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    :goto_0
    and-int/lit8 v3, p1, 0x10

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    shr-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    and-int/2addr p1, v1

    .line 32
    new-instance v1, Landroid/media/Cea608CCParser$PAC;

    .line 33
    .line 34
    mul-int/lit8 p1, p1, 0x4

    .line 35
    .line 36
    invoke-direct {v1, p0, p1, v0, v2}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    and-int/2addr p1, v1

    .line 43
    if-ne p1, v1, :cond_2

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v2, p1

    .line 49
    :goto_1
    new-instance p1, Landroid/media/Cea608CCParser$PAC;

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-direct {p1, p0, v1, v0, v2}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method public getCol()I
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    return v0
.end method

.method public isIndentPAC()Z
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const-string/jumbo v1, "{%d, %d}, %s"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
