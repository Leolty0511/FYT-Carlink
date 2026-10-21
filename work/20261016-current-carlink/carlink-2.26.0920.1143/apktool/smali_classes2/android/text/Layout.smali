.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroid/text/style/ParagraphStyle;

    .line 8
    .line 9
    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/text/Layout$Directions;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v2, v1, [I

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 30
    .line 31
    new-instance v0, Landroid/text/Layout$Directions;

    .line 32
    .line 33
    new-array v1, v1, [I

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8

    .line 1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-ltz p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    .line 5
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 6
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 7
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 8
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 9
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 10
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 11
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 12
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 13
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout: "

    const-string p4, " < 0"

    .line 15
    invoke-static {p2, p3, p4}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    if-le v5, v4, :cond_0

    .line 22
    .line 23
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    add-int/lit8 v8, v5, -0x1

    .line 26
    .line 27
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/16 v8, 0xa

    .line 32
    .line 33
    if-ne v7, v8, :cond_0

    .line 34
    .line 35
    add-int/lit8 v5, v5, -0x1

    .line 36
    .line 37
    :cond_0
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_0
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    .line 40
    .line 41
    array-length v10, v9

    .line 42
    if-ge v8, v10, :cond_3

    .line 43
    .line 44
    aget v10, v9, v8

    .line 45
    .line 46
    add-int/2addr v10, v4

    .line 47
    add-int/lit8 v11, v8, 0x1

    .line 48
    .line 49
    aget v9, v9, v11

    .line 50
    .line 51
    const v11, 0x3ffffff

    .line 52
    .line 53
    .line 54
    and-int/2addr v9, v11

    .line 55
    add-int/2addr v9, v10

    .line 56
    if-le v9, v5, :cond_1

    .line 57
    .line 58
    move v9, v5

    .line 59
    :cond_1
    if-gt v2, v9, :cond_2

    .line 60
    .line 61
    if-lt v3, v10, :cond_2

    .line 62
    .line 63
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eq v10, v9, :cond_2

    .line 72
    .line 73
    invoke-direct {v0, v10, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    const/4 v11, 0x1

    .line 78
    invoke-direct {v0, v9, v11, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    move/from16 v9, p4

    .line 91
    .line 92
    int-to-float v13, v9

    .line 93
    move/from16 v10, p5

    .line 94
    .line 95
    int-to-float v15, v10

    .line 96
    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 97
    .line 98
    move-object/from16 v11, p6

    .line 99
    .line 100
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move/from16 v9, p4

    .line 105
    .line 106
    move/from16 v10, p5

    .line 107
    .line 108
    :goto_1
    add-int/lit8 v8, v8, 0x2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    move v2, v1

    .line 17
    :goto_0
    add-int v3, v1, v0

    .line 18
    .line 19
    if-ge v2, v3, :cond_3

    .line 20
    .line 21
    if-ne v2, v1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const v3, 0xfeff

    .line 29
    .line 30
    .line 31
    :goto_1
    add-int v4, v2, p3

    .line 32
    .line 33
    if-lt v4, p1, :cond_2

    .line 34
    .line 35
    if-ge v4, p2, :cond_2

    .line 36
    .line 37
    add-int/2addr v4, p5

    .line 38
    sub-int/2addr v4, p1

    .line 39
    aput-char v3, p4, v4

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1

    .line 2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result p0

    return p0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    const/16 v1, 0xa

    .line 3
    invoke-static {p0, v1, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p2

    .line 4
    :cond_0
    invoke-static {p3, p0, p1, v1, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result p1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move v0, p1

    :cond_1
    add-int/lit8 p1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result p0

    return p0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char p1, p1, v1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char p1, p1, v1

    :goto_0
    return p1
.end method

.method private getHorizontal(IZ)F
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p1

    :goto_0
    return p1
.end method

.method private getHorizontal(IZIZ)F
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    .line 4
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 5
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 6
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 7
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 8
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    .line 9
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 10
    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v11, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 11
    array-length v3, v2

    if-lez v3, :cond_0

    .line 12
    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_0

    :cond_0
    move-object v10, v12

    .line 13
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    .line 14
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v13

    move v5, v11

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v11

    move/from16 v3, p2

    .line 15
    invoke-virtual {v13, v2, v3, v12}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    .line 16
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    .line 17
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    int-to-float v2, v3

    .line 18
    :cond_1
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 19
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 20
    invoke-direct {p0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    return v1
.end method

.method private getHorizontal(IZZ)F
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result p1

    return p1
.end method

.method private getJustifyWidth(I)F
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 10
    .line 11
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz v4, :cond_9

    .line 16
    .line 17
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 18
    .line 19
    check-cast v4, Landroid/text/Spanned;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_1

    .line 26
    .line 27
    iget-object v8, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 28
    .line 29
    add-int/lit8 v9, v7, -0x1

    .line 30
    .line 31
    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    const/16 v9, 0xa

    .line 36
    .line 37
    if-ne v8, v9, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v8, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    move v8, v5

    .line 43
    :goto_1
    if-eqz v8, :cond_3

    .line 44
    .line 45
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-class v9, Landroid/text/style/ParagraphStyle;

    .line 52
    .line 53
    invoke-interface {v4, v7, v3, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v4, v7, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 62
    .line 63
    array-length v7, v3

    .line 64
    sub-int/2addr v7, v5

    .line 65
    :goto_2
    if-ltz v7, :cond_3

    .line 66
    .line 67
    aget-object v9, v3, v7

    .line 68
    .line 69
    instance-of v10, v9, Landroid/text/style/AlignmentSpan;

    .line 70
    .line 71
    if-eqz v10, :cond_2

    .line 72
    .line 73
    check-cast v9, Landroid/text/style/AlignmentSpan;

    .line 74
    .line 75
    invoke-interface {v9}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    :goto_3
    array-length v7, v3

    .line 84
    move v9, v6

    .line 85
    :goto_4
    if-ge v9, v7, :cond_5

    .line 86
    .line 87
    aget-object v10, v3, v9

    .line 88
    .line 89
    instance-of v11, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 90
    .line 91
    if-eqz v11, :cond_4

    .line 92
    .line 93
    check-cast v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 94
    .line 95
    invoke-interface {v10}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    aget-object v11, v3, v9

    .line 100
    .line 101
    invoke-interface {v4, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    add-int/2addr v11, v10

    .line 110
    if-ge p1, v11, :cond_4

    .line 111
    .line 112
    move v8, v5

    .line 113
    goto :goto_5

    .line 114
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    :goto_5
    move v4, v6

    .line 118
    :goto_6
    if-ge v6, v7, :cond_8

    .line 119
    .line 120
    aget-object v9, v3, v6

    .line 121
    .line 122
    instance-of v10, v9, Landroid/text/style/LeadingMarginSpan;

    .line 123
    .line 124
    if-eqz v10, :cond_7

    .line 125
    .line 126
    check-cast v9, Landroid/text/style/LeadingMarginSpan;

    .line 127
    .line 128
    const/4 v10, -0x1

    .line 129
    if-ne v2, v10, :cond_6

    .line 130
    .line 131
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    sub-int/2addr v1, v9

    .line 136
    goto :goto_7

    .line 137
    :cond_6
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    add-int/2addr v4, v9

    .line 142
    :cond_7
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_8
    move v6, v4

    .line 146
    :cond_9
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    new-instance v4, Landroid/text/Layout$TabStops;

    .line 153
    .line 154
    const/16 v7, 0x14

    .line 155
    .line 156
    invoke-direct {v4, v7, v3}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 160
    .line 161
    if-ne v0, v3, :cond_c

    .line 162
    .line 163
    if-ne v2, v5, :cond_b

    .line 164
    .line 165
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_c
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 172
    .line 173
    if-ne v0, v4, :cond_e

    .line 174
    .line 175
    if-ne v2, v5, :cond_d

    .line 176
    .line 177
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 181
    .line 182
    :cond_e
    :goto_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 183
    .line 184
    if-ne v0, v4, :cond_10

    .line 185
    .line 186
    if-ne v2, v5, :cond_f

    .line 187
    .line 188
    invoke-virtual {p0, p1, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    goto :goto_a

    .line 193
    :cond_f
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 194
    .line 195
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    :goto_9
    neg-int p1, p1

    .line 200
    goto :goto_a

    .line 201
    :cond_10
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 202
    .line 203
    if-ne v0, v4, :cond_12

    .line 204
    .line 205
    if-ne v2, v5, :cond_11

    .line 206
    .line 207
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 208
    .line 209
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    goto :goto_9

    .line 214
    :cond_11
    invoke-virtual {p0, p1, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    goto :goto_a

    .line 219
    :cond_12
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 220
    .line 221
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    :goto_a
    sub-int/2addr v1, v6

    .line 226
    sub-int/2addr v1, p1

    .line 227
    int-to-float p1, v1

    .line 228
    return p1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 9

    .line 18
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p3

    :goto_0
    move v4, p3

    .line 20
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 21
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 22
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 23
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object p3

    .line 24
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    .line 25
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v0, p3

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 27
    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/text/TextLine;->justify(F)V

    :cond_1
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p3, p1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    .line 29
    iget-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    .line 30
    invoke-static {p3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p1
.end method

.method private getLineExtent(IZ)F
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p2

    :goto_0
    move v4, p2

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    const/4 p2, 0x0

    if-eqz v7, :cond_1

    .line 4
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 6
    array-length v1, v0

    if-lez v1, :cond_1

    .line 7
    new-instance v1, Landroid/text/Layout$TabStops;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p2

    .line 8
    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 10
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    .line 11
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    .line 12
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 13
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p1

    invoke-virtual {v9, p1}, Landroid/text/TextLine;->justify(F)V

    .line 15
    :cond_3
    invoke-virtual {v9, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    .line 16
    iget-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    .line 17
    invoke-static {v9}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p1
.end method

.method private getLineStartPos(III)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 23
    .line 24
    if-ne v0, v4, :cond_3

    .line 25
    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 32
    .line 33
    :cond_3
    :goto_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 34
    .line 35
    if-ne v0, v4, :cond_5

    .line 36
    .line 37
    if-ne v1, v3, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_1
    add-int/2addr p1, p2

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    :goto_2
    add-int/2addr p1, p3

    .line 52
    goto :goto_4

    .line 53
    :cond_5
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 54
    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_6

    .line 62
    .line 63
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 64
    .line 65
    check-cast v4, Landroid/text/Spanned;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const-class v7, Landroid/text/style/TabStopSpan;

    .line 76
    .line 77
    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, [Landroid/text/style/TabStopSpan;

    .line 86
    .line 87
    array-length v5, v4

    .line 88
    if-lez v5, :cond_6

    .line 89
    .line 90
    new-instance v5, Landroid/text/Layout$TabStops;

    .line 91
    .line 92
    const/16 v6, 0x14

    .line 93
    .line 94
    invoke-direct {v5, v6, v4}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    const/4 v5, 0x0

    .line 99
    :goto_3
    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p1, v5, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    float-to-int v4, v4

    .line 105
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 106
    .line 107
    if-ne v0, v5, :cond_8

    .line 108
    .line 109
    if-ne v1, v3, :cond_7

    .line 110
    .line 111
    sub-int/2addr p3, v4

    .line 112
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    sub-int/2addr p2, v4

    .line 120
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    goto :goto_1

    .line 125
    :cond_8
    and-int/lit8 v0, v4, -0x2

    .line 126
    .line 127
    add-int/2addr p2, p3

    .line 128
    sub-int/2addr p2, v0

    .line 129
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 130
    .line 131
    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    add-int/2addr p1, v3

    .line 136
    shr-int p1, p2, p1

    .line 137
    .line 138
    :goto_4
    return p1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    return p3

    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    add-int/lit8 p1, p3, -0x1

    .line 4
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    return p1

    .line 5
    :cond_1
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const v3, 0xdc00

    .line 12
    .line 13
    .line 14
    if-lt v2, v3, :cond_1

    .line 15
    .line 16
    const v3, 0xdfff

    .line 17
    .line 18
    .line 19
    if-gt v2, v3, :cond_1

    .line 20
    .line 21
    add-int/lit8 v2, p1, -0x1

    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0xd800

    .line 28
    .line 29
    .line 30
    if-lt v2, v3, :cond_1

    .line 31
    .line 32
    const v3, 0xdbff

    .line 33
    .line 34
    .line 35
    if-gt v2, v3, :cond_1

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    :cond_1
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    check-cast v1, Landroid/text/Spanned;

    .line 44
    .line 45
    const-class v2, Landroid/text/style/ReplacementSpan;

    .line 46
    .line 47
    invoke-interface {v1, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 52
    .line 53
    :goto_0
    array-length v3, v2

    .line 54
    if-ge v0, v3, :cond_3

    .line 55
    .line 56
    aget-object v3, v2, v0

    .line 57
    .line 58
    invoke-interface {v1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    aget-object v4, v2, v0

    .line 63
    .line 64
    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ge v3, p1, :cond_2

    .line 69
    .line 70
    if-le v4, p1, :cond_2

    .line 71
    .line 72
    move p1, v3

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    move v4, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v4, v6

    .line 25
    :goto_0
    if-ne p2, v4, :cond_1

    .line 26
    .line 27
    move v4, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v4, v6

    .line 30
    :goto_1
    if-eqz v4, :cond_3

    .line 31
    .line 32
    if-ne p1, v2, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v4, v5

    .line 39
    if-ge v0, v4, :cond_2

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    return p1

    .line 45
    :cond_3
    if-ne p1, v1, :cond_5

    .line 46
    .line 47
    if-lez v0, :cond_4

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    return p1

    .line 53
    :cond_5
    move v5, v6

    .line 54
    :goto_2
    if-eqz v5, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eq v4, v3, :cond_6

    .line 69
    .line 70
    xor-int/lit8 p2, p2, 0x1

    .line 71
    .line 72
    move v10, v1

    .line 73
    move v5, v2

    .line 74
    move v6, v4

    .line 75
    goto :goto_3

    .line 76
    :cond_6
    move v10, v1

    .line 77
    move v5, v2

    .line 78
    move v6, v3

    .line 79
    :goto_3
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 88
    .line 89
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    move-object v1, v0

    .line 94
    move v4, v10

    .line 95
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 96
    .line 97
    .line 98
    sub-int/2addr p1, v10

    .line 99
    invoke-virtual {v0, p1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    add-int/2addr v10, p1

    .line 104
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 105
    .line 106
    .line 107
    return v10
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    check-cast v0, Landroid/text/Spanned;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    .line 20
    .line 21
    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v0, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    .line 30
    .line 31
    array-length v4, v3

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    sub-int/2addr v2, v4

    .line 39
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v5, 0xa

    .line 44
    .line 45
    if-ne v2, v5, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v2, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    move v2, v4

    .line 51
    :goto_1
    move v5, v1

    .line 52
    :goto_2
    array-length v6, v3

    .line 53
    if-ge v5, v6, :cond_6

    .line 54
    .line 55
    aget-object v6, v3, v5

    .line 56
    .line 57
    instance-of v7, v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 58
    .line 59
    if-eqz v7, :cond_5

    .line 60
    .line 61
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    aget-object v7, v3, v5

    .line 70
    .line 71
    check-cast v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 72
    .line 73
    invoke-interface {v7}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    add-int/2addr v7, v6

    .line 78
    if-ge p1, v7, :cond_4

    .line 79
    .line 80
    move v6, v4

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v6, v1

    .line 83
    :goto_3
    or-int/2addr v2, v6

    .line 84
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    move p1, v1

    .line 88
    :goto_4
    array-length v0, v3

    .line 89
    if-ge v1, v0, :cond_7

    .line 90
    .line 91
    aget-object v0, v3, v1

    .line 92
    .line 93
    invoke-interface {v0, v2}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr p1, v0

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    return p1
.end method

.method public static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private isJustificationRequired(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ge p1, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr p1, v2

    .line 23
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_1
    return v1
.end method

.method public static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 8
    .line 9
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, v10

    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    move/from16 v3, p2

    .line 22
    .line 23
    move/from16 v4, p3

    .line 24
    .line 25
    move-object/from16 v5, p4

    .line 26
    .line 27
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, v10, Landroid/text/MeasuredText;->mEasy:Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 36
    .line 37
    move-object v12, v1

    .line 38
    move v6, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v12, v10, Landroid/text/MeasuredText;->mDir:I

    .line 41
    .line 42
    iget-object v13, v10, Landroid/text/MeasuredText;->mLevels:[B

    .line 43
    .line 44
    const/4 v14, 0x0

    .line 45
    iget-object v15, v10, Landroid/text/MeasuredText;->mChars:[C

    .line 46
    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    iget v1, v10, Landroid/text/MeasuredText;->mLen:I

    .line 50
    .line 51
    move/from16 v17, v1

    .line 52
    .line 53
    invoke-static/range {v12 .. v17}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v3, v10, Landroid/text/MeasuredText;->mDir:I

    .line 58
    .line 59
    move-object v12, v1

    .line 60
    move v6, v3

    .line 61
    :goto_0
    iget-object v1, v10, Landroid/text/MeasuredText;->mChars:[C

    .line 62
    .line 63
    iget v3, v10, Landroid/text/MeasuredText;->mLen:I

    .line 64
    .line 65
    instance-of v4, v0, Landroid/text/Spanned;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    move-object v4, v0

    .line 70
    check-cast v4, Landroid/text/Spanned;

    .line 71
    .line 72
    const-class v13, Landroid/text/style/LeadingMarginSpan;

    .line 73
    .line 74
    invoke-static {v4, v7, v8, v13}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, [Landroid/text/style/LeadingMarginSpan;

    .line 79
    .line 80
    array-length v13, v4

    .line 81
    const/4 v14, 0x0

    .line 82
    const/4 v15, 0x0

    .line 83
    :goto_1
    if-ge v14, v13, :cond_2

    .line 84
    .line 85
    aget-object v5, v4, v14

    .line 86
    .line 87
    invoke-interface {v5, v2}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    add-int/2addr v15, v5

    .line 92
    add-int/lit8 v14, v14, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v15, 0x0

    .line 96
    :cond_2
    const/4 v4, 0x0

    .line 97
    :goto_2
    const/4 v13, 0x0

    .line 98
    if-ge v4, v3, :cond_6

    .line 99
    .line 100
    aget-char v5, v1, v4

    .line 101
    .line 102
    const/16 v14, 0x9

    .line 103
    .line 104
    if-ne v5, v14, :cond_5

    .line 105
    .line 106
    instance-of v1, v0, Landroid/text/Spanned;

    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    move-object v1, v0

    .line 111
    check-cast v1, Landroid/text/Spanned;

    .line 112
    .line 113
    invoke-interface {v1, v7, v8, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-static {v1, v7, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 122
    .line 123
    array-length v3, v1

    .line 124
    if-lez v3, :cond_3

    .line 125
    .line 126
    new-instance v3, Landroid/text/Layout$TabStops;

    .line 127
    .line 128
    const/16 v4, 0x14

    .line 129
    .line 130
    invoke-direct {v3, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    move-object v3, v13

    .line 135
    :goto_3
    move v9, v2

    .line 136
    move-object v14, v3

    .line 137
    goto :goto_4

    .line 138
    :cond_4
    move v9, v2

    .line 139
    move-object v14, v13

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move-object v14, v13

    .line 145
    const/4 v9, 0x0

    .line 146
    :goto_4
    move-object v1, v11

    .line 147
    move-object/from16 v2, p0

    .line 148
    .line 149
    move-object/from16 v3, p1

    .line 150
    .line 151
    move/from16 v4, p2

    .line 152
    .line 153
    move/from16 v5, p3

    .line 154
    .line 155
    move-object v7, v12

    .line 156
    move v8, v9

    .line 157
    move-object v9, v14

    .line 158
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 159
    .line 160
    .line 161
    int-to-float v0, v15

    .line 162
    invoke-virtual {v11, v13}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 167
    .line 168
    .line 169
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    add-float/2addr v0, v1

    .line 171
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 172
    .line 173
    .line 174
    invoke-static {v10}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 175
    .line 176
    .line 177
    return v0

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 180
    .line 181
    .line 182
    invoke-static {v10}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    check-cast p0, Landroid/text/Spanned;

    .line 9
    .line 10
    const-class p4, Landroid/text/style/TabStopSpan;

    .line 11
    .line 12
    invoke-static {p0, p1, p2, p4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p0, v0

    .line 19
    :goto_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 20
    .line 21
    .line 22
    move p2, p1

    .line 23
    :goto_1
    array-length v1, p4

    .line 24
    if-ge v0, v1, :cond_3

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    aget-object v1, p4, v0

    .line 29
    .line 30
    instance-of v1, v1, Landroid/text/style/TabStopSpan;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    aget-object v1, p4, v0

    .line 36
    .line 37
    check-cast v1, Landroid/text/style/TabStopSpan;

    .line 38
    .line 39
    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    cmpg-float v2, v1, p2

    .line 45
    .line 46
    if-gez v2, :cond_2

    .line 47
    .line 48
    cmpl-float v2, v1, p3

    .line 49
    .line 50
    if-lez v2, :cond_2

    .line 51
    .line 52
    move p2, v1

    .line 53
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    cmpl-float p0, p2, p1

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    return p2

    .line 61
    :cond_4
    const/high16 p0, 0x41a00000    # 20.0f

    .line 62
    .line 63
    add-float/2addr p3, p0

    .line 64
    div-float/2addr p3, p0

    .line 65
    float-to-int p0, p3

    .line 66
    mul-int/lit8 p0, p0, 0x14

    .line 67
    .line 68
    int-to-float p0, p0

    .line 69
    return p0
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    :goto_0
    array-length v6, v3

    .line 22
    const v7, 0x3ffffff

    .line 23
    .line 24
    .line 25
    const/4 v8, -0x1

    .line 26
    if-ge v5, v6, :cond_3

    .line 27
    .line 28
    aget v6, v3, v5

    .line 29
    .line 30
    add-int/2addr v6, v1

    .line 31
    add-int/lit8 v9, v5, 0x1

    .line 32
    .line 33
    aget v9, v3, v9

    .line 34
    .line 35
    and-int v10, v9, v7

    .line 36
    .line 37
    add-int/2addr v10, v6

    .line 38
    if-le v10, v2, :cond_0

    .line 39
    .line 40
    move v10, v2

    .line 41
    :cond_0
    if-lt p1, v6, :cond_2

    .line 42
    .line 43
    if-ge p1, v10, :cond_2

    .line 44
    .line 45
    if-le p1, v6, :cond_1

    .line 46
    .line 47
    return v4

    .line 48
    :cond_1
    ushr-int/lit8 v5, v9, 0x1a

    .line 49
    .line 50
    and-int/lit8 v5, v5, 0x3f

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 v5, v5, 0x2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v5, v8

    .line 57
    :goto_1
    const/4 v6, 0x1

    .line 58
    if-ne v5, v8, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ne v5, v6, :cond_4

    .line 65
    .line 66
    move v5, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v5, v6

    .line 69
    :cond_5
    :goto_2
    if-ne p1, v1, :cond_7

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne p1, v6, :cond_6

    .line 76
    .line 77
    move v8, v4

    .line 78
    goto :goto_4

    .line 79
    :cond_6
    move v8, v6

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    add-int/2addr p1, v8

    .line 82
    move v0, v4

    .line 83
    :goto_3
    array-length v9, v3

    .line 84
    if-ge v0, v9, :cond_a

    .line 85
    .line 86
    aget v9, v3, v0

    .line 87
    .line 88
    add-int/2addr v9, v1

    .line 89
    add-int/lit8 v10, v0, 0x1

    .line 90
    .line 91
    aget v10, v3, v10

    .line 92
    .line 93
    and-int v11, v10, v7

    .line 94
    .line 95
    add-int/2addr v11, v9

    .line 96
    if-le v11, v2, :cond_8

    .line 97
    .line 98
    move v11, v2

    .line 99
    :cond_8
    if-lt p1, v9, :cond_9

    .line 100
    .line 101
    if-ge p1, v11, :cond_9

    .line 102
    .line 103
    ushr-int/lit8 p1, v10, 0x1a

    .line 104
    .line 105
    and-int/lit8 v8, p1, 0x3f

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_9
    add-int/lit8 v0, v0, 0x2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_a
    :goto_4
    if-ge v8, v5, :cond_b

    .line 112
    .line 113
    move v4, v6

    .line 114
    :cond_b
    return v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v0

    .line 5
    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 6
    invoke-virtual {p0, p1, v9, v0}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move/from16 v14, p4

    .line 6
    .line 7
    move/from16 v1, p5

    .line 8
    .line 9
    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    .line 10
    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroid/text/SpanSet;

    .line 18
    .line 19
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 25
    .line 26
    :cond_0
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 27
    .line 28
    move-object v15, v2

    .line 29
    check-cast v15, Landroid/text/Spanned;

    .line 30
    .line 31
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    invoke-virtual {v2, v15, v11, v12}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 42
    .line 43
    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    .line 44
    .line 45
    if-lez v2, :cond_8

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sget-object v4, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 56
    .line 57
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 58
    .line 59
    iget v9, v0, Landroid/text/Layout;->mWidth:I

    .line 60
    .line 61
    move/from16 v6, p6

    .line 62
    .line 63
    move v8, v1

    .line 64
    move/from16 v16, v2

    .line 65
    .line 66
    move v7, v3

    .line 67
    move v1, v11

    .line 68
    move v2, v1

    .line 69
    :goto_0
    if-gt v8, v6, :cond_8

    .line 70
    .line 71
    add-int/lit8 v5, v8, 0x1

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineTop(I)I

    .line 78
    .line 79
    .line 80
    move-result v17

    .line 81
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineDescent(I)I

    .line 82
    .line 83
    .line 84
    move-result v18

    .line 85
    sub-int v18, v17, v18

    .line 86
    .line 87
    if-lt v7, v1, :cond_6

    .line 88
    .line 89
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 90
    .line 91
    invoke-virtual {v1, v7, v12}, Landroid/text/SpanSet;->getNextTransition(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ne v7, v3, :cond_2

    .line 96
    .line 97
    if-nez v7, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move/from16 v21, v1

    .line 101
    .line 102
    move-object/from16 v22, v4

    .line 103
    .line 104
    move/from16 v20, v5

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_2
    :goto_1
    move/from16 p5, v1

    .line 108
    .line 109
    move v2, v11

    .line 110
    :goto_2
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 111
    .line 112
    move/from16 v20, v5

    .line 113
    .line 114
    iget v5, v1, Landroid/text/SpanSet;->numberOfSpans:I

    .line 115
    .line 116
    if-ge v11, v5, :cond_5

    .line 117
    .line 118
    iget-object v5, v1, Landroid/text/SpanSet;->spanStarts:[I

    .line 119
    .line 120
    aget v5, v5, v11

    .line 121
    .line 122
    if-ge v5, v3, :cond_4

    .line 123
    .line 124
    iget-object v5, v1, Landroid/text/SpanSet;->spanEnds:[I

    .line 125
    .line 126
    aget v5, v5, v11

    .line 127
    .line 128
    if-gt v5, v7, :cond_3

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    .line 134
    .line 135
    aget-object v1, v1, v11

    .line 136
    .line 137
    invoke-static {v4, v2, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, [Landroid/text/style/ParagraphStyle;

    .line 142
    .line 143
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    move-object v4, v1

    .line 146
    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 147
    .line 148
    move/from16 v5, v20

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    move/from16 v21, p5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    move/from16 v20, v5

    .line 155
    .line 156
    move/from16 v21, v1

    .line 157
    .line 158
    :goto_4
    move v11, v2

    .line 159
    move-object/from16 v22, v4

    .line 160
    .line 161
    :goto_5
    const/4 v5, 0x0

    .line 162
    :goto_6
    if-ge v5, v11, :cond_7

    .line 163
    .line 164
    aget-object v1, v22, v5

    .line 165
    .line 166
    check-cast v1, Landroid/text/style/LineBackgroundSpan;

    .line 167
    .line 168
    const/4 v4, 0x0

    .line 169
    move-object/from16 v2, p1

    .line 170
    .line 171
    move/from16 v23, v3

    .line 172
    .line 173
    move-object v3, v10

    .line 174
    move/from16 v24, v5

    .line 175
    .line 176
    move v5, v9

    .line 177
    move/from16 v6, v16

    .line 178
    .line 179
    move/from16 v25, v7

    .line 180
    .line 181
    move/from16 v7, v18

    .line 182
    .line 183
    move/from16 v26, v8

    .line 184
    .line 185
    move/from16 v8, v17

    .line 186
    .line 187
    move/from16 v27, v9

    .line 188
    .line 189
    move-object v9, v15

    .line 190
    move-object/from16 v28, v10

    .line 191
    .line 192
    move/from16 v10, v25

    .line 193
    .line 194
    move/from16 v19, v11

    .line 195
    .line 196
    const/16 v29, 0x0

    .line 197
    .line 198
    move/from16 v11, v23

    .line 199
    .line 200
    move/from16 v30, v12

    .line 201
    .line 202
    move/from16 v12, v26

    .line 203
    .line 204
    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 205
    .line 206
    .line 207
    add-int/lit8 v5, v24, 0x1

    .line 208
    .line 209
    move/from16 v6, p6

    .line 210
    .line 211
    move/from16 v11, v19

    .line 212
    .line 213
    move/from16 v3, v23

    .line 214
    .line 215
    move/from16 v7, v25

    .line 216
    .line 217
    move/from16 v8, v26

    .line 218
    .line 219
    move/from16 v9, v27

    .line 220
    .line 221
    move-object/from16 v10, v28

    .line 222
    .line 223
    move/from16 v12, v30

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_7
    move/from16 v23, v3

    .line 227
    .line 228
    move/from16 v19, v11

    .line 229
    .line 230
    const/16 v29, 0x0

    .line 231
    .line 232
    move/from16 v6, p6

    .line 233
    .line 234
    move/from16 v16, v17

    .line 235
    .line 236
    move/from16 v2, v19

    .line 237
    .line 238
    move/from16 v8, v20

    .line 239
    .line 240
    move/from16 v1, v21

    .line 241
    .line 242
    move-object/from16 v4, v22

    .line 243
    .line 244
    move/from16 v7, v23

    .line 245
    .line 246
    move/from16 v11, v29

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_8
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 253
    .line 254
    .line 255
    :cond_9
    if-eqz p2, :cond_b

    .line 256
    .line 257
    const/4 v1, 0x0

    .line 258
    if-eqz v14, :cond_a

    .line 259
    .line 260
    int-to-float v2, v14

    .line 261
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    .line 263
    .line 264
    :cond_a
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 265
    .line 266
    .line 267
    if-eqz v14, :cond_b

    .line 268
    .line 269
    neg-int v2, v14

    .line 270
    int-to-float v2, v2

    .line 271
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    .line 273
    .line 274
    :cond_b
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 38

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move/from16 v14, p2

    .line 4
    .line 5
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineTop(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineStart(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 14
    .line 15
    iget-object v15, v13, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 16
    .line 17
    iget-object v12, v13, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 18
    .line 19
    iget-object v3, v13, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 20
    .line 21
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    const/4 v4, 0x0

    .line 26
    move/from16 v7, p3

    .line 27
    .line 28
    move/from16 v16, v0

    .line 29
    .line 30
    move v8, v1

    .line 31
    move-object v9, v4

    .line 32
    move v6, v14

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-gt v6, v7, :cond_18

    .line 36
    .line 37
    add-int/lit8 v5, v6, 0x1

    .line 38
    .line 39
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineStart(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-direct {v13, v6}, Landroid/text/Layout;->isJustificationRequired(I)Z

    .line 44
    .line 45
    .line 46
    move-result v17

    .line 47
    invoke-direct {v13, v6, v8, v4}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    .line 48
    .line 49
    .line 50
    move-result v18

    .line 51
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineTop(I)I

    .line 52
    .line 53
    .line 54
    move-result v19

    .line 55
    invoke-virtual {v13, v6}, Landroid/text/Layout;->getLineDescent(I)I

    .line 56
    .line 57
    .line 58
    move-result v20

    .line 59
    move-object/from16 v21, v11

    .line 60
    .line 61
    sub-int v11, v19, v20

    .line 62
    .line 63
    invoke-virtual {v13, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    move/from16 v22, v1

    .line 68
    .line 69
    iget v1, v13, Landroid/text/Layout;->mWidth:I

    .line 70
    .line 71
    move/from16 v23, v1

    .line 72
    .line 73
    iget-boolean v1, v13, Landroid/text/Layout;->mSpannedText:Z

    .line 74
    .line 75
    move-object/from16 v24, v9

    .line 76
    .line 77
    if-eqz v1, :cond_b

    .line 78
    .line 79
    move-object v1, v12

    .line 80
    check-cast v1, Landroid/text/Spanned;

    .line 81
    .line 82
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v8, :cond_1

    .line 87
    .line 88
    move-object/from16 v26, v2

    .line 89
    .line 90
    add-int/lit8 v2, v8, -0x1

    .line 91
    .line 92
    invoke-interface {v12, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    move-object/from16 v27, v3

    .line 97
    .line 98
    const/16 v3, 0xa

    .line 99
    .line 100
    if-ne v2, v3, :cond_0

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_0
    const/16 v28, 0x0

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    move-object/from16 v26, v2

    .line 107
    .line 108
    move-object/from16 v27, v3

    .line 109
    .line 110
    :goto_1
    const/16 v28, 0x1

    .line 111
    .line 112
    :goto_2
    if-lt v8, v0, :cond_5

    .line 113
    .line 114
    if-eq v6, v14, :cond_2

    .line 115
    .line 116
    if-eqz v28, :cond_5

    .line 117
    .line 118
    :cond_2
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 119
    .line 120
    invoke-interface {v1, v8, v9, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {v1, v8, v2, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, [Landroid/text/style/ParagraphStyle;

    .line 129
    .line 130
    iget-object v3, v13, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 131
    .line 132
    array-length v9, v0

    .line 133
    const/16 v25, 0x1

    .line 134
    .line 135
    add-int/lit8 v9, v9, -0x1

    .line 136
    .line 137
    :goto_3
    if-ltz v9, :cond_4

    .line 138
    .line 139
    move/from16 v22, v2

    .line 140
    .line 141
    aget-object v2, v0, v9

    .line 142
    .line 143
    move-object/from16 v26, v0

    .line 144
    .line 145
    instance-of v0, v2, Landroid/text/style/AlignmentSpan;

    .line 146
    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    check-cast v2, Landroid/text/style/AlignmentSpan;

    .line 150
    .line 151
    invoke-interface {v2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    move-object v3, v0

    .line 156
    goto :goto_4

    .line 157
    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 158
    .line 159
    move/from16 v2, v22

    .line 160
    .line 161
    move-object/from16 v0, v26

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    move-object/from16 v26, v0

    .line 165
    .line 166
    move/from16 v22, v2

    .line 167
    .line 168
    :goto_4
    move-object/from16 v27, v3

    .line 169
    .line 170
    move-object/from16 v9, v26

    .line 171
    .line 172
    const/16 v26, 0x0

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_5
    const/16 v25, 0x1

    .line 176
    .line 177
    move-object/from16 v9, v26

    .line 178
    .line 179
    move/from16 v26, v22

    .line 180
    .line 181
    move/from16 v22, v0

    .line 182
    .line 183
    :goto_5
    array-length v3, v9

    .line 184
    const/4 v0, 0x0

    .line 185
    :goto_6
    if-ge v0, v3, :cond_7

    .line 186
    .line 187
    aget-object v2, v9, v0

    .line 188
    .line 189
    move/from16 v29, v4

    .line 190
    .line 191
    instance-of v4, v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 192
    .line 193
    if-eqz v4, :cond_6

    .line 194
    .line 195
    check-cast v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 196
    .line 197
    invoke-interface {v2}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    aget-object v4, v9, v0

    .line 202
    .line 203
    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {v13, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    add-int/2addr v4, v2

    .line 212
    if-ge v6, v4, :cond_6

    .line 213
    .line 214
    move/from16 v4, v25

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 218
    .line 219
    move/from16 v4, v29

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_7
    move/from16 v29, v4

    .line 223
    .line 224
    move/from16 v4, v28

    .line 225
    .line 226
    :goto_7
    const/4 v2, 0x0

    .line 227
    const/16 v30, 0x0

    .line 228
    .line 229
    :goto_8
    if-ge v2, v3, :cond_a

    .line 230
    .line 231
    aget-object v0, v9, v2

    .line 232
    .line 233
    instance-of v1, v0, Landroid/text/style/LeadingMarginSpan;

    .line 234
    .line 235
    if-eqz v1, :cond_9

    .line 236
    .line 237
    move-object v1, v0

    .line 238
    check-cast v1, Landroid/text/style/LeadingMarginSpan;

    .line 239
    .line 240
    const/4 v0, -0x1

    .line 241
    if-ne v10, v0, :cond_8

    .line 242
    .line 243
    move-object v0, v1

    .line 244
    move-object v14, v1

    .line 245
    move-object/from16 v1, p1

    .line 246
    .line 247
    move/from16 v31, v2

    .line 248
    .line 249
    move-object v2, v15

    .line 250
    move/from16 v32, v3

    .line 251
    .line 252
    move/from16 v3, v23

    .line 253
    .line 254
    move v13, v4

    .line 255
    move v4, v10

    .line 256
    move/from16 v33, v5

    .line 257
    .line 258
    move/from16 v5, v16

    .line 259
    .line 260
    move/from16 v34, v6

    .line 261
    .line 262
    move v6, v11

    .line 263
    move/from16 v7, v19

    .line 264
    .line 265
    move/from16 v35, v8

    .line 266
    .line 267
    move-object v8, v12

    .line 268
    move-object/from16 v36, v24

    .line 269
    .line 270
    move-object/from16 v24, v9

    .line 271
    .line 272
    move/from16 v9, v35

    .line 273
    .line 274
    move/from16 v20, v10

    .line 275
    .line 276
    move/from16 v10, v18

    .line 277
    .line 278
    move-object/from16 v25, v21

    .line 279
    .line 280
    move/from16 v21, v11

    .line 281
    .line 282
    move/from16 v11, v28

    .line 283
    .line 284
    move-object/from16 v37, v12

    .line 285
    .line 286
    move-object/from16 v12, p0

    .line 287
    .line 288
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v14, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    sub-int v23, v23, v0

    .line 296
    .line 297
    goto/16 :goto_9

    .line 298
    .line 299
    :cond_8
    move-object v14, v1

    .line 300
    move/from16 v31, v2

    .line 301
    .line 302
    move/from16 v32, v3

    .line 303
    .line 304
    move v13, v4

    .line 305
    move/from16 v33, v5

    .line 306
    .line 307
    move/from16 v34, v6

    .line 308
    .line 309
    move/from16 v35, v8

    .line 310
    .line 311
    move/from16 v20, v10

    .line 312
    .line 313
    move-object/from16 v37, v12

    .line 314
    .line 315
    move-object/from16 v25, v21

    .line 316
    .line 317
    move-object/from16 v36, v24

    .line 318
    .line 319
    move-object/from16 v24, v9

    .line 320
    .line 321
    move/from16 v21, v11

    .line 322
    .line 323
    move-object v0, v14

    .line 324
    move-object/from16 v1, p1

    .line 325
    .line 326
    move-object v2, v15

    .line 327
    move/from16 v3, v30

    .line 328
    .line 329
    move/from16 v4, v20

    .line 330
    .line 331
    move/from16 v5, v16

    .line 332
    .line 333
    move/from16 v6, v21

    .line 334
    .line 335
    move/from16 v7, v19

    .line 336
    .line 337
    move-object/from16 v8, v37

    .line 338
    .line 339
    move/from16 v9, v35

    .line 340
    .line 341
    move/from16 v10, v18

    .line 342
    .line 343
    move/from16 v11, v28

    .line 344
    .line 345
    move-object/from16 v12, p0

    .line 346
    .line 347
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v14, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    add-int v0, v0, v30

    .line 355
    .line 356
    move/from16 v30, v0

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_9
    move/from16 v31, v2

    .line 360
    .line 361
    move/from16 v32, v3

    .line 362
    .line 363
    move v13, v4

    .line 364
    move/from16 v33, v5

    .line 365
    .line 366
    move/from16 v34, v6

    .line 367
    .line 368
    move/from16 v35, v8

    .line 369
    .line 370
    move/from16 v20, v10

    .line 371
    .line 372
    move-object/from16 v37, v12

    .line 373
    .line 374
    move-object/from16 v25, v21

    .line 375
    .line 376
    move-object/from16 v36, v24

    .line 377
    .line 378
    move-object/from16 v24, v9

    .line 379
    .line 380
    move/from16 v21, v11

    .line 381
    .line 382
    :goto_9
    add-int/lit8 v2, v31, 0x1

    .line 383
    .line 384
    move/from16 v14, p2

    .line 385
    .line 386
    move/from16 v7, p3

    .line 387
    .line 388
    move v4, v13

    .line 389
    move/from16 v10, v20

    .line 390
    .line 391
    move/from16 v11, v21

    .line 392
    .line 393
    move-object/from16 v9, v24

    .line 394
    .line 395
    move-object/from16 v21, v25

    .line 396
    .line 397
    move/from16 v3, v32

    .line 398
    .line 399
    move/from16 v5, v33

    .line 400
    .line 401
    move/from16 v6, v34

    .line 402
    .line 403
    move/from16 v8, v35

    .line 404
    .line 405
    move-object/from16 v24, v36

    .line 406
    .line 407
    move-object/from16 v12, v37

    .line 408
    .line 409
    const/16 v25, 0x1

    .line 410
    .line 411
    move-object/from16 v13, p0

    .line 412
    .line 413
    goto/16 :goto_8

    .line 414
    .line 415
    :cond_a
    move/from16 v33, v5

    .line 416
    .line 417
    move/from16 v35, v8

    .line 418
    .line 419
    move/from16 v20, v10

    .line 420
    .line 421
    move-object/from16 v37, v12

    .line 422
    .line 423
    move-object/from16 v25, v21

    .line 424
    .line 425
    move-object/from16 v36, v24

    .line 426
    .line 427
    move-object/from16 v24, v9

    .line 428
    .line 429
    move/from16 v21, v11

    .line 430
    .line 431
    move-object/from16 v13, p0

    .line 432
    .line 433
    move v14, v6

    .line 434
    move/from16 v0, v22

    .line 435
    .line 436
    move-object/from16 v2, v24

    .line 437
    .line 438
    move/from16 v1, v26

    .line 439
    .line 440
    move-object/from16 v12, v27

    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_b
    move-object/from16 v26, v2

    .line 444
    .line 445
    move-object/from16 v27, v3

    .line 446
    .line 447
    move/from16 v29, v4

    .line 448
    .line 449
    move/from16 v33, v5

    .line 450
    .line 451
    move/from16 v35, v8

    .line 452
    .line 453
    move/from16 v20, v10

    .line 454
    .line 455
    move-object/from16 v37, v12

    .line 456
    .line 457
    move-object/from16 v25, v21

    .line 458
    .line 459
    move-object/from16 v36, v24

    .line 460
    .line 461
    move/from16 v21, v11

    .line 462
    .line 463
    move-object/from16 v13, p0

    .line 464
    .line 465
    move v14, v6

    .line 466
    move/from16 v1, v22

    .line 467
    .line 468
    move-object/from16 v12, v27

    .line 469
    .line 470
    const/16 v30, 0x0

    .line 471
    .line 472
    :goto_a
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineContainsTab(I)Z

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-eqz v10, :cond_d

    .line 477
    .line 478
    if-nez v1, :cond_d

    .line 479
    .line 480
    const/16 v1, 0x14

    .line 481
    .line 482
    move-object/from16 v4, v36

    .line 483
    .line 484
    if-nez v4, :cond_c

    .line 485
    .line 486
    new-instance v9, Landroid/text/Layout$TabStops;

    .line 487
    .line 488
    invoke-direct {v9, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    goto :goto_b

    .line 492
    :cond_c
    invoke-virtual {v4, v1, v2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    move-object v9, v4

    .line 496
    :goto_b
    move-object v11, v9

    .line 497
    const/4 v1, 0x1

    .line 498
    goto :goto_c

    .line 499
    :cond_d
    move-object/from16 v4, v36

    .line 500
    .line 501
    move-object v11, v4

    .line 502
    :goto_c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 503
    .line 504
    if-ne v12, v3, :cond_f

    .line 505
    .line 506
    move/from16 v8, v20

    .line 507
    .line 508
    const/4 v4, 0x1

    .line 509
    if-ne v8, v4, :cond_e

    .line 510
    .line 511
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 512
    .line 513
    goto :goto_d

    .line 514
    :cond_e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 515
    .line 516
    goto :goto_d

    .line 517
    :cond_f
    move/from16 v8, v20

    .line 518
    .line 519
    const/4 v4, 0x1

    .line 520
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 521
    .line 522
    if-ne v12, v5, :cond_11

    .line 523
    .line 524
    if-ne v8, v4, :cond_10

    .line 525
    .line 526
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :cond_10
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 530
    .line 531
    goto :goto_d

    .line 532
    :cond_11
    move-object v5, v12

    .line 533
    :goto_d
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 534
    .line 535
    if-ne v5, v6, :cond_13

    .line 536
    .line 537
    if-ne v8, v4, :cond_12

    .line 538
    .line 539
    invoke-virtual {v13, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    add-int v4, v30, v3

    .line 544
    .line 545
    goto :goto_e

    .line 546
    :cond_12
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 547
    .line 548
    invoke-virtual {v13, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    neg-int v3, v3

    .line 553
    sub-int v4, v23, v3

    .line 554
    .line 555
    :goto_e
    move/from16 v20, v3

    .line 556
    .line 557
    move v7, v4

    .line 558
    const/4 v9, 0x0

    .line 559
    goto :goto_11

    .line 560
    :cond_13
    const/4 v9, 0x0

    .line 561
    invoke-direct {v13, v14, v11, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    float-to-int v6, v6

    .line 566
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 567
    .line 568
    if-ne v5, v7, :cond_15

    .line 569
    .line 570
    if-ne v8, v4, :cond_14

    .line 571
    .line 572
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 573
    .line 574
    invoke-virtual {v13, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    neg-int v3, v3

    .line 579
    sub-int v4, v23, v6

    .line 580
    .line 581
    sub-int/2addr v4, v3

    .line 582
    goto :goto_10

    .line 583
    :cond_14
    invoke-virtual {v13, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    sub-int v4, v30, v6

    .line 588
    .line 589
    goto :goto_f

    .line 590
    :cond_15
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 591
    .line 592
    invoke-virtual {v13, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    and-int/lit8 v5, v6, -0x2

    .line 597
    .line 598
    add-int v6, v23, v30

    .line 599
    .line 600
    sub-int/2addr v6, v5

    .line 601
    shr-int/lit8 v4, v6, 0x1

    .line 602
    .line 603
    :goto_f
    add-int/2addr v4, v3

    .line 604
    :goto_10
    move/from16 v20, v3

    .line 605
    .line 606
    move v7, v4

    .line 607
    :goto_11
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getHyphen(I)I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 615
    .line 616
    .line 617
    move-result-object v14

    .line 618
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 619
    .line 620
    if-ne v14, v3, :cond_16

    .line 621
    .line 622
    iget-boolean v3, v13, Landroid/text/Layout;->mSpannedText:Z

    .line 623
    .line 624
    if-nez v3, :cond_16

    .line 625
    .line 626
    if-nez v10, :cond_16

    .line 627
    .line 628
    if-nez v17, :cond_16

    .line 629
    .line 630
    int-to-float v7, v7

    .line 631
    move/from16 v6, v21

    .line 632
    .line 633
    int-to-float v8, v6

    .line 634
    move-object/from16 v3, p1

    .line 635
    .line 636
    move-object/from16 v4, v37

    .line 637
    .line 638
    move/from16 v5, v35

    .line 639
    .line 640
    move/from16 v6, v18

    .line 641
    .line 642
    move v10, v9

    .line 643
    move-object v9, v15

    .line 644
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 645
    .line 646
    .line 647
    move/from16 v22, v0

    .line 648
    .line 649
    move/from16 v18, v1

    .line 650
    .line 651
    move v1, v10

    .line 652
    move-object v14, v11

    .line 653
    move-object/from16 v10, v25

    .line 654
    .line 655
    goto :goto_13

    .line 656
    :cond_16
    move/from16 v6, v21

    .line 657
    .line 658
    move-object/from16 v3, v25

    .line 659
    .line 660
    move-object v4, v15

    .line 661
    move-object/from16 v5, v37

    .line 662
    .line 663
    move/from16 v21, v6

    .line 664
    .line 665
    move/from16 v6, v35

    .line 666
    .line 667
    move/from16 v22, v0

    .line 668
    .line 669
    move v0, v7

    .line 670
    move/from16 v7, v18

    .line 671
    .line 672
    move/from16 v18, v1

    .line 673
    .line 674
    move v1, v9

    .line 675
    move-object v9, v14

    .line 676
    move-object v14, v11

    .line 677
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 678
    .line 679
    .line 680
    if-eqz v17, :cond_17

    .line 681
    .line 682
    sub-int v23, v23, v30

    .line 683
    .line 684
    sub-int v3, v23, v20

    .line 685
    .line 686
    int-to-float v3, v3

    .line 687
    move-object/from16 v10, v25

    .line 688
    .line 689
    invoke-virtual {v10, v3}, Landroid/text/TextLine;->justify(F)V

    .line 690
    .line 691
    .line 692
    goto :goto_12

    .line 693
    :cond_17
    move-object/from16 v10, v25

    .line 694
    .line 695
    :goto_12
    int-to-float v6, v0

    .line 696
    move-object v4, v10

    .line 697
    move-object/from16 v5, p1

    .line 698
    .line 699
    move/from16 v7, v16

    .line 700
    .line 701
    move/from16 v8, v21

    .line 702
    .line 703
    move/from16 v9, v19

    .line 704
    .line 705
    invoke-virtual/range {v4 .. v9}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 706
    .line 707
    .line 708
    :goto_13
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    .line 709
    .line 710
    .line 711
    move/from16 v7, p3

    .line 712
    .line 713
    move-object v11, v10

    .line 714
    move-object v3, v12

    .line 715
    move-object v9, v14

    .line 716
    move/from16 v1, v18

    .line 717
    .line 718
    move/from16 v16, v19

    .line 719
    .line 720
    move/from16 v0, v22

    .line 721
    .line 722
    move/from16 v8, v29

    .line 723
    .line 724
    move/from16 v6, v33

    .line 725
    .line 726
    move-object/from16 v12, v37

    .line 727
    .line 728
    move/from16 v14, p2

    .line 729
    .line 730
    goto/16 :goto_0

    .line 731
    .line 732
    :cond_18
    move-object v10, v11

    .line 733
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 734
    .line 735
    .line 736
    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0, v0}, Landroid/text/Layout;->shouldClampCursor(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/high16 v4, 0x3f000000    # 0.5f

    .line 27
    .line 28
    sub-float/2addr v3, v4

    .line 29
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sub-float/2addr p1, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p1, v3

    .line 42
    :goto_0
    const/4 v0, 0x1

    .line 43
    invoke-static {p3, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/16 v6, 0x800

    .line 48
    .line 49
    invoke-static {p3, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    or-int/2addr v5, v6

    .line 54
    const/4 v6, 0x2

    .line 55
    invoke-static {p3, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v7, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_1
    sub-int v7, v2, v1

    .line 67
    .line 68
    shr-int/2addr v7, v6

    .line 69
    if-eqz p3, :cond_3

    .line 70
    .line 71
    add-int/2addr v1, v7

    .line 72
    :cond_3
    if-eqz v5, :cond_4

    .line 73
    .line 74
    sub-int/2addr v2, v7

    .line 75
    :cond_4
    :goto_2
    cmpg-float v8, v3, v4

    .line 76
    .line 77
    if-gez v8, :cond_5

    .line 78
    .line 79
    move v3, v4

    .line 80
    :cond_5
    cmpg-float v8, p1, v4

    .line 81
    .line 82
    if-gez v8, :cond_6

    .line 83
    .line 84
    move p1, v4

    .line 85
    :cond_6
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_7

    .line 90
    .line 91
    int-to-float v8, v1

    .line 92
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    .line 94
    .line 95
    int-to-float v8, v2

    .line 96
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    int-to-float v8, v1

    .line 101
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    .line 103
    .line 104
    add-int v8, v1, v2

    .line 105
    .line 106
    shr-int/2addr v8, v0

    .line 107
    int-to-float v8, v8

    .line 108
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    .line 113
    .line 114
    int-to-float v8, v2

    .line 115
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    .line 117
    .line 118
    :goto_3
    if-ne v5, v6, :cond_8

    .line 119
    .line 120
    int-to-float v5, v2

    .line 121
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 122
    .line 123
    .line 124
    int-to-float v8, v7

    .line 125
    sub-float v9, p1, v8

    .line 126
    .line 127
    add-int/2addr v2, v7

    .line 128
    int-to-float v2, v2

    .line 129
    invoke-virtual {p2, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    .line 134
    .line 135
    add-float/2addr p1, v8

    .line 136
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_8
    if-ne v5, v0, :cond_9

    .line 141
    .line 142
    int-to-float v5, v2

    .line 143
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    .line 145
    .line 146
    int-to-float v8, v7

    .line 147
    sub-float v9, p1, v8

    .line 148
    .line 149
    add-int/2addr v2, v7

    .line 150
    int-to-float v2, v2

    .line 151
    invoke-virtual {p2, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    .line 153
    .line 154
    sub-float v10, v2, v4

    .line 155
    .line 156
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    .line 158
    .line 159
    add-float/2addr v8, p1

    .line 160
    invoke-virtual {p2, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_4
    if-ne p3, v6, :cond_a

    .line 170
    .line 171
    int-to-float p1, v1

    .line 172
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    .line 174
    .line 175
    int-to-float p3, v7

    .line 176
    sub-float v0, v3, p3

    .line 177
    .line 178
    sub-int/2addr v1, v7

    .line 179
    int-to-float v1, v1

    .line 180
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    .line 185
    .line 186
    add-float/2addr v3, p3

    .line 187
    invoke-virtual {p2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_a
    if-ne p3, v0, :cond_b

    .line 192
    .line 193
    int-to-float p1, v1

    .line 194
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    .line 196
    .line 197
    int-to-float p3, v7

    .line 198
    sub-float v0, v3, p3

    .line 199
    .line 200
    sub-int/2addr v1, v7

    .line 201
    int-to-float v1, v1

    .line 202
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    .line 204
    .line 205
    add-float/2addr v4, v1

    .line 206
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 207
    .line 208
    .line 209
    add-float/2addr p3, v3

    .line 210
    invoke-virtual {p2, p3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    .line 218
    .line 219
    :cond_b
    :goto_5
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    return p1
.end method

.method public getHyphen(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getLineAscent(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    return p1
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 13
    .line 14
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    add-int/lit8 v0, p1, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method public getLineForOffset(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    :goto_0
    sub-int v2, v0, v1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-le v2, v3, :cond_1

    .line 10
    .line 11
    add-int v2, v0, v1

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v3, p1, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez v1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_2
    return v1
.end method

.method public getLineForVertical(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    :goto_0
    sub-int v2, v0, v1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-le v2, v3, :cond_1

    .line 10
    .line 11
    add-int v2, v0, v1

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v3, p1, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez v1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_2
    return v1
.end method

.method public getLineLeft(I)F
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    if-ne v0, v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    sub-float/2addr v0, p1

    .line 32
    return v0

    .line 33
    :cond_1
    return v3

    .line 34
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 35
    .line 36
    if-ne v1, v2, :cond_3

    .line 37
    .line 38
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 47
    .line 48
    if-ne v1, v2, :cond_5

    .line 49
    .line 50
    if-ne v0, v4, :cond_4

    .line 51
    .line 52
    return v3

    .line 53
    :cond_4
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 54
    .line 55
    int-to-float v0, v0

    .line 56
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    float-to-int p1, p1

    .line 74
    and-int/lit8 p1, p1, -0x2

    .line 75
    .line 76
    sub-int/2addr v1, v0

    .line 77
    sub-int/2addr v1, p1

    .line 78
    div-int/lit8 v1, v1, 0x2

    .line 79
    .line 80
    add-int/2addr v1, v0

    .line 81
    int-to-float p1, v1

    .line 82
    return p1
.end method

.method public getLineMax(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v1, p1, v1

    .line 13
    .line 14
    if-ltz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    neg-float p1, p1

    .line 18
    :goto_0
    add-float/2addr v0, p1

    .line 19
    return v0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 4

    .line 1
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    monitor-exit v0

    .line 17
    return-wide v1

    .line 18
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lt p1, v0, :cond_1

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {p1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    return-wide v0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method

.method public getLineRight(I)F
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-float/2addr p1, v0

    .line 23
    return p1

    .line 24
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    return p1

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-float/2addr p1, v0

    .line 45
    return p1

    .line 46
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 47
    .line 48
    if-ne v1, v2, :cond_3

    .line 49
    .line 50
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    return p1

    .line 54
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 55
    .line 56
    if-ne v1, v2, :cond_5

    .line 57
    .line 58
    if-ne v0, v3, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_4
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    .line 66
    .line 67
    int-to-float p1, p1

    .line 68
    return p1

    .line 69
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    float-to-int p1, p1

    .line 82
    and-int/lit8 p1, p1, -0x2

    .line 83
    .line 84
    sub-int v0, v1, v0

    .line 85
    .line 86
    sub-int/2addr v0, p1

    .line 87
    div-int/lit8 v0, v0, 0x2

    .line 88
    .line 89
    sub-int/2addr v1, v0

    .line 90
    int-to-float p1, v1

    .line 91
    return p1
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result p1

    return p1
.end method

.method public getLineWidth(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v1, p1, v1

    .line 13
    .line 14
    if-ltz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    neg-float p1, p1

    .line 18
    :goto_0
    add-float/2addr v0, p1

    .line 19
    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result p1

    return p1
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 4
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    .line 5
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    .line 6
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v14

    move v5, v12

    move v6, v11

    move-object v8, v13

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v4, p1

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v11, v12

    add-int/lit8 v11, v11, -0x1

    .line 8
    invoke-virtual {v0, v11}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 9
    invoke-virtual {v14, v2, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int v11, v2, v12

    .line 10
    :goto_0
    invoke-direct {v0, v12, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v2

    sub-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move v6, v12

    const/4 v5, 0x0

    .line 11
    :goto_1
    iget-object v7, v13, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v7

    if-ge v5, v8, :cond_a

    .line 12
    aget v8, v7, v5

    add-int/2addr v8, v12

    add-int/lit8 v9, v5, 0x1

    .line 13
    aget v7, v7, v9

    const v9, 0x3ffffff

    and-int/2addr v9, v7

    add-int/2addr v9, v8

    const/high16 v10, 0x4000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    const/4 v10, -0x1

    goto :goto_3

    :cond_2
    move v10, v3

    :goto_3
    if-le v9, v11, :cond_3

    move v9, v11

    :cond_3
    add-int/lit8 v15, v9, -0x1

    add-int/2addr v15, v3

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v16, v4, -0x1

    move-object/from16 v17, v13

    move/from16 v19, v16

    move/from16 v16, v6

    move/from16 v6, v19

    :goto_4
    sub-int v13, v15, v6

    if-le v13, v3, :cond_5

    add-int v13, v15, v6

    .line 14
    div-int/lit8 v13, v13, 0x2

    .line 15
    invoke-direct {v0, v13}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v3

    .line 16
    invoke-direct {v0, v3, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v3

    move/from16 v18, v13

    int-to-float v13, v10

    mul-float/2addr v3, v13

    mul-float v13, v13, p2

    cmpl-float v3, v3, v13

    if-ltz v3, :cond_4

    move/from16 v15, v18

    goto :goto_5

    :cond_4
    move/from16 v6, v18

    :goto_5
    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    if-ge v6, v4, :cond_6

    goto :goto_6

    :cond_6
    move v4, v6

    :goto_6
    if-ge v4, v9, :cond_8

    sub-int/2addr v4, v12

    .line 17
    invoke-virtual {v14, v4, v7}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v3

    add-int/2addr v3, v12

    sub-int v4, v3, v12

    xor-int/lit8 v6, v7, 0x1

    .line 18
    invoke-virtual {v14, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v12

    if-lt v4, v8, :cond_8

    if-ge v4, v9, :cond_8

    .line 19
    invoke-direct {v0, v4, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v6

    sub-float v6, v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-ge v3, v9, :cond_7

    .line 20
    invoke-direct {v0, v3, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v7

    sub-float v7, v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v9, v7, v6

    if-gez v9, :cond_7

    move v6, v7

    goto :goto_7

    :cond_7
    move v3, v4

    :goto_7
    cmpg-float v4, v6, v2

    if-gez v4, :cond_8

    move v2, v6

    move v6, v3

    goto :goto_8

    :cond_8
    move/from16 v6, v16

    .line 21
    :goto_8
    invoke-direct {v0, v8, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v3

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_9

    move v2, v3

    move v6, v8

    :cond_9
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v13, v17

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    move/from16 v16, v6

    .line 22
    invoke-direct {v0, v11, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    sub-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v11, v16

    .line 23
    :goto_9
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v11
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    return p1
.end method

.method public getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    return p1
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    check-cast v1, Landroid/text/Spanned;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-class v3, Landroid/text/style/AlignmentSpan;

    .line 20
    .line 21
    invoke-static {v1, v2, p1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Landroid/text/style/AlignmentSpan;

    .line 26
    .line 27
    array-length v1, p1

    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    aget-object p1, p1, v1

    .line 33
    .line 34
    invoke-interface {p1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public final getParagraphRight(I)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sub-int/2addr v0, p1

    .line 20
    :cond_1
    :goto_0
    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p1

    return p1
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p1

    return p1
.end method

.method public getRunRange(I)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_3

    .line 13
    .line 14
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    move v4, v3

    .line 26
    :goto_0
    array-length v5, v1

    .line 27
    if-ge v4, v5, :cond_2

    .line 28
    .line 29
    aget v5, v1, v4

    .line 30
    .line 31
    add-int/2addr v5, v2

    .line 32
    add-int/lit8 v6, v4, 0x1

    .line 33
    .line 34
    aget v6, v1, v6

    .line 35
    .line 36
    const v7, 0x3ffffff

    .line 37
    .line 38
    .line 39
    and-int/2addr v6, v7

    .line 40
    add-int/2addr v6, v5

    .line 41
    if-lt p1, v5, :cond_1

    .line 42
    .line 43
    if-ge p1, v6, :cond_1

    .line 44
    .line 45
    invoke-static {v5, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    return-wide v0

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {v3, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    return-wide v0

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {v3, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result p1

    return p1
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p1

    return p1
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 8
    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    move v8, v0

    .line 16
    move v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v2, v0

    .line 19
    move v8, v1

    .line 20
    :goto_0
    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineTop(I)I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ne v9, v10, :cond_2

    .line 37
    .line 38
    move-object/from16 v0, p0

    .line 39
    .line 40
    move v1, v9

    .line 41
    move v3, v8

    .line 42
    move v4, v11

    .line 43
    move-object/from16 v6, p3

    .line 44
    .line 45
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    .line 51
    .line 52
    int-to-float v15, v0

    .line 53
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineEnd(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    move-object/from16 v0, p0

    .line 62
    .line 63
    move v1, v9

    .line 64
    move v4, v11

    .line 65
    move-object/from16 v6, p3

    .line 66
    .line 67
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v6, -0x1

    .line 75
    if-ne v0, v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineLeft(I)F

    .line 78
    .line 79
    .line 80
    move-result v17

    .line 81
    int-to-float v0, v11

    .line 82
    const/16 v19, 0x0

    .line 83
    .line 84
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    int-to-float v1, v1

    .line 89
    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 90
    .line 91
    move-object/from16 v16, p3

    .line 92
    .line 93
    move/from16 v18, v0

    .line 94
    .line 95
    move/from16 v20, v1

    .line 96
    .line 97
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 98
    .line 99
    .line 100
    move v11, v15

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineRight(I)F

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    int-to-float v14, v11

    .line 107
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    int-to-float v0, v0

    .line 112
    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 113
    .line 114
    move-object/from16 v12, p3

    .line 115
    .line 116
    move v11, v15

    .line 117
    move/from16 v16, v0

    .line 118
    .line 119
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 123
    .line 124
    if-ge v9, v10, :cond_4

    .line 125
    .line 126
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineTop(I)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/4 v13, 0x0

    .line 135
    int-to-float v14, v0

    .line 136
    int-to-float v0, v1

    .line 137
    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 138
    .line 139
    move-object/from16 v12, p3

    .line 140
    .line 141
    move v15, v11

    .line 142
    move/from16 v16, v0

    .line 143
    .line 144
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineStart(I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move v1, v10

    .line 163
    move v3, v8

    .line 164
    move v4, v9

    .line 165
    move v5, v12

    .line 166
    move v8, v6

    .line 167
    move-object/from16 v6, p3

    .line 168
    .line 169
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-ne v0, v8, :cond_5

    .line 177
    .line 178
    int-to-float v14, v9

    .line 179
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    int-to-float v0, v12

    .line 184
    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 185
    .line 186
    move-object/from16 v12, p3

    .line 187
    .line 188
    move v13, v11

    .line 189
    move/from16 v16, v0

    .line 190
    .line 191
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    const/4 v2, 0x0

    .line 196
    int-to-float v3, v9

    .line 197
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    int-to-float v5, v12

    .line 202
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 203
    .line 204
    move-object/from16 v1, p3

    .line 205
    .line 206
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    return-void
.end method

.method public final getSpacingAdd()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v0, "attempted to reduce Layout width"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public isLevelBoundary(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_7

    .line 13
    .line 14
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-eq p1, v2, :cond_4

    .line 31
    .line 32
    if-ne p1, v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sub-int/2addr p1, v2

    .line 36
    move v0, v3

    .line 37
    :goto_0
    array-length v2, v1

    .line 38
    if-ge v0, v2, :cond_3

    .line 39
    .line 40
    aget v2, v1, v0

    .line 41
    .line 42
    if-ne p1, v2, :cond_2

    .line 43
    .line 44
    return v5

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return v3

    .line 49
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, v5, :cond_5

    .line 54
    .line 55
    move v0, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_5
    move v0, v5

    .line 58
    :goto_2
    if-ne p1, v2, :cond_6

    .line 59
    .line 60
    move p1, v3

    .line 61
    goto :goto_3

    .line 62
    :cond_6
    array-length p1, v1

    .line 63
    add-int/lit8 p1, p1, -0x2

    .line 64
    .line 65
    :goto_3
    add-int/2addr p1, v5

    .line 66
    aget p1, v1, p1

    .line 67
    .line 68
    ushr-int/lit8 p1, p1, 0x1a

    .line 69
    .line 70
    and-int/lit8 p1, p1, 0x3f

    .line 71
    .line 72
    if-eq p1, v0, :cond_7

    .line 73
    .line 74
    move v3, v5

    .line 75
    :cond_7
    :goto_4
    return v3
.end method

.method public isRtlCharAt(I)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    return v4

    .line 21
    :cond_1
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    move v2, v3

    .line 28
    :goto_0
    array-length v5, v1

    .line 29
    if-ge v2, v5, :cond_4

    .line 30
    .line 31
    aget v5, v1, v2

    .line 32
    .line 33
    add-int/2addr v5, v0

    .line 34
    add-int/lit8 v6, v2, 0x1

    .line 35
    .line 36
    aget v6, v1, v6

    .line 37
    .line 38
    const v7, 0x3ffffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v7, v6

    .line 42
    add-int/2addr v7, v5

    .line 43
    if-lt p1, v5, :cond_3

    .line 44
    .line 45
    if-ge p1, v7, :cond_3

    .line 46
    .line 47
    ushr-int/lit8 p1, v6, 0x1a

    .line 48
    .line 49
    and-int/lit8 p1, p1, 0x3f

    .line 50
    .line 51
    and-int/2addr p1, v4

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    move v3, v4

    .line 55
    :cond_2
    return v3

    .line 56
    :cond_3
    add-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    return v3
.end method

.method public final isSpanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 0

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 6
    .line 7
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 8
    .line 9
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 10
    .line 11
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 12
    .line 13
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 14
    .line 15
    instance-of p1, p1, Landroid/text/Spanned;

    .line 16
    .line 17
    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Layout: "

    .line 23
    .line 24
    const-string p4, " < 0"

    .line 25
    .line 26
    invoke-static {p2, p3, p4}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setJustificationMode(I)V
    .locals 0

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :cond_2
    :goto_0
    return v1
.end method
