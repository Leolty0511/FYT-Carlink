.class Landroid/media/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x11

    .line 5
    .line 6
    new-array v0, v0, [Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 9
    .line 10
    const/16 v0, 0x22

    .line 11
    .line 12
    new-array v0, v0, [C

    .line 13
    .line 14
    const/16 v1, 0xa0

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$100(Landroid/media/Cea608CCParser$CCMemory;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/Cea608CCParser$CCMemory;->moveBaselineTo(II)V

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    aput-object v1, v0, p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 17
    .line 18
    aget-object p1, v0, p1

    .line 19
    .line 20
    return-object p1
.end method

.method private moveBaselineTo(II)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ge p1, p2, :cond_1

    .line 7
    .line 8
    move v1, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    move v1, p2

    .line 11
    :goto_0
    if-ge v0, v1, :cond_2

    .line 12
    .line 13
    move v1, v0

    .line 14
    :cond_2
    const/4 v2, 0x0

    .line 15
    if-ge p1, v0, :cond_3

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_1
    if-ltz v1, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 22
    .line 23
    sub-int v3, p1, v1

    .line 24
    .line 25
    iget v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 26
    .line 27
    sub-int/2addr v4, v1

    .line 28
    aget-object v4, v0, v4

    .line 29
    .line 30
    aput-object v4, v0, v3

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    move v0, v2

    .line 36
    :goto_2
    if-ge v0, v1, :cond_4

    .line 37
    .line 38
    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 39
    .line 40
    sub-int v4, p1, v0

    .line 41
    .line 42
    iget v5, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 43
    .line 44
    sub-int/2addr v5, v0

    .line 45
    aget-object v5, v3, v5

    .line 46
    .line 47
    aput-object v5, v3, v4

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    :goto_3
    sub-int v0, p1, p2

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-gt v2, v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 58
    .line 59
    aput-object v1, v0, v2

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iget-object p2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 67
    .line 68
    array-length v0, p2

    .line 69
    if-ge p1, v0, :cond_6

    .line 70
    .line 71
    aput-object v1, p2, p1

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    return-void
.end method

.method private moveCursorByCol(I)V
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorTo(II)V
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 9
    .line 10
    const/16 p1, 0x20

    .line 11
    .line 12
    invoke-static {p2, v1, p1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 17
    .line 18
    return-void
.end method

.method private moveCursorToRow(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    return-void
.end method


# virtual methods
.method public bs()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 6
    .line 7
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 14
    .line 15
    const/16 v2, 0xa0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 21
    .line 22
    const/16 v1, 0x1f

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 27
    .line 28
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 29
    .line 30
    aget-object v0, v0, v1

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public cr()V
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    return-void
.end method

.method public der()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 2
    .line 3
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 15
    .line 16
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 17
    .line 18
    aget-object v1, v1, v2

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCLineBuilder;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0xa0

    .line 25
    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 29
    .line 30
    :goto_1
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 31
    .line 32
    iget v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 33
    .line 34
    aget-object v1, v1, v3

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCLineBuilder;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 43
    .line 44
    aget-object v1, v1, v0

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 57
    .line 58
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public erase()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v2, v1, v0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0xf

    .line 14
    .line 15
    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 19
    .line 20
    return-void
.end method

.method public getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    :goto_0
    if-gt v2, v1, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 12
    .line 13
    aget-object v3, v3, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-array p1, v1, [Landroid/text/SpannableStringBuilder;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, [Landroid/text/SpannableStringBuilder;

    .line 36
    .line 37
    return-object p1
.end method

.method public rollUp(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 3
    .line 4
    sub-int v2, v1, p1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-gt v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 10
    .line 11
    aput-object v3, v1, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sub-int/2addr v1, p1

    .line 17
    const/4 p1, 0x1

    .line 18
    add-int/2addr v1, p1

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    move v1, p1

    .line 22
    :cond_1
    :goto_1
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 23
    .line 24
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    aget-object v4, v0, v2

    .line 31
    .line 32
    aput-object v4, v0, v1

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 37
    .line 38
    array-length v2, v1

    .line 39
    if-ge v0, v2, :cond_3

    .line 40
    .line 41
    aput-object v3, v1, v0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 47
    .line 48
    return-void
.end method

.method public tab(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method public writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writePAC(Landroid/media/Cea608CCParser$PAC;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->isIndentPAC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getCol()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 28
    .line 29
    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroid/media/Cea608CCParser$PAC;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public writeText(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
