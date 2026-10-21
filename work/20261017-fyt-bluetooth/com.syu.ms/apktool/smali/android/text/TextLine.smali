.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
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

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    .line 1
    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 3
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 4
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 5
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14

    move-object v12, p0

    .line 1
    iget v0, v12, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v6, p4

    if-ne v1, v6, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v13, v0

    add-float v7, p5, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v5, p1

    move v6, v7

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 3
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v13

    :cond_1
    const/4 v10, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    .line 4
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p9

    .line 1
    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    sub-int v4, p4, p3

    sub-int v6, p6, p5

    .line 2
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v1

    move-object v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v9, p7

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    .line 4
    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v5, v2, p3

    add-int v6, v2, p4

    add-int v7, v2, p5

    add-int v8, v2, p6

    int-to-float v10, v1

    move-object v3, p1

    move/from16 v9, p8

    move/from16 v11, p7

    move-object v12, p2

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6

    .line 1
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 3
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 4
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 5
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 6
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 9

    .line 1
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    if-ltz p1, :cond_b

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    iget v1, p0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ne p5, v1, :cond_1

    goto/16 :goto_7

    .line 2
    :cond_1
    iget-object v2, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 3
    iget-object v1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 4
    iget-object v1, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v1, :cond_3

    :cond_2
    move v4, p2

    goto :goto_5

    :cond_3
    if-eqz p6, :cond_4

    add-int/lit8 v1, p5, 0x1

    goto :goto_1

    :cond_4
    move v1, p5

    .line 5
    :goto_1
    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p3

    .line 6
    :goto_2
    iget-object p3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v4, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, p2

    invoke-interface {p3, v4, v3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    iget v4, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p3, v4

    if-lt p3, v1, :cond_a

    .line 7
    iget-object v1, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int v3, v4, p2

    add-int/2addr v4, p3

    invoke-interface {v1, v3, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 8
    iget-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-static {v1, v3, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 9
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v3, p1

    .line 10
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 11
    aget-object v4, v0, v3

    .line 12
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_5

    .line 13
    check-cast v4, Landroid/text/style/ReplacementSpan;

    move-object v1, v4

    goto :goto_4

    .line 14
    :cond_5
    invoke-virtual {v4, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_2

    if-eqz p6, :cond_7

    move p2, p3

    :cond_7
    return p2

    :goto_5
    if-eqz p6, :cond_8

    goto :goto_6

    :cond_8
    const/4 p1, 0x2

    :goto_6
    move v8, p1

    .line 15
    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p1, :cond_9

    .line 16
    iget-object v3, p0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, p3, v4

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p1

    return p1

    .line 17
    :cond_9
    iget-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, p1

    add-int v5, p1, p3

    add-int v7, p1, p5

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p2

    return p1

    :cond_a
    move p2, p3

    goto :goto_2

    :cond_b
    :goto_7
    if-eqz p6, :cond_c

    .line 18
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p5, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p2

    return p1

    .line 19
    :cond_c
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p5, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p2

    return p1
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p11

    .line 1
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v1, p3

    add-int v9, v1, p4

    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v11, v1

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    if-eqz v10, :cond_3

    .line 2
    iget v1, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 3
    iget v2, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 4
    iget v3, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 5
    iget v4, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 6
    iget v5, v7, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    goto :goto_2

    :cond_3
    move v11, v1

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    .line 7
    :goto_2
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v8

    move v5, v9

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v6, v1

    if-eqz v10, :cond_4

    move-object/from16 v1, p11

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v7, v6

    move v6, v15

    .line 8
    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    move v11, v7

    :goto_4
    if-eqz p6, :cond_6

    if-eqz p5, :cond_5

    sub-float v1, p7, v11

    move v6, v1

    goto :goto_5

    :cond_5
    move/from16 v6, p7

    .line 9
    :goto_5
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v8

    move v5, v9

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_6
    if-eqz p5, :cond_7

    neg-float v11, v11

    :cond_7
    return v11
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 25

    move-object/from16 v14, p0

    move/from16 v4, p1

    move/from16 v15, p2

    move-object/from16 v13, p10

    if-ne v4, v15, :cond_1

    .line 1
    iget-object v0, v14, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 2
    iget-object v1, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v13, :cond_0

    .line 3
    invoke-static {v13, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    iget-object v0, v14, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-nez v0, :cond_3

    .line 5
    iget-object v1, v14, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 6
    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-nez p11, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v16, v17

    :goto_0
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, v16

    .line 7
    invoke-direct/range {v0 .. v13}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0

    .line 8
    :cond_3
    iget-object v1, v14, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v14, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v4

    add-int v2, v2, p3

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 9
    iget-object v0, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v14, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v14, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v4

    add-int v2, v2, p3

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move/from16 v18, p6

    move v12, v4

    :goto_1
    if-ge v12, v15, :cond_11

    .line 10
    iget-object v11, v14, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 11
    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 12
    iget-object v0, v14, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v12

    add-int v1, v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    sub-int v10, v0, v1

    .line 13
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v0, 0x0

    move-object v1, v0

    move/from16 v0, v16

    .line 14
    :goto_2
    iget-object v2, v14, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v3, :cond_7

    .line 15
    iget-object v3, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v0

    iget v4, v14, Landroid/text/TextLine;->mStart:I

    add-int v5, v4, v9

    if-ge v3, v5, :cond_6

    iget-object v3, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v0

    add-int/2addr v4, v12

    if-gt v3, v4, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v2, v2, v0

    .line 17
    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_5

    .line 18
    move-object v1, v2

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v2, v11}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_a

    if-nez p11, :cond_9

    if-ge v9, v15, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v19, v16

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v19, v17

    :goto_5
    move-object/from16 v0, p0

    move-object v2, v11

    move v3, v12

    move v4, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v18

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v20, v10

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, v19

    .line 20
    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float v18, v18, v0

    goto/16 :goto_b

    :cond_a
    move/from16 v20, v10

    move v2, v12

    :goto_6
    if-ge v2, v9, :cond_10

    .line 21
    iget-object v0, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    add-int v3, v1, v2

    add-int/2addr v1, v9

    invoke-virtual {v0, v3, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    sub-int v10, v0, v1

    .line 22
    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v0, v16

    .line 23
    :goto_7
    iget-object v1, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v3, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v3, :cond_d

    .line 24
    iget-object v3, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v0

    iget v4, v14, Landroid/text/TextLine;->mStart:I

    add-int v5, v4, v10

    if-ge v3, v5, :cond_c

    iget-object v3, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v0

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_b

    goto :goto_8

    .line 25
    :cond_b
    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/CharacterStyle;

    aget-object v1, v1, v0

    .line 26
    invoke-virtual {v1, v11}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    if-nez p11, :cond_f

    if-ge v10, v15, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v19, v16

    goto :goto_a

    :cond_f
    :goto_9
    move/from16 v19, v17

    :goto_a
    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v10

    move v4, v12

    move/from16 v5, v20

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, v18

    move/from16 v21, v9

    move/from16 v9, p7

    move/from16 v22, v10

    move/from16 v10, p8

    move-object/from16 v23, v11

    move/from16 v11, p9

    move/from16 v24, v12

    move-object/from16 v12, p10

    move/from16 v13, v19

    .line 27
    invoke-direct/range {v0 .. v13}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float v18, v18, v0

    move-object/from16 v13, p10

    move/from16 v9, v21

    move/from16 v2, v22

    move-object/from16 v11, v23

    move/from16 v12, v24

    goto :goto_6

    :cond_10
    :goto_b
    move-object/from16 v13, p10

    move/from16 v12, v20

    goto/16 :goto_1

    :cond_11
    sub-float v18, v18, p6

    return v18
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 13

    move-object v10, p0

    move-object v9, p1

    move-object/from16 v0, p12

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0, p1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    sub-int v3, p3, p2

    const/4 v0, 0x0

    if-nez v3, :cond_1

    return v0

    :cond_1
    sub-int v5, p5, p4

    if-nez p13, :cond_3

    if-eqz p7, :cond_2

    .line 2
    iget v1, v9, Landroid/text/TextPaint;->bgColor:I

    if-nez v1, :cond_3

    iget v1, v9, Landroid/text/TextPaint;->underlineColor:I

    if-nez v1, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v0

    goto :goto_2

    .line 3
    :cond_3
    :goto_1
    iget-boolean v0, v10, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v1, v10, Landroid/text/TextLine;->mChars:[C

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move v2, p2

    move/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v0

    goto :goto_0

    .line 5
    :cond_4
    iget v0, v10, Landroid/text/TextLine;->mStart:I

    .line 6
    iget-object v1, v10, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v2, v0, p2

    add-int v3, v0, p3

    add-int v4, v0, p4

    add-int v5, v0, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    move-result v0

    goto :goto_0

    :goto_2
    if-eqz p7, :cond_8

    if-eqz p6, :cond_5

    sub-float v0, p8, v11

    move v8, v0

    goto :goto_3

    :cond_5
    move/from16 v8, p8

    .line 7
    :goto_3
    iget v0, v9, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 10
    iget v0, v9, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p9

    int-to-float v2, v0

    add-float v3, v8, v11

    move/from16 v0, p11

    int-to-float v4, v0

    move-object/from16 v0, p7

    move v1, v8

    move-object v5, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    :cond_6
    iget v0, v9, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v0, :cond_7

    .line 16
    iget v0, v9, Landroid/text/TextPaint;->baselineShift:I

    add-int v0, p10, v0

    int-to-float v0, v0

    const v1, 0x3de38e39

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v12

    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget v0, v9, Landroid/text/TextPaint;->underlineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, v8, v11

    .line 23
    iget v0, v9, Landroid/text/TextPaint;->underlineThickness:F

    add-float v4, v2, v0

    move-object/from16 v0, p7

    move v1, v8

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {p1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    :cond_7
    iget v0, v9, Landroid/text/TextPaint;->baselineShift:I

    add-int v12, p10, v0

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v9, v12

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    :cond_8
    if-eqz p6, :cond_9

    neg-float v11, v11

    :cond_9
    return v11
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

    .line 1
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/text/TextLine;
    .locals 5

    .line 1
    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    .line 2
    :try_start_0
    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 3
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 4
    aget-object v3, v2, v1

    const/4 v4, 0x0

    .line 5
    aput-object v4, v2, v1

    .line 6
    monitor-exit v0

    return-object v3

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 2
    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 3
    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 4
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 5
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 6
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 7
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    const/4 v2, 0x0

    .line 8
    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 9
    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 10
    aput-object p0, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 3
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 4
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 5
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method public ascent(I)F
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v1

    add-int/lit8 v1, p1, 0x1

    .line 4
    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/MetricAffectingSpan;

    .line 5
    array-length v0, p1

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 8
    iget-object v1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 9
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 10
    invoke-virtual {v3, v0}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;FIII)V
    .locals 25

    move-object/from16 v10, p0

    .line 1
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 3
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    .line 4
    :cond_0
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 5
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v11, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 7
    array-length v1, v11

    add-int/lit8 v12, v1, -0x2

    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 8
    :goto_0
    array-length v2, v11

    if-ge v15, v2, :cond_10

    .line 9
    aget v2, v11, v15

    add-int/lit8 v3, v15, 0x1

    .line 10
    aget v4, v11, v3

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 11
    iget v5, v10, Landroid/text/TextLine;->mLen:I

    if-le v4, v5, :cond_2

    move v9, v5

    goto :goto_1

    :cond_2
    move v9, v4

    .line 12
    :goto_1
    aget v3, v11, v3

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    const/16 v16, 0x1

    if-eqz v3, :cond_3

    move/from16 v17, v16

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    .line 13
    :goto_2
    iget-boolean v3, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v9

    :goto_3
    move/from16 v18, v0

    move-object/from16 v19, v1

    move v8, v3

    :goto_4
    if-gt v8, v9, :cond_f

    .line 14
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v0, :cond_7

    if-ge v8, v9, :cond_7

    .line 15
    iget-object v0, v10, Landroid/text/TextLine;->mChars:[C

    aget-char v1, v0, v8

    const v3, 0xd800

    if-lt v1, v3, :cond_6

    const v3, 0xdc00

    if-ge v1, v3, :cond_6

    add-int/lit8 v3, v8, 0x1

    if-ge v3, v9, :cond_6

    .line 16
    invoke-static {v0, v8}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 17
    sget v0, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v1, v0, :cond_5

    sget v0, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v1, v0, :cond_5

    .line 18
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    move v6, v1

    goto :goto_6

    :cond_5
    const v0, 0xffff

    if-le v1, v0, :cond_6

    move-object/from16 v4, p1

    move/from16 v5, p4

    move v8, v3

    goto :goto_7

    :cond_6
    move v6, v1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x0

    :goto_6
    const/16 v5, 0x9

    if-eq v8, v9, :cond_9

    if-eq v6, v5, :cond_9

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v4, p1

    move/from16 v5, p4

    :goto_7
    move/from16 v24, v9

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_9
    :goto_8
    add-float v20, p2, v18

    if-ne v15, v12, :cond_b

    .line 19
    iget v0, v10, Landroid/text/TextLine;->mLen:I

    if-eq v8, v0, :cond_a

    goto :goto_9

    :cond_a
    const/16 v21, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v21, v16

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v8

    move/from16 v4, v17

    move v14, v5

    move/from16 v5, v20

    move v13, v6

    move/from16 v6, p3

    move-object/from16 v22, v7

    move/from16 v7, p4

    move/from16 v23, v8

    move/from16 v8, p5

    move/from16 v24, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v0

    add-float v18, v18, v0

    if-ne v13, v14, :cond_c

    .line 20
    iget v0, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    invoke-virtual {v10, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move/from16 v18, v1

    move/from16 v8, v23

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v13, v22

    if-eqz v13, :cond_e

    move/from16 v3, v23

    .line 21
    invoke-virtual {v10, v3}, Landroid/text/TextLine;->ascent(I)F

    move-result v0

    .line 22
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v2, v0

    div-float/2addr v2, v1

    .line 23
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    if-nez v19, :cond_d

    .line 24
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto :goto_b

    :cond_d
    move-object/from16 v2, v19

    :goto_b
    add-float v4, p2, v18

    move/from16 v5, p4

    int-to-float v6, v5

    add-float/2addr v0, v6

    add-float v7, v4, v1

    .line 25
    invoke-virtual {v2, v4, v0, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v0, v10, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v4, p1

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v6, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-float v18, v18, v1

    add-int/lit8 v8, v3, 0x1

    move-object/from16 v19, v2

    goto :goto_c

    :cond_e
    move-object/from16 v4, p1

    move/from16 v5, p4

    move/from16 v3, v23

    const/4 v6, 0x0

    move v8, v3

    :goto_c
    add-int/lit8 v2, v8, 0x1

    :goto_d
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v24

    goto/16 :goto_4

    :cond_f
    move-object/from16 v4, p1

    move/from16 v5, p4

    const/4 v6, 0x0

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v19

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public getOffsetToLeftRightOf(IZ)I
    .locals 22

    move-object/from16 v7, p0

    move/from16 v5, p1

    move/from16 v8, p2

    .line 1
    iget v9, v7, Landroid/text/TextLine;->mLen:I

    .line 2
    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v11

    .line 3
    :goto_0
    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v14, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const v16, 0x3ffffff

    if-nez v5, :cond_1

    move v15, v11

    const/4 v0, -0x2

    goto/16 :goto_8

    :cond_1
    if-ne v5, v9, :cond_2

    .line 4
    array-length v0, v14

    move v15, v11

    goto/16 :goto_8

    :cond_2
    move v2, v9

    move v0, v11

    move v1, v0

    .line 5
    :goto_1
    array-length v3, v14

    if-ge v0, v3, :cond_a

    .line 6
    aget v1, v14, v0

    add-int/2addr v1, v11

    if-lt v5, v1, :cond_9

    add-int/lit8 v2, v0, 0x1

    .line 7
    aget v3, v14, v2

    and-int v3, v3, v16

    add-int/2addr v3, v1

    if-le v3, v9, :cond_3

    move v3, v9

    :cond_3
    if-ge v5, v3, :cond_8

    .line 8
    aget v2, v14, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x3f

    if-ne v5, v1, :cond_7

    add-int/lit8 v4, v5, -0x1

    move v6, v11

    .line 9
    :goto_2
    array-length v15, v14

    if-ge v6, v15, :cond_6

    .line 10
    aget v15, v14, v6

    add-int/2addr v15, v11

    if-lt v4, v15, :cond_5

    add-int/lit8 v17, v6, 0x1

    .line 11
    aget v18, v14, v17

    and-int v18, v18, v16

    add-int v12, v15, v18

    if-le v12, v9, :cond_4

    move v12, v9

    :cond_4
    if-ge v4, v12, :cond_5

    .line 12
    aget v17, v14, v17

    ushr-int/lit8 v17, v17, 0x1a

    and-int/lit8 v10, v17, 0x3f

    if-ge v10, v2, :cond_5

    move v0, v6

    move v2, v10

    move v3, v12

    move v1, v15

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x2

    const/4 v10, -0x1

    goto :goto_2

    :cond_6
    move v4, v11

    :goto_3
    move v10, v0

    move v12, v1

    move v15, v2

    move/from16 v17, v3

    goto :goto_4

    :cond_7
    move v10, v0

    move v12, v1

    move v15, v2

    move/from16 v17, v3

    move v4, v11

    goto :goto_4

    :cond_8
    move v2, v3

    :cond_9
    add-int/lit8 v0, v0, 0x2

    const/4 v10, -0x1

    goto :goto_1

    :cond_a
    move v10, v0

    move v12, v1

    move/from16 v17, v2

    move v4, v11

    move v15, v4

    .line 13
    :goto_4
    array-length v0, v14

    if-eq v10, v0, :cond_11

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    move v6, v11

    :goto_5
    if-ne v8, v6, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    move v3, v11

    :goto_6
    if-eqz v3, :cond_d

    move/from16 v0, v17

    goto :goto_7

    :cond_d
    move v0, v12

    :goto_7
    if-ne v5, v0, :cond_e

    if-eq v3, v4, :cond_11

    :cond_e
    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move/from16 v19, v3

    move/from16 v3, v17

    move v4, v6

    move/from16 v5, p1

    move/from16 v6, v19

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v19, :cond_f

    move/from16 v12, v17

    :cond_f
    if-eq v0, v12, :cond_10

    return v0

    :cond_10
    move/from16 v21, v10

    move v10, v0

    move/from16 v0, v21

    goto :goto_8

    :cond_11
    move v0, v10

    const/4 v10, -0x1

    :goto_8
    if-ne v8, v13, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    move v1, v11

    :goto_9
    if-eqz v1, :cond_13

    const/4 v2, 0x2

    goto :goto_a

    :cond_13
    const/4 v2, -0x2

    :goto_a
    add-int v12, v0, v2

    if-ltz v12, :cond_1c

    .line 15
    array-length v0, v14

    if-ge v12, v0, :cond_1c

    .line 16
    aget v0, v14, v12

    add-int v17, v11, v0

    add-int/lit8 v0, v12, 0x1

    .line 17
    aget v1, v14, v0

    and-int v1, v1, v16

    add-int v1, v17, v1

    if-le v1, v9, :cond_14

    move/from16 v19, v9

    goto :goto_b

    :cond_14
    move/from16 v19, v1

    .line 18
    :goto_b
    aget v0, v14, v0

    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v6, v0, 0x3f

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    goto :goto_c

    :cond_15
    move v4, v11

    :goto_c
    if-ne v8, v4, :cond_16

    const/4 v0, -0x1

    const/16 v20, 0x1

    goto :goto_d

    :cond_16
    move/from16 v20, v11

    const/4 v0, -0x1

    :goto_d
    if-ne v10, v0, :cond_1a

    if-eqz v20, :cond_17

    move/from16 v5, v17

    goto :goto_e

    :cond_17
    move/from16 v5, v19

    :goto_e
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v17

    move/from16 v3, v19

    move v10, v6

    move/from16 v6, v20

    .line 19
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v20, :cond_18

    move/from16 v1, v19

    goto :goto_f

    :cond_18
    move/from16 v1, v17

    :goto_f
    if-ne v0, v1, :cond_19

    move v15, v10

    move v10, v0

    move v0, v12

    goto :goto_8

    :cond_19
    move v10, v0

    goto :goto_11

    :cond_1a
    move v0, v6

    if-ge v0, v15, :cond_1f

    if-eqz v20, :cond_1b

    move/from16 v10, v17

    goto :goto_11

    :cond_1b
    move/from16 v10, v19

    goto :goto_11

    :cond_1c
    const/4 v0, -0x1

    if-ne v10, v0, :cond_1d

    if-eqz v1, :cond_19

    .line 20
    iget v0, v7, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x1

    add-int/lit8 v10, v0, 0x1

    goto :goto_11

    :cond_1d
    if-gt v10, v9, :cond_1f

    if-eqz v1, :cond_1e

    goto :goto_10

    :cond_1e
    move v9, v11

    :goto_10
    move v10, v9

    :cond_1f
    :goto_11
    return v10
.end method

.method public measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    if-eqz p2, :cond_0

    add-int/lit8 v0, v7, -0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    const/4 v0, 0x0

    if-gez v8, :cond_1

    return v0

    .line 1
    :cond_1
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_3

    .line 2
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    .line 4
    :cond_2
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 5
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    .line 6
    :cond_3
    iget-object v9, v6, Landroid/text/TextLine;->mChars:[C

    .line 7
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v10, v1, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v12, 0x0

    .line 8
    :goto_1
    array-length v1, v10

    if-ge v12, v1, :cond_16

    .line 9
    aget v1, v10, v12

    add-int/lit8 v2, v12, 0x1

    .line 10
    aget v3, v10, v2

    const v4, 0x3ffffff

    and-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 11
    iget v4, v6, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_4

    move v13, v4

    goto :goto_2

    :cond_4
    move v13, v3

    .line 12
    :goto_2
    aget v2, v10, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 13
    :goto_3
    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v13

    :goto_4
    move/from16 v16, v0

    move v5, v1

    move v4, v2

    :goto_5
    if-gt v4, v13, :cond_15

    const/4 v0, 0x0

    .line 14
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_9

    if-ge v4, v13, :cond_9

    .line 15
    aget-char v1, v9, v4

    const v2, 0xd800

    if-lt v1, v2, :cond_8

    const v2, 0xdc00

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v4, 0x1

    if-ge v2, v13, :cond_8

    .line 16
    invoke-static {v9, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 17
    sget v3, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v1, v3, :cond_7

    sget v3, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v1, v3, :cond_7

    .line 18
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    :cond_7
    const v3, 0xffff

    if-le v1, v3, :cond_8

    move v4, v2

    goto :goto_8

    :cond_8
    :goto_6
    move-object/from16 v17, v0

    move v3, v1

    goto :goto_7

    :cond_9
    move-object/from16 v17, v0

    const/4 v3, 0x0

    :goto_7
    const/16 v2, 0x9

    if-eq v4, v13, :cond_b

    if-eq v3, v2, :cond_b

    if-eqz v17, :cond_a

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_10

    :cond_b
    :goto_9
    if-lt v8, v5, :cond_c

    if-ge v8, v4, :cond_c

    const/16 v18, 0x1

    goto :goto_a

    :cond_c
    const/16 v18, 0x0

    .line 19
    :goto_a
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    :goto_b
    if-ne v0, v15, :cond_e

    const/16 v19, 0x1

    goto :goto_c

    :cond_e
    const/16 v19, 0x0

    :goto_c
    if-eqz v18, :cond_f

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    move v3, v4

    move v4, v15

    move-object/from16 v5, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    :goto_d
    add-float v16, v16, v0

    return v16

    :cond_f
    move-object/from16 v0, p0

    move v1, v5

    move v11, v2

    move v2, v4

    move v14, v3

    move v3, v4

    move/from16 v20, v4

    move v4, v15

    move/from16 v21, v5

    move-object/from16 v5, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    if-eqz v19, :cond_10

    goto :goto_e

    :cond_10
    neg-float v0, v0

    :goto_e
    add-float v16, v16, v0

    if-eqz v18, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    move/from16 v3, v20

    move v4, v15

    .line 22
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    goto :goto_d

    :cond_11
    move/from16 v2, v20

    if-ne v14, v11, :cond_13

    if-ne v7, v2, :cond_12

    return v16

    .line 23
    :cond_12
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    invoke-virtual {v6, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float v16, v1, v0

    if-ne v8, v2, :cond_13

    return v16

    :cond_13
    if-eqz v17, :cond_14

    .line 24
    invoke-virtual {v6, v2}, Landroid/text/TextLine;->ascent(I)F

    move-result v0

    .line 25
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 26
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float v16, v16, v0

    add-int/lit8 v4, v2, 0x1

    goto :goto_f

    :cond_14
    move v4, v2

    :goto_f
    add-int/lit8 v5, v4, 0x1

    goto/16 :goto_8

    :goto_10
    add-int/2addr v4, v0

    goto/16 :goto_5

    :cond_15
    add-int/lit8 v12, v12, 0x2

    move/from16 v0, v16

    goto/16 :goto_1

    :cond_16
    return v0
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2

    .line 1
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

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 3
    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result p1

    return p1
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 2
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 3
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    sub-int p1, p4, p3

    .line 4
    iput p1, p0, Landroid/text/TextLine;->mLen:I

    .line 5
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 6
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz p6, :cond_7

    .line 7
    iput-boolean p7, p0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 9
    instance-of p1, p2, Landroid/text/Spanned;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 10
    move-object p1, p2

    check-cast p1, Landroid/text/Spanned;

    iput-object p1, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 11
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1, p1, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 12
    iget-object p1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget p1, p1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez p1, :cond_0

    move p1, p5

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-nez p7, :cond_2

    .line 13
    sget-object p7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, p7, :cond_1

    goto :goto_1

    :cond_1
    move p6, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p6, p5

    :goto_2
    iput-boolean p6, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p6, :cond_6

    .line 14
    iget-object p6, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz p6, :cond_3

    array-length p6, p6

    iget p7, p0, Landroid/text/TextLine;->mLen:I

    if-ge p6, p7, :cond_4

    .line 15
    :cond_3
    iget p6, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {p6}, Lu/a;->f(I)I

    move-result p6

    new-array p6, p6, [C

    iput-object p6, p0, Landroid/text/TextLine;->mChars:[C

    .line 16
    :cond_4
    iget-object p6, p0, Landroid/text/TextLine;->mChars:[C

    invoke-static {p2, p3, p4, p6, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    move p2, p3

    :goto_3
    if-ge p2, p4, :cond_6

    .line 18
    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p6, p2, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result p6

    .line 19
    iget-object p7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p7, p2, p6}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result p7

    if-eqz p7, :cond_5

    sub-int/2addr p2, p3

    const p7, 0xfffc

    .line 20
    aput-char p7, p1, p2

    add-int/2addr p2, p5

    sub-int p7, p6, p3

    :goto_4
    if-ge p2, p7, :cond_5

    const v0, 0xfeff

    .line 21
    aput-char v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    move p2, p6

    goto :goto_3

    .line 22
    :cond_6
    iput-object p8, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    return-void

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Directions cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
