.class Landroid/media/Cea608CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

.field private final mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-array p1, p1, [Landroid/media/Cea608CCParser$StyleCode;

    .line 16
    .line 17
    iput-object p1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    new-array p1, p1, [Landroid/media/Cea608CCParser$StyleCode;

    .line 24
    .line 25
    iput-object p1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isItalics()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isUnderline()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    new-instance p2, Landroid/text/style/UnderlineSpan;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .locals 10

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v1

    .line 12
    move v5, v4

    .line 13
    move-object v6, v3

    .line 14
    :goto_0
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-ge v2, v7, :cond_a

    .line 21
    .line 22
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 23
    .line 24
    aget-object v7, v7, v2

    .line 25
    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 30
    .line 31
    aget-object v7, v7, v2

    .line 32
    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    if-ltz v4, :cond_2

    .line 36
    .line 37
    if-gez v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v7, v3

    .line 41
    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    .line 42
    .line 43
    if-ltz v4, :cond_3

    .line 44
    .line 45
    if-ltz v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v0, v7, v4, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    .line 48
    .line 49
    .line 50
    :cond_3
    move v4, v2

    .line 51
    move-object v6, v7

    .line 52
    :cond_4
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/16 v8, 0xa0

    .line 59
    .line 60
    if-eq v7, v8, :cond_5

    .line 61
    .line 62
    if-gez v5, :cond_9

    .line 63
    .line 64
    move v5, v2

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    if-ltz v5, :cond_9

    .line 67
    .line 68
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/16 v8, 0x20

    .line 75
    .line 76
    if-ne v7, v8, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 80
    .line 81
    :goto_2
    iget-object v7, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 82
    .line 83
    add-int/lit8 v9, v2, -0x1

    .line 84
    .line 85
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-ne v7, v8, :cond_7

    .line 90
    .line 91
    move v7, v2

    .line 92
    goto :goto_3

    .line 93
    :cond_7
    add-int/lit8 v7, v2, 0x1

    .line 94
    .line 95
    :goto_3
    new-instance v8, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 96
    .line 97
    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 98
    .line 99
    invoke-direct {v8, v9}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    .line 100
    .line 101
    .line 102
    const/16 v9, 0x21

    .line 103
    .line 104
    invoke-virtual {v0, v8, v5, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    .line 106
    .line 107
    if-ltz v4, :cond_8

    .line 108
    .line 109
    invoke-virtual {p0, v0, v6, v4, v7}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    .line 110
    .line 111
    .line 112
    :cond_8
    move v5, v1

    .line 113
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_a
    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public setCharAt(IC)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aput-object v0, p2, p1

    .line 10
    .line 11
    return-void
.end method

.method public setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 9
    .line 10
    aput-object p2, v0, p1

    .line 11
    .line 12
    return-void
.end method

.method public setPACAt(ILandroid/media/Cea608CCParser$PAC;)V
    .locals 1

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    return-void
.end method
