.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Landroid/text/TextLine;

    .line 3
    .line 4
    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/text/TextPaint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    new-instance v0, Landroid/text/TextPaint;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 17
    .line 18
    new-instance v0, Landroid/text/SpanSet;

    .line 19
    .line 20
    const-class v1, Landroid/text/style/MetricAffectingSpan;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 26
    .line 27
    new-instance v0, Landroid/text/SpanSet;

    .line 28
    .line 29
    const-class v1, Landroid/text/style/CharacterStyle;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 35
    .line 36
    new-instance v0, Landroid/text/SpanSet;

    .line 37
    .line 38
    const-class v1, Landroid/text/style/ReplacementSpan;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 44
    .line 45
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$1;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    .line 59
    .line 60
    return-void
.end method

.method private adjustHyphenEdit(III)I
    .locals 0

    if-lez p1, :cond_0

    and-int/lit8 p3, p3, -0x19

    :cond_0
    iget p1, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, p1, :cond_1

    and-int/lit8 p3, p3, -0x8

    :cond_1
    return p3
.end method

.method private countStretchableSpaces(II)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/text/TextLine;->nextStretchableSpace(II)I

    move-result p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    iget v0, v12, Landroid/text/TextLine;->mDir:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    move/from16 v6, p4

    .line 10
    .line 11
    if-ne v1, v6, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, p0

    .line 15
    move/from16 v1, p2

    .line 16
    .line 17
    move/from16 v2, p3

    .line 18
    .line 19
    move/from16 v3, p3

    .line 20
    .line 21
    move/from16 v4, p4

    .line 22
    .line 23
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    neg-float v13, v0

    .line 28
    add-float v7, p5, v13

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move-object v5, p1

    .line 34
    move v6, v7

    .line 35
    move/from16 v7, p6

    .line 36
    .line 37
    move/from16 v8, p7

    .line 38
    .line 39
    move/from16 v9, p8

    .line 40
    .line 41
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 42
    .line 43
    .line 44
    return v13

    .line 45
    :cond_1
    const/4 v10, 0x0

    .line 46
    move-object v0, p0

    .line 47
    move/from16 v1, p2

    .line 48
    .line 49
    move/from16 v2, p3

    .line 50
    .line 51
    move/from16 v3, p3

    .line 52
    .line 53
    move/from16 v4, p4

    .line 54
    .line 55
    move-object v5, p1

    .line 56
    move/from16 v6, p5

    .line 57
    .line 58
    move/from16 v7, p6

    .line 59
    .line 60
    move/from16 v8, p7

    .line 61
    .line 62
    move/from16 v9, p8

    .line 63
    .line 64
    move/from16 v11, p9

    .line 65
    .line 66
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    return v0
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    add-float/2addr p7, v0

    .line 5
    add-float v2, p7, p3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    .line 14
    move-result-object p7

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    add-float v4, v2, p4

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    move v1, p5

    .line 35
    move v3, p6

    .line 36
    move-object v5, p0

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    .line 4
    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    sub-int v4, p4, p3

    .line 9
    .line 10
    sub-int v6, p6, p5

    .line 11
    .line 12
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    .line 13
    .line 14
    int-to-float v8, v1

    .line 15
    move-object v1, p1

    .line 16
    move/from16 v3, p3

    .line 17
    .line 18
    move/from16 v5, p5

    .line 19
    .line 20
    move/from16 v7, p8

    .line 21
    .line 22
    move/from16 v9, p7

    .line 23
    .line 24
    move-object v10, p2

    .line 25
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    .line 30
    .line 31
    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 32
    .line 33
    add-int v5, v2, p3

    .line 34
    .line 35
    add-int v6, v2, p4

    .line 36
    .line 37
    add-int v7, v2, p5

    .line 38
    .line 39
    add-int v8, v2, p6

    .line 40
    .line 41
    int-to-float v10, v1

    .line 42
    move-object v3, p1

    .line 43
    move/from16 v9, p8

    .line 44
    .line 45
    move/from16 v11, p7

    .line 46
    .line 47
    move-object v12, p2

    .line 48
    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6

    .line 1
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2
    .line 3
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 4
    .line 5
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 6
    .line 7
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 8
    .line 9
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->isStrikeThruText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->isUnderlineText()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    .line 25
    .line 26
    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 27
    .line 28
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    .line 29
    .line 30
    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, v1, p2}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 8

    .line 1
    if-ltz p1, :cond_b

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, p1

    .line 10
    :goto_0
    if-ne p5, v0, :cond_1

    .line 11
    .line 12
    goto/16 :goto_7

    .line 13
    .line 14
    :cond_1
    iget-object v1, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 15
    .line 16
    iget-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/text/TextLine;->mAddedWidth:F

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setWordSpacing(F)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    :cond_2
    move v3, p2

    .line 31
    goto :goto_5

    .line 32
    :cond_3
    if-eqz p6, :cond_4

    .line 33
    .line 34
    add-int/lit8 v0, p5, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    move v0, p5

    .line 38
    :goto_1
    iget v2, p0, Landroid/text/TextLine;->mStart:I

    .line 39
    .line 40
    add-int/2addr v2, p3

    .line 41
    :goto_2
    iget-object p3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 42
    .line 43
    iget v3, p0, Landroid/text/TextLine;->mStart:I

    .line 44
    .line 45
    add-int/2addr v3, p2

    .line 46
    const-class v4, Landroid/text/style/MetricAffectingSpan;

    .line 47
    .line 48
    invoke-interface {p3, v3, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    iget v3, p0, Landroid/text/TextLine;->mStart:I

    .line 53
    .line 54
    sub-int/2addr p3, v3

    .line 55
    if-lt p3, v0, :cond_a

    .line 56
    .line 57
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 58
    .line 59
    add-int v2, v3, p2

    .line 60
    .line 61
    add-int/2addr v3, p3

    .line 62
    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 67
    .line 68
    iget-object v2, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 69
    .line 70
    invoke-static {v0, v2, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 75
    .line 76
    array-length v2, v0

    .line 77
    if-lez v2, :cond_2

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    move v3, p1

    .line 81
    :goto_3
    array-length v4, v0

    .line 82
    if-ge v3, v4, :cond_6

    .line 83
    .line 84
    aget-object v4, v0, v3

    .line 85
    .line 86
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    .line 87
    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    check-cast v4, Landroid/text/style/ReplacementSpan;

    .line 91
    .line 92
    move-object v2, v4

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {v4, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 95
    .line 96
    .line 97
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    if-eqz v2, :cond_2

    .line 101
    .line 102
    if-eqz p6, :cond_7

    .line 103
    .line 104
    move p2, p3

    .line 105
    :cond_7
    return p2

    .line 106
    :goto_5
    if-eqz p6, :cond_8

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    const/4 p1, 0x2

    .line 110
    :goto_6
    move v7, p1

    .line 111
    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 112
    .line 113
    if-eqz p1, :cond_9

    .line 114
    .line 115
    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    .line 116
    .line 117
    sub-int v4, p3, v3

    .line 118
    .line 119
    move v5, p4

    .line 120
    move v6, p5

    .line 121
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    return p1

    .line 126
    :cond_9
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 127
    .line 128
    iget p1, p0, Landroid/text/TextLine;->mStart:I

    .line 129
    .line 130
    add-int/2addr v3, p1

    .line 131
    add-int v4, p1, p3

    .line 132
    .line 133
    add-int v6, p1, p5

    .line 134
    .line 135
    move v5, p4

    .line 136
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iget p2, p0, Landroid/text/TextLine;->mStart:I

    .line 141
    .line 142
    sub-int/2addr p1, p2

    .line 143
    return p1

    .line 144
    :cond_a
    move p2, p3

    .line 145
    goto :goto_2

    .line 146
    :cond_b
    :goto_7
    if-eqz p6, :cond_c

    .line 147
    .line 148
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 149
    .line 150
    iget p2, p0, Landroid/text/TextLine;->mStart:I

    .line 151
    .line 152
    add-int/2addr p5, p2

    .line 153
    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget p2, p0, Landroid/text/TextLine;->mStart:I

    .line 158
    .line 159
    sub-int/2addr p1, p2

    .line 160
    return p1

    .line 161
    :cond_c
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 162
    .line 163
    iget p2, p0, Landroid/text/TextLine;->mStart:I

    .line 164
    .line 165
    add-int/2addr p5, p2

    .line 166
    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget p2, p0, Landroid/text/TextLine;->mStart:I

    .line 171
    .line 172
    sub-int/2addr p1, p2

    .line 173
    return p1
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move v7, p5

    .line 13
    move/from16 v8, p6

    .line 14
    .line 15
    move/from16 v9, p7

    .line 16
    .line 17
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    return v1

    .line 22
    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    .line 23
    .line 24
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 25
    .line 26
    add-int v4, v1, p2

    .line 27
    .line 28
    add-int v5, v1, p3

    .line 29
    .line 30
    add-int v6, v1, p4

    .line 31
    .line 32
    add-int v7, v1, p5

    .line 33
    .line 34
    add-int v9, v1, p7

    .line 35
    .line 36
    move-object v2, p1

    .line 37
    move/from16 v8, p6

    .line 38
    .line 39
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Paint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    return v1
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p11

    .line 4
    .line 5
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    .line 6
    .line 7
    add-int v8, v1, p3

    .line 8
    .line 9
    add-int v9, v1, p4

    .line 10
    .line 11
    if-nez p12, :cond_1

    .line 12
    .line 13
    if-eqz p6, :cond_0

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    move v11, v1

    .line 20
    goto :goto_4

    .line 21
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 22
    if-eqz v7, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    move v10, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v10, v1

    .line 28
    :goto_1
    if-eqz v10, :cond_3

    .line 29
    .line 30
    iget v1, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 31
    .line 32
    iget v2, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 33
    .line 34
    iget v3, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 35
    .line 36
    iget v4, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 37
    .line 38
    iget v5, v7, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 39
    .line 40
    move v11, v1

    .line 41
    move v12, v2

    .line 42
    move v13, v3

    .line 43
    move v14, v4

    .line 44
    move v15, v5

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move v11, v1

    .line 47
    move v12, v11

    .line 48
    move v13, v12

    .line 49
    move v14, v13

    .line 50
    move v15, v14

    .line 51
    :goto_2
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 52
    .line 53
    move-object/from16 v1, p1

    .line 54
    .line 55
    move-object/from16 v2, p2

    .line 56
    .line 57
    move v4, v8

    .line 58
    move v5, v9

    .line 59
    move-object/from16 v6, p11

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-float v6, v1

    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    move-object/from16 v1, p11

    .line 69
    .line 70
    move v2, v11

    .line 71
    move v3, v12

    .line 72
    move v4, v13

    .line 73
    move v5, v14

    .line 74
    move v7, v6

    .line 75
    move v6, v15

    .line 76
    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    move v7, v6

    .line 81
    :goto_3
    move v11, v7

    .line 82
    :goto_4
    if-eqz p6, :cond_6

    .line 83
    .line 84
    if-eqz p5, :cond_5

    .line 85
    .line 86
    sub-float v1, p7, v11

    .line 87
    .line 88
    move v6, v1

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    move/from16 v6, p7

    .line 91
    .line 92
    :goto_5
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 93
    .line 94
    move-object/from16 v1, p1

    .line 95
    .line 96
    move-object/from16 v2, p6

    .line 97
    .line 98
    move v4, v8

    .line 99
    move v5, v9

    .line 100
    move/from16 v7, p8

    .line 101
    .line 102
    move/from16 v8, p9

    .line 103
    .line 104
    move/from16 v9, p10

    .line 105
    .line 106
    move-object/from16 v10, p2

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    if-eqz p5, :cond_7

    .line 112
    .line 113
    neg-float v11, v11

    .line 114
    :cond_7
    return v11
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 28

    move-object/from16 v15, p0

    move/from16 v4, p1

    move/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p10

    if-lt v14, v4, :cond_19

    if-gt v14, v13, :cond_19

    if-ne v4, v14, :cond_1

    .line 1
    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 2
    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v12, :cond_0

    .line 3
    invoke-static {v12, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v4

    add-int/2addr v2, v13

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 6
    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v4

    add-int/2addr v2, v13

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 7
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_4

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v0, v17

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v0, v16

    :goto_2
    if-nez v0, :cond_5

    .line 8
    iget-object v1, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 9
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v0

    invoke-direct {v15, v4, v13, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p2

    move-object/from16 v15, v16

    .line 11
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    return v0

    :cond_5
    move/from16 v18, p6

    move v15, v4

    :goto_3
    if-ge v15, v14, :cond_18

    move-object/from16 v11, p0

    .line 12
    iget-object v10, v11, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 13
    iget-object v0, v11, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 14
    iget-object v0, v11, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v11, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v15

    add-int/2addr v1, v13

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v11, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    .line 15
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    move-object v1, v0

    move/from16 v0, v17

    .line 16
    :goto_4
    iget-object v2, v11, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v3, :cond_9

    .line 17
    iget-object v3, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v0

    iget v4, v11, Landroid/text/TextLine;->mStart:I

    add-int v5, v4, v8

    if-ge v3, v5, :cond_8

    iget-object v3, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v0

    add-int/2addr v4, v15

    if-gt v3, v4, :cond_6

    goto :goto_5

    .line 18
    :cond_6
    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v2, v2, v0

    .line 19
    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_7

    .line 20
    move-object v1, v2

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_5

    .line 21
    :cond_7
    invoke-virtual {v2, v10}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_c

    if-nez p11, :cond_b

    if-ge v8, v14, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v19, v17

    goto :goto_7

    :cond_b
    :goto_6
    move/from16 v19, v16

    :goto_7
    move-object/from16 v0, p0

    move-object v2, v10

    move v3, v15

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v18

    move/from16 v8, p7

    move/from16 v20, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v15, v11

    move-object/from16 v11, p10

    move/from16 v12, v19

    .line 22
    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    goto/16 :goto_12

    :cond_c
    move/from16 v20, v9

    move-object v12, v11

    .line 23
    iget-object v11, v12, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 24
    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 25
    iget-object v9, v12, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 26
    iget-object v0, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v3, v8

    move-object v0, v12

    move v2, v15

    move v7, v2

    :goto_8
    if-ge v7, v8, :cond_15

    .line 27
    iget-object v1, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v4, v7

    add-int v4, v4, v20

    invoke-virtual {v1, v5, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v6, v1, v4

    .line 28
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 29
    iget-object v4, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v4, v17

    .line 30
    :goto_9
    iget-object v5, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move/from16 p1, v6

    iget v6, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v4, v6, :cond_f

    .line 31
    iget-object v6, v5, Landroid/text/SpanSet;->spanStarts:[I

    aget v6, v6, v4

    iget v12, v0, Landroid/text/TextLine;->mStart:I

    add-int v13, v12, v1

    if-ge v6, v13, :cond_e

    iget-object v6, v5, Landroid/text/SpanSet;->spanEnds:[I

    aget v6, v6, v4

    add-int/2addr v12, v7

    if-gt v6, v12, :cond_d

    goto :goto_a

    .line 32
    :cond_d
    iget-object v5, v5, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v5, [Landroid/text/style/CharacterStyle;

    aget-object v5, v5, v4

    .line 33
    invoke-virtual {v5, v10}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_e
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, p0

    move/from16 v6, p1

    move/from16 v13, p3

    goto :goto_9

    .line 34
    :cond_f
    invoke-direct {v0, v10, v9}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v7, v15, :cond_10

    .line 35
    invoke-virtual {v11, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto/16 :goto_d

    .line 36
    :cond_10
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->hasEqualAttributes(Landroid/text/TextPaint;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 37
    iget-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v1

    .line 39
    invoke-direct {v0, v2, v3, v1}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    if-nez p11, :cond_12

    if-ge v3, v14, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v13, v17

    goto :goto_c

    :cond_12
    :goto_b
    move/from16 v13, v16

    .line 40
    :goto_c
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v19

    iget-object v12, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object v1, v11

    move v4, v15

    move/from16 v5, v20

    move/from16 v21, p1

    move/from16 v6, p4

    move/from16 v22, v7

    move-object/from16 v7, p5

    move/from16 v23, v8

    move/from16 v8, v18

    move-object/from16 v24, v9

    move/from16 v9, p7

    move-object/from16 v25, v10

    move/from16 v10, p8

    move-object/from16 v26, v11

    move/from16 v11, p9

    move-object/from16 v27, v12

    move-object/from16 v12, p10

    move/from16 v14, v19

    move/from16 v19, v15

    move-object/from16 v15, v27

    .line 41
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v18, v18, v0

    move-object/from16 v1, v25

    move-object/from16 v4, v26

    .line 42
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v15, p0

    .line 43
    iget-object v0, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v0, v15

    move/from16 v2, v22

    goto :goto_e

    :cond_13
    :goto_d
    move/from16 v21, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object v1, v10

    move-object v4, v11

    move/from16 v19, v15

    move-object/from16 v15, p0

    .line 44
    :goto_e
    invoke-virtual/range {v24 .. v24}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 45
    invoke-virtual/range {v24 .. v24}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v3

    move/from16 v5, v22

    .line 46
    iput v5, v3, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v5, v21

    .line 47
    iput v5, v3, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 48
    iget-object v6, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    move/from16 v5, v21

    :goto_f
    move/from16 v14, p2

    move/from16 v13, p3

    move-object v10, v1

    move-object v11, v4

    move v3, v5

    move v7, v3

    move-object v12, v15

    move/from16 v15, v19

    move/from16 v8, v23

    move-object/from16 v9, v24

    goto/16 :goto_8

    :cond_15
    move/from16 v23, v8

    move-object v4, v11

    move/from16 v19, v15

    move-object v15, v12

    .line 49
    iget-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v1

    .line 51
    invoke-direct {v0, v2, v3, v1}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setHyphenEdit(I)V

    move/from16 v14, p2

    if-nez p11, :cond_17

    if-ge v3, v14, :cond_16

    goto :goto_10

    :cond_16
    move/from16 v13, v17

    goto :goto_11

    :cond_17
    :goto_10
    move/from16 v13, v16

    :goto_11
    move/from16 v1, v23

    .line 52
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    iget-object v12, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, v18

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v19, v12

    move-object/from16 v12, p10

    move/from16 v14, v21

    move-object/from16 v15, v19

    .line 53
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    :goto_12
    add-float v18, v18, v0

    move/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p10

    move/from16 v15, v20

    goto/16 :goto_3

    :cond_18
    sub-float v18, v18, p6

    return v18

    .line 54
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "measureLimit ("

    const-string v2, ") is out of start ("

    const-string v3, ") and limit ("

    move/from16 v5, p2

    .line 55
    invoke-static {v1, v5, v2, v4, v3}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") bounds"

    move/from16 v3, p3

    .line 56
    invoke-static {v1, v3, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p10

    move-object/from16 v0, p12

    move-object/from16 v11, p0

    move-object/from16 v12, p15

    .line 1
    iget v1, v11, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setWordSpacing(F)V

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, v8}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v0, 0x0

    move/from16 v13, p3

    if-ne v13, v9, :cond_1

    return v0

    :cond_1
    if-nez v12, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v15, v1

    :goto_0
    if-nez p13, :cond_3

    if-eqz p7, :cond_4

    .line 4
    iget v1, v8, Landroid/text/TextPaint;->bgColor:I

    if-nez v1, :cond_3

    if-nez v15, :cond_3

    if-eqz p6, :cond_4

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p14

    .line 5
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v0

    :cond_4
    move v7, v0

    if-eqz p7, :cond_c

    if-eqz p6, :cond_5

    sub-float v0, p8, v7

    move/from16 v16, p8

    move/from16 v17, v0

    goto :goto_1

    :cond_5
    add-float v0, p8, v7

    move/from16 v17, p8

    move/from16 v16, v0

    .line 6
    :goto_1
    iget v0, v8, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v5

    .line 9
    iget v0, v8, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p9

    int-to-float v2, v0

    move/from16 v0, p11

    int-to-float v4, v0

    move-object/from16 v0, p7

    move/from16 v1, v17

    move/from16 v3, v16

    move-object v14, v5

    move-object/from16 v5, p1

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    if-eqz v15, :cond_b

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_b

    .line 14
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/text/TextLine$DecorationInfo;

    .line 15
    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 16
    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v6

    move/from16 v6, p6

    move v11, v7

    move/from16 v7, v18

    .line 17
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v18

    move/from16 v7, v19

    .line 18
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v0

    if-eqz p6, :cond_7

    sub-float v0, v16, v0

    sub-float v1, v16, v18

    move/from16 v18, v0

    move/from16 v19, v1

    goto :goto_3

    :cond_7
    add-float v18, v17, v18

    add-float v0, v17, v0

    move/from16 v19, v0

    .line 19
    :goto_3
    iget v2, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getUnderlinePosition()F

    move-result v3

    iget v4, v9, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    int-to-float v7, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v5, v18

    move/from16 v6, v19

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 21
    :cond_8
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getUnderlinePosition()F

    move-result v3

    int-to-float v6, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v5, v18

    move/from16 v20, v6

    move/from16 v6, v19

    move v12, v7

    move/from16 v7, v20

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_4

    :cond_9
    move v12, v7

    .line 24
    :goto_4
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v5, v18

    move/from16 v6, v19

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, p2

    move-object/from16 v12, p15

    move v7, v11

    move-object/from16 v11, p0

    goto/16 :goto_2

    :cond_b
    move v11, v7

    .line 27
    iget v0, v8, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    goto :goto_5

    :cond_c
    move v11, v7

    :goto_5
    if-eqz p6, :cond_d

    neg-float v7, v11

    goto :goto_6

    :cond_d
    move v7, v11

    :goto_6
    return v7
.end method

.method public static isLineEndSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isStretchableWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private nextStretchableSpace(II)I
    .locals 2

    .line 1
    :goto_0
    if-ge p1, p2, :cond_2

    .line 2
    .line 3
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    .line 8
    .line 9
    aget-char v0, v0, p1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 13
    .line 14
    iget v1, p0, Landroid/text/TextLine;->mStart:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_1
    invoke-direct {p0, v0}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return p1

    .line 28
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return p2
.end method

.method public static obtain()Landroid/text/TextLine;
    .locals 5

    .line 1
    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, v0

    .line 5
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    if-ltz v1, :cond_1

    .line 8
    .line 9
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 10
    .line 11
    aget-object v3, v2, v1

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v4, v2, v1

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v3

    .line 20
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v0, Landroid/text/TextLine;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 11
    .line 12
    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    .line 13
    .line 14
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 34
    .line 35
    array-length v4, v3

    .line 36
    if-ge v2, v4, :cond_1

    .line 37
    .line 38
    aget-object v4, v3, v2

    .line 39
    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    aput-object p0, v3, v2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    monitor-exit v1

    .line 49
    return-object v0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 8
    .line 9
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 16
    .line 17
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 18
    .line 19
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 24
    .line 25
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 26
    .line 27
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 32
    .line 33
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 34
    .line 35
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIII)V
    .locals 22

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 8
    .line 9
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    move-object/from16 v0, p0

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    move/from16 v5, p2

    .line 23
    .line 24
    move/from16 v6, p3

    .line 25
    .line 26
    move/from16 v7, p4

    .line 27
    .line 28
    move/from16 v8, p5

    .line 29
    .line 30
    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    move-object/from16 v1, p1

    .line 46
    .line 47
    move/from16 v5, p2

    .line 48
    .line 49
    move/from16 v6, p3

    .line 50
    .line 51
    move/from16 v7, p4

    .line 52
    .line 53
    move/from16 v8, p5

    .line 54
    .line 55
    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 60
    .line 61
    iget-object v11, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 62
    .line 63
    array-length v0, v11

    .line 64
    add-int/lit8 v12, v0, -0x2

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    :goto_0
    array-length v1, v11

    .line 69
    if-ge v14, v1, :cond_d

    .line 70
    .line 71
    aget v1, v11, v14

    .line 72
    .line 73
    add-int/lit8 v2, v14, 0x1

    .line 74
    .line 75
    aget v2, v11, v2

    .line 76
    .line 77
    const v3, 0x3ffffff

    .line 78
    .line 79
    .line 80
    and-int/2addr v3, v2

    .line 81
    add-int/2addr v3, v1

    .line 82
    iget v4, v10, Landroid/text/TextLine;->mLen:I

    .line 83
    .line 84
    if-le v3, v4, :cond_2

    .line 85
    .line 86
    move v15, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v15, v3

    .line 89
    :goto_1
    const/high16 v3, 0x4000000

    .line 90
    .line 91
    and-int/2addr v2, v3

    .line 92
    const/16 v16, 0x1

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    move/from16 v17, v16

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const/16 v17, 0x0

    .line 100
    .line 101
    :goto_2
    iget-boolean v2, v10, Landroid/text/TextLine;->mHasTabs:Z

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    move v2, v1

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v2, v15

    .line 108
    :goto_3
    move/from16 v18, v0

    .line 109
    .line 110
    move v9, v2

    .line 111
    move v2, v1

    .line 112
    :goto_4
    if-gt v9, v15, :cond_c

    .line 113
    .line 114
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    if-ge v9, v15, :cond_6

    .line 119
    .line 120
    iget-object v0, v10, Landroid/text/TextLine;->mChars:[C

    .line 121
    .line 122
    aget-char v1, v0, v9

    .line 123
    .line 124
    const v3, 0xd800

    .line 125
    .line 126
    .line 127
    if-lt v1, v3, :cond_5

    .line 128
    .line 129
    const v3, 0xdc00

    .line 130
    .line 131
    .line 132
    if-ge v1, v3, :cond_5

    .line 133
    .line 134
    add-int/lit8 v3, v9, 0x1

    .line 135
    .line 136
    if-ge v3, v15, :cond_5

    .line 137
    .line 138
    invoke-static {v0, v9}, Ljava/lang/Character;->codePointAt([CI)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const v0, 0xffff

    .line 143
    .line 144
    .line 145
    if-le v1, v0, :cond_5

    .line 146
    .line 147
    move v9, v3

    .line 148
    goto :goto_6

    .line 149
    :cond_5
    move v8, v1

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    const/4 v8, 0x0

    .line 152
    :goto_5
    const/16 v7, 0x9

    .line 153
    .line 154
    if-eq v9, v15, :cond_8

    .line 155
    .line 156
    if-ne v8, v7, :cond_7

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_7
    :goto_6
    move-object/from16 v20, v11

    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_8
    :goto_7
    add-float v5, p2, v18

    .line 163
    .line 164
    if-ne v14, v12, :cond_a

    .line 165
    .line 166
    iget v0, v10, Landroid/text/TextLine;->mLen:I

    .line 167
    .line 168
    if-eq v9, v0, :cond_9

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_9
    const/16 v19, 0x0

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_a
    :goto_8
    move/from16 v19, v16

    .line 175
    .line 176
    :goto_9
    move-object/from16 v0, p0

    .line 177
    .line 178
    move-object/from16 v1, p1

    .line 179
    .line 180
    move v3, v9

    .line 181
    move/from16 v4, v17

    .line 182
    .line 183
    move/from16 v6, p3

    .line 184
    .line 185
    move v13, v7

    .line 186
    move/from16 v7, p4

    .line 187
    .line 188
    move-object/from16 v20, v11

    .line 189
    .line 190
    move v11, v8

    .line 191
    move/from16 v8, p5

    .line 192
    .line 193
    move/from16 v21, v9

    .line 194
    .line 195
    move/from16 v9, v19

    .line 196
    .line 197
    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    add-float v18, v18, v0

    .line 202
    .line 203
    if-ne v11, v13, :cond_b

    .line 204
    .line 205
    iget v0, v10, Landroid/text/TextLine;->mDir:I

    .line 206
    .line 207
    int-to-float v1, v0

    .line 208
    int-to-float v0, v0

    .line 209
    mul-float v0, v0, v18

    .line 210
    .line 211
    invoke-virtual {v10, v0}, Landroid/text/TextLine;->nextTab(F)F

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    mul-float/2addr v1, v0

    .line 216
    move/from16 v18, v1

    .line 217
    .line 218
    :cond_b
    add-int/lit8 v2, v21, 0x1

    .line 219
    .line 220
    move/from16 v9, v21

    .line 221
    .line 222
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 223
    .line 224
    move-object/from16 v11, v20

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_c
    move-object/from16 v20, v11

    .line 228
    .line 229
    add-int/lit8 v14, v14, 0x2

    .line 230
    .line 231
    move/from16 v0, v18

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_d
    return-void
.end method

.method public getOffsetToLeftRightOf(IZ)I
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v5, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget v9, v7, Landroid/text/TextLine;->mLen:I

    .line 8
    .line 9
    iget v0, v7, Landroid/text/TextLine;->mDir:I

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    const/4 v12, -0x1

    .line 13
    if-ne v0, v12, :cond_0

    .line 14
    .line 15
    const/4 v13, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v13, v11

    .line 18
    :goto_0
    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 19
    .line 20
    iget-object v14, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 21
    .line 22
    const v16, 0x3ffffff

    .line 23
    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    move v15, v11

    .line 28
    const/4 v0, -0x2

    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_1
    if-ne v5, v9, :cond_2

    .line 32
    .line 33
    array-length v0, v14

    .line 34
    move v15, v11

    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_2
    move v2, v9

    .line 38
    move v0, v11

    .line 39
    move v1, v0

    .line 40
    :goto_1
    array-length v3, v14

    .line 41
    if-ge v0, v3, :cond_a

    .line 42
    .line 43
    aget v1, v14, v0

    .line 44
    .line 45
    add-int/2addr v1, v11

    .line 46
    if-lt v5, v1, :cond_9

    .line 47
    .line 48
    add-int/lit8 v2, v0, 0x1

    .line 49
    .line 50
    aget v2, v14, v2

    .line 51
    .line 52
    and-int v3, v2, v16

    .line 53
    .line 54
    add-int/2addr v3, v1

    .line 55
    if-le v3, v9, :cond_3

    .line 56
    .line 57
    move v3, v9

    .line 58
    :cond_3
    if-ge v5, v3, :cond_8

    .line 59
    .line 60
    ushr-int/lit8 v2, v2, 0x1a

    .line 61
    .line 62
    and-int/lit8 v2, v2, 0x3f

    .line 63
    .line 64
    if-ne v5, v1, :cond_7

    .line 65
    .line 66
    add-int/lit8 v4, v5, -0x1

    .line 67
    .line 68
    move v6, v11

    .line 69
    :goto_2
    array-length v15, v14

    .line 70
    if-ge v6, v15, :cond_6

    .line 71
    .line 72
    aget v15, v14, v6

    .line 73
    .line 74
    add-int/2addr v15, v11

    .line 75
    if-lt v4, v15, :cond_5

    .line 76
    .line 77
    add-int/lit8 v17, v6, 0x1

    .line 78
    .line 79
    aget v17, v14, v17

    .line 80
    .line 81
    and-int v18, v17, v16

    .line 82
    .line 83
    add-int v10, v15, v18

    .line 84
    .line 85
    if-le v10, v9, :cond_4

    .line 86
    .line 87
    move v10, v9

    .line 88
    :cond_4
    if-ge v4, v10, :cond_5

    .line 89
    .line 90
    ushr-int/lit8 v17, v17, 0x1a

    .line 91
    .line 92
    and-int/lit8 v12, v17, 0x3f

    .line 93
    .line 94
    if-ge v12, v2, :cond_5

    .line 95
    .line 96
    move v0, v6

    .line 97
    move v3, v10

    .line 98
    move v2, v12

    .line 99
    move v1, v15

    .line 100
    const/4 v4, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    add-int/lit8 v6, v6, 0x2

    .line 103
    .line 104
    const/4 v12, -0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    move v4, v11

    .line 107
    :goto_3
    move v10, v0

    .line 108
    move v12, v1

    .line 109
    move v15, v2

    .line 110
    move/from16 v17, v3

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    move v10, v0

    .line 114
    move v12, v1

    .line 115
    move v15, v2

    .line 116
    move/from16 v17, v3

    .line 117
    .line 118
    move v4, v11

    .line 119
    goto :goto_4

    .line 120
    :cond_8
    move v2, v3

    .line 121
    :cond_9
    add-int/lit8 v0, v0, 0x2

    .line 122
    .line 123
    const/4 v12, -0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_a
    move v10, v0

    .line 126
    move v12, v1

    .line 127
    move/from16 v17, v2

    .line 128
    .line 129
    move v4, v11

    .line 130
    move v15, v4

    .line 131
    :goto_4
    array-length v0, v14

    .line 132
    if-eq v10, v0, :cond_11

    .line 133
    .line 134
    and-int/lit8 v0, v15, 0x1

    .line 135
    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    const/4 v6, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_b
    move v6, v11

    .line 141
    :goto_5
    if-ne v8, v6, :cond_c

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    goto :goto_6

    .line 145
    :cond_c
    move v3, v11

    .line 146
    :goto_6
    if-eqz v3, :cond_d

    .line 147
    .line 148
    move/from16 v0, v17

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_d
    move v0, v12

    .line 152
    :goto_7
    if-ne v5, v0, :cond_e

    .line 153
    .line 154
    if-eq v3, v4, :cond_11

    .line 155
    .line 156
    :cond_e
    move-object/from16 v0, p0

    .line 157
    .line 158
    move v1, v10

    .line 159
    move v2, v12

    .line 160
    move/from16 v19, v3

    .line 161
    .line 162
    move/from16 v3, v17

    .line 163
    .line 164
    move v4, v6

    .line 165
    move/from16 v5, p1

    .line 166
    .line 167
    move/from16 v6, v19

    .line 168
    .line 169
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v19, :cond_f

    .line 174
    .line 175
    move/from16 v12, v17

    .line 176
    .line 177
    :cond_f
    if-eq v0, v12, :cond_10

    .line 178
    .line 179
    return v0

    .line 180
    :cond_10
    :goto_8
    move v12, v0

    .line 181
    move v0, v10

    .line 182
    goto :goto_9

    .line 183
    :cond_11
    move v0, v10

    .line 184
    const/4 v12, -0x1

    .line 185
    :goto_9
    if-ne v8, v13, :cond_12

    .line 186
    .line 187
    const/4 v1, 0x1

    .line 188
    goto :goto_a

    .line 189
    :cond_12
    move v1, v11

    .line 190
    :goto_a
    if-eqz v1, :cond_13

    .line 191
    .line 192
    const/4 v2, 0x2

    .line 193
    goto :goto_b

    .line 194
    :cond_13
    const/4 v2, -0x2

    .line 195
    :goto_b
    add-int v10, v0, v2

    .line 196
    .line 197
    if-ltz v10, :cond_1c

    .line 198
    .line 199
    array-length v0, v14

    .line 200
    if-ge v10, v0, :cond_1c

    .line 201
    .line 202
    aget v0, v14, v10

    .line 203
    .line 204
    add-int v17, v11, v0

    .line 205
    .line 206
    add-int/lit8 v0, v10, 0x1

    .line 207
    .line 208
    aget v0, v14, v0

    .line 209
    .line 210
    and-int v1, v0, v16

    .line 211
    .line 212
    add-int v1, v17, v1

    .line 213
    .line 214
    if-le v1, v9, :cond_14

    .line 215
    .line 216
    move/from16 v19, v9

    .line 217
    .line 218
    goto :goto_c

    .line 219
    :cond_14
    move/from16 v19, v1

    .line 220
    .line 221
    :goto_c
    ushr-int/lit8 v0, v0, 0x1a

    .line 222
    .line 223
    and-int/lit8 v6, v0, 0x3f

    .line 224
    .line 225
    and-int/lit8 v0, v6, 0x1

    .line 226
    .line 227
    if-eqz v0, :cond_15

    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    goto :goto_d

    .line 231
    :cond_15
    move v4, v11

    .line 232
    :goto_d
    if-ne v8, v4, :cond_16

    .line 233
    .line 234
    const/4 v0, -0x1

    .line 235
    const/16 v20, 0x1

    .line 236
    .line 237
    goto :goto_e

    .line 238
    :cond_16
    move/from16 v20, v11

    .line 239
    .line 240
    const/4 v0, -0x1

    .line 241
    :goto_e
    if-ne v12, v0, :cond_1a

    .line 242
    .line 243
    if-eqz v20, :cond_17

    .line 244
    .line 245
    move/from16 v5, v17

    .line 246
    .line 247
    goto :goto_f

    .line 248
    :cond_17
    move/from16 v5, v19

    .line 249
    .line 250
    :goto_f
    move-object/from16 v0, p0

    .line 251
    .line 252
    move v1, v10

    .line 253
    move/from16 v2, v17

    .line 254
    .line 255
    move/from16 v3, v19

    .line 256
    .line 257
    move v12, v6

    .line 258
    move/from16 v6, v20

    .line 259
    .line 260
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v20, :cond_18

    .line 265
    .line 266
    move/from16 v1, v19

    .line 267
    .line 268
    goto :goto_10

    .line 269
    :cond_18
    move/from16 v1, v17

    .line 270
    .line 271
    :goto_10
    if-ne v0, v1, :cond_19

    .line 272
    .line 273
    move v15, v12

    .line 274
    goto :goto_8

    .line 275
    :cond_19
    move v12, v0

    .line 276
    goto :goto_12

    .line 277
    :cond_1a
    move v0, v6

    .line 278
    if-ge v0, v15, :cond_1f

    .line 279
    .line 280
    if-eqz v20, :cond_1b

    .line 281
    .line 282
    move/from16 v12, v17

    .line 283
    .line 284
    goto :goto_12

    .line 285
    :cond_1b
    move/from16 v12, v19

    .line 286
    .line 287
    goto :goto_12

    .line 288
    :cond_1c
    const/4 v0, -0x1

    .line 289
    if-ne v12, v0, :cond_1d

    .line 290
    .line 291
    if-eqz v1, :cond_19

    .line 292
    .line 293
    iget v0, v7, Landroid/text/TextLine;->mLen:I

    .line 294
    .line 295
    const/4 v1, 0x1

    .line 296
    add-int/lit8 v12, v0, 0x1

    .line 297
    .line 298
    goto :goto_12

    .line 299
    :cond_1d
    if-gt v12, v9, :cond_1f

    .line 300
    .line 301
    if-eqz v1, :cond_1e

    .line 302
    .line 303
    goto :goto_11

    .line 304
    :cond_1e
    move v9, v11

    .line 305
    :goto_11
    move v12, v9

    .line 306
    :cond_1f
    :goto_12
    return v12
.end method

.method public justify(F)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    .line 2
    .line 3
    :goto_0
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget v2, p0, Landroid/text/TextLine;->mStart:I

    .line 8
    .line 9
    add-int/2addr v2, v0

    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v1, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-float/2addr p1, v0

    .line 43
    int-to-float v0, v2

    .line 44
    div-float/2addr p1, v0

    .line 45
    iput p1, p0, Landroid/text/TextLine;->mAddedWidth:F

    .line 46
    .line 47
    return-void
.end method

.method public measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v7, -0x1

    .line 8
    .line 9
    move v8, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v8, v7

    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    if-gez v8, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    .line 17
    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 21
    .line 22
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    move-object/from16 v0, p0

    .line 31
    .line 32
    move/from16 v2, p1

    .line 33
    .line 34
    move-object/from16 v5, p3

    .line 35
    .line 36
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :cond_2
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 42
    .line 43
    if-ne v1, v2, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    move/from16 v2, p1

    .line 52
    .line 53
    move-object/from16 v5, p3

    .line 54
    .line 55
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0

    .line 60
    :cond_3
    iget-object v9, v6, Landroid/text/TextLine;->mChars:[C

    .line 61
    .line 62
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 63
    .line 64
    iget-object v10, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    :goto_1
    array-length v1, v10

    .line 68
    if-ge v12, v1, :cond_15

    .line 69
    .line 70
    aget v1, v10, v12

    .line 71
    .line 72
    add-int/lit8 v2, v12, 0x1

    .line 73
    .line 74
    aget v2, v10, v2

    .line 75
    .line 76
    const v3, 0x3ffffff

    .line 77
    .line 78
    .line 79
    and-int/2addr v3, v2

    .line 80
    add-int/2addr v3, v1

    .line 81
    iget v4, v6, Landroid/text/TextLine;->mLen:I

    .line 82
    .line 83
    if-le v3, v4, :cond_4

    .line 84
    .line 85
    move v13, v4

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v13, v3

    .line 88
    :goto_2
    const/high16 v3, 0x4000000

    .line 89
    .line 90
    and-int/2addr v2, v3

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    const/4 v15, 0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const/4 v15, 0x0

    .line 96
    :goto_3
    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    .line 97
    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    move v2, v1

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    move v2, v13

    .line 103
    :goto_4
    move/from16 v16, v0

    .line 104
    .line 105
    move v5, v1

    .line 106
    move v4, v2

    .line 107
    :goto_5
    if-gt v4, v13, :cond_14

    .line 108
    .line 109
    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    if-ge v4, v13, :cond_8

    .line 114
    .line 115
    aget-char v0, v9, v4

    .line 116
    .line 117
    const v1, 0xd800

    .line 118
    .line 119
    .line 120
    if-lt v0, v1, :cond_7

    .line 121
    .line 122
    const v1, 0xdc00

    .line 123
    .line 124
    .line 125
    if-ge v0, v1, :cond_7

    .line 126
    .line 127
    add-int/lit8 v1, v4, 0x1

    .line 128
    .line 129
    if-ge v1, v13, :cond_7

    .line 130
    .line 131
    invoke-static {v9, v4}, Ljava/lang/Character;->codePointAt([CI)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const v2, 0xffff

    .line 136
    .line 137
    .line 138
    if-le v0, v2, :cond_7

    .line 139
    .line 140
    move v4, v1

    .line 141
    goto :goto_7

    .line 142
    :cond_7
    move v3, v0

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    const/4 v3, 0x0

    .line 145
    :goto_6
    const/16 v2, 0x9

    .line 146
    .line 147
    if-eq v4, v13, :cond_a

    .line 148
    .line 149
    if-ne v3, v2, :cond_9

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_9
    :goto_7
    const/4 v0, 0x1

    .line 153
    goto/16 :goto_e

    .line 154
    .line 155
    :cond_a
    :goto_8
    if-lt v8, v5, :cond_b

    .line 156
    .line 157
    if-ge v8, v4, :cond_b

    .line 158
    .line 159
    const/16 v17, 0x1

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_b
    const/16 v17, 0x0

    .line 163
    .line 164
    :goto_9
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    .line 165
    .line 166
    const/4 v1, -0x1

    .line 167
    if-ne v0, v1, :cond_c

    .line 168
    .line 169
    const/4 v0, 0x1

    .line 170
    goto :goto_a

    .line 171
    :cond_c
    const/4 v0, 0x0

    .line 172
    :goto_a
    if-ne v0, v15, :cond_d

    .line 173
    .line 174
    const/16 v18, 0x1

    .line 175
    .line 176
    goto :goto_b

    .line 177
    :cond_d
    const/16 v18, 0x0

    .line 178
    .line 179
    :goto_b
    if-eqz v17, :cond_e

    .line 180
    .line 181
    if-eqz v18, :cond_e

    .line 182
    .line 183
    move-object/from16 v0, p0

    .line 184
    .line 185
    move v1, v5

    .line 186
    move/from16 v2, p1

    .line 187
    .line 188
    move v3, v4

    .line 189
    move v4, v15

    .line 190
    move-object/from16 v5, p3

    .line 191
    .line 192
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    :goto_c
    add-float v16, v16, v0

    .line 197
    .line 198
    return v16

    .line 199
    :cond_e
    move-object/from16 v0, p0

    .line 200
    .line 201
    move v1, v5

    .line 202
    move v11, v2

    .line 203
    move v2, v4

    .line 204
    move v14, v3

    .line 205
    move v3, v4

    .line 206
    move/from16 v19, v4

    .line 207
    .line 208
    move v4, v15

    .line 209
    move/from16 v20, v5

    .line 210
    .line 211
    move-object/from16 v5, p3

    .line 212
    .line 213
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v18, :cond_f

    .line 218
    .line 219
    goto :goto_d

    .line 220
    :cond_f
    neg-float v0, v0

    .line 221
    :goto_d
    add-float v16, v16, v0

    .line 222
    .line 223
    if-eqz v17, :cond_10

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    move-object/from16 v0, p0

    .line 227
    .line 228
    move/from16 v1, v20

    .line 229
    .line 230
    move/from16 v2, p1

    .line 231
    .line 232
    move/from16 v3, v19

    .line 233
    .line 234
    move v4, v15

    .line 235
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    goto :goto_c

    .line 240
    :cond_10
    move/from16 v2, v19

    .line 241
    .line 242
    if-ne v14, v11, :cond_13

    .line 243
    .line 244
    if-ne v7, v2, :cond_11

    .line 245
    .line 246
    return v16

    .line 247
    :cond_11
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    .line 248
    .line 249
    int-to-float v1, v0

    .line 250
    int-to-float v0, v0

    .line 251
    mul-float v0, v0, v16

    .line 252
    .line 253
    invoke-virtual {v6, v0}, Landroid/text/TextLine;->nextTab(F)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    mul-float/2addr v1, v0

    .line 258
    if-ne v8, v2, :cond_12

    .line 259
    .line 260
    return v1

    .line 261
    :cond_12
    move/from16 v16, v1

    .line 262
    .line 263
    :cond_13
    add-int/lit8 v5, v2, 0x1

    .line 264
    .line 265
    move v4, v2

    .line 266
    goto :goto_7

    .line 267
    :goto_e
    add-int/2addr v4, v0

    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_14
    add-int/lit8 v12, v12, 0x2

    .line 271
    .line 272
    move/from16 v0, v16

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_15
    return v0
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    return p1
.end method

.method public nextTab(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x14

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 6
    .line 7
    sub-int p1, p4, p3

    .line 8
    .line 9
    iput p1, p0, Landroid/text/TextLine;->mLen:I

    .line 10
    .line 11
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 12
    .line 13
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 14
    .line 15
    if-eqz p6, :cond_7

    .line 16
    .line 17
    iput-boolean p7, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 21
    .line 22
    instance-of p1, p2, Landroid/text/Spanned;

    .line 23
    .line 24
    const/4 p5, 0x1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    move-object p1, p2

    .line 29
    check-cast p1, Landroid/text/Spanned;

    .line 30
    .line 31
    iput-object p1, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 32
    .line 33
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 34
    .line 35
    invoke-virtual {v1, p1, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 39
    .line 40
    iget p1, p1, Landroid/text/SpanSet;->numberOfSpans:I

    .line 41
    .line 42
    if-lez p1, :cond_0

    .line 43
    .line 44
    move p1, p5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p1, v0

    .line 47
    :goto_0
    if-nez p1, :cond_2

    .line 48
    .line 49
    if-nez p7, :cond_2

    .line 50
    .line 51
    sget-object p7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 52
    .line 53
    if-eq p6, p7, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move p6, v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    move p6, p5

    .line 59
    :goto_2
    iput-boolean p6, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 60
    .line 61
    if-eqz p6, :cond_6

    .line 62
    .line 63
    iget-object p6, p0, Landroid/text/TextLine;->mChars:[C

    .line 64
    .line 65
    if-eqz p6, :cond_3

    .line 66
    .line 67
    array-length p6, p6

    .line 68
    iget p7, p0, Landroid/text/TextLine;->mLen:I

    .line 69
    .line 70
    if-ge p6, p7, :cond_4

    .line 71
    .line 72
    :cond_3
    iget p6, p0, Landroid/text/TextLine;->mLen:I

    .line 73
    .line 74
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    .line 75
    .line 76
    .line 77
    move-result-object p6

    .line 78
    iput-object p6, p0, Landroid/text/TextLine;->mChars:[C

    .line 79
    .line 80
    :cond_4
    iget-object p6, p0, Landroid/text/TextLine;->mChars:[C

    .line 81
    .line 82
    invoke-static {p2, p3, p4, p6, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    .line 88
    .line 89
    move p2, p3

    .line 90
    :goto_3
    if-ge p2, p4, :cond_6

    .line 91
    .line 92
    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 93
    .line 94
    invoke-virtual {p6, p2, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    .line 95
    .line 96
    .line 97
    move-result p6

    .line 98
    iget-object p7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 99
    .line 100
    invoke-virtual {p7, p2, p6}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    .line 101
    .line 102
    .line 103
    move-result p7

    .line 104
    if-eqz p7, :cond_5

    .line 105
    .line 106
    sub-int/2addr p2, p3

    .line 107
    const p7, 0xfffc

    .line 108
    .line 109
    .line 110
    aput-char p7, p1, p2

    .line 111
    .line 112
    add-int/2addr p2, p5

    .line 113
    sub-int p7, p6, p3

    .line 114
    .line 115
    :goto_4
    if-ge p2, p7, :cond_5

    .line 116
    .line 117
    const v0, 0xfeff

    .line 118
    .line 119
    .line 120
    aput-char v0, p1, p2

    .line 121
    .line 122
    add-int/lit8 p2, p2, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    move p2, p6

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    iput-object p8, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 128
    .line 129
    const/4 p1, 0x0

    .line 130
    iput p1, p0, Landroid/text/TextLine;->mAddedWidth:F

    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p2, "Directions cannot be null"

    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method
