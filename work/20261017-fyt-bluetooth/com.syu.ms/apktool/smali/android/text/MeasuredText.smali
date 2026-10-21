.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final localLOGV:Z = false

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field public mChars:[C

.field public mDir:I

.field public mEasy:Z

.field public mLen:I

.field public mLevels:[B

.field private mPos:I

.field public mText:Ljava/lang/CharSequence;

.field public mTextStart:I

.field public mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    .line 2
    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public static obtain()Landroid/text/MeasuredText;
    .locals 5

    .line 1
    sget-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 3
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

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
    new-instance v0, Landroid/text/MeasuredText;

    invoke-direct {v0}, Landroid/text/MeasuredText;-><init>()V

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

.method public static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 2
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2

    .line 3
    sget-object v1, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 5
    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 6
    aput-object p0, v3, v2

    .line 7
    iput-object v0, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v10, p1

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2
    :cond_0
    iget v9, v0, Landroid/text/MeasuredText;->mPos:I

    add-int v11, v9, p2

    .line 3
    iput v11, v0, Landroid/text/MeasuredText;->mPos:I

    .line 4
    iget-boolean v1, v0, Landroid/text/MeasuredText;->mEasy:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_2

    .line 5
    iget v1, v0, Landroid/text/MeasuredText;->mDir:I

    if-ne v1, v13, :cond_1

    move v7, v12

    goto :goto_0

    :cond_1
    move v7, v13

    .line 6
    :goto_0
    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v8, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v4, p2

    move v5, v9

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 7
    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v9

    add-int/lit8 v3, v9, 0x1

    move v14, v1

    move v15, v3

    :goto_1
    if-eq v15, v11, :cond_3

    .line 8
    iget-object v1, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v1, v1, v15

    if-eq v1, v2, :cond_6

    :cond_3
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_4

    move v7, v12

    goto :goto_2

    :cond_4
    move v7, v13

    .line 9
    :goto_2
    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v6, v15, v9

    iget-object v8, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v1, p1

    move v3, v9

    move v4, v6

    move v5, v9

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v1

    add-float/2addr v14, v1

    if-ne v15, v11, :cond_5

    return v14

    .line 10
    :cond_5
    iget-object v1, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v1, v1, v15

    move v2, v1

    move v9, v15

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method public addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 7

    .line 11
    iget-object v6, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 12
    invoke-virtual {v6, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 p1, 0x0

    .line 13
    iput p1, v6, Landroid/text/TextPaint;->baselineShift:I

    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 15
    aget-object v1, p2, p1

    .line 16
    instance-of v2, v1, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    .line 17
    move-object v0, v1

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1, v6}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p0, v6, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    goto :goto_3

    .line 20
    :cond_2
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget p2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v3, p1, p2

    add-int/2addr p1, p2

    add-int v4, p1, p3

    move-object v1, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    .line 21
    iget-object p2, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 22
    iget v0, p0, Landroid/text/MeasuredText;->mPos:I

    aput p1, p2, v0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p3

    :goto_2
    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    .line 23
    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_3
    iget p2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr p2, p3

    iput p2, p0, Landroid/text/MeasuredText;->mPos:I

    :goto_3
    if-eqz p4, :cond_5

    .line 25
    iget p2, v6, Landroid/text/TextPaint;->baselineShift:I

    if-gez p2, :cond_4

    .line 26
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 27
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_4

    .line 28
    :cond_4
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 29
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_5
    :goto_4
    return p1
.end method

.method public breakText(IZF)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/text/MeasuredText;->mWidths:[F

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 2
    aget v3, v0, p2

    sub-float/2addr p3, v3

    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 3
    iget-object p1, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 p3, p2, -0x1

    aget-char p1, p1, p3

    if-ne p1, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return p2

    :cond_3
    add-int/lit8 p2, p1, -0x1

    move v3, p2

    :goto_2
    if-ltz v3, :cond_5

    .line 4
    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v3, p2, :cond_6

    .line 5
    iget-object p3, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v0, v3, 0x1

    aget-char p3, p3, v0

    if-ne p3, v1, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public measure(II)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/text/MeasuredText;->mWidths:[F

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    aget v2, v0, p1

    add-float/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 2
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p3, p2

    .line 3
    iput v0, p0, Landroid/text/MeasuredText;->mLen:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroid/text/MeasuredText;->mPos:I

    .line 5
    iget-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 6
    :cond_0
    invoke-static {v0}, Lu/a;->g(I)I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 7
    :cond_1
    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v2, :cond_2

    array-length v2, v2

    if-ge v2, v0, :cond_3

    .line 8
    :cond_2
    invoke-static {v0}, Lu/a;->f(I)I

    move-result v2

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 9
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-static {p1, p2, p3, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 10
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_7

    .line 11
    check-cast p1, Landroid/text/Spanned;

    .line 12
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {p1, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/ReplacementSpan;

    move v2, v1

    .line 13
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_7

    .line 14
    aget-object v3, p3, v2

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    .line 15
    aget-object v4, p3, v2

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    if-gez v3, :cond_4

    move v3, v1

    :cond_4
    if-le v4, v0, :cond_5

    move v4, v0

    :cond_5
    :goto_1
    if-ge v3, v4, :cond_6

    .line 16
    iget-object v5, p0, Landroid/text/MeasuredText;->mChars:[C

    const v6, 0xfffc

    aput-char v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_7
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 p2, 0x1

    if-eq p4, p1, :cond_8

    sget-object p3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, p3, :cond_8

    sget-object p3, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p3, :cond_9

    :cond_8
    iget-object p3, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-static {p3, v1, v0}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 18
    iput p2, p0, Landroid/text/MeasuredText;->mDir:I

    .line 19
    iput-boolean p2, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_4

    .line 20
    :cond_9
    iget-object p3, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz p3, :cond_a

    array-length p3, p3

    if-ge p3, v0, :cond_b

    .line 21
    :cond_a
    invoke-static {v0}, Lu/a;->e(I)I

    move-result p3

    new-array p3, p3, [B

    iput-object p3, p0, Landroid/text/MeasuredText;->mLevels:[B

    :cond_b
    const/4 p3, -0x1

    if-ne p4, p1, :cond_c

    goto :goto_3

    .line 22
    :cond_c
    sget-object p1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_d

    :goto_2
    move p2, p3

    goto :goto_3

    .line 23
    :cond_d
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_e

    const/4 p2, 0x2

    goto :goto_3

    .line 24
    :cond_e
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_f

    const/4 p2, -0x2

    goto :goto_3

    .line 25
    :cond_f
    iget-object p1, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-interface {p4, p1, v1, v0}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_2

    .line 26
    :cond_10
    :goto_3
    iget-object p1, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object p3, p0, Landroid/text/MeasuredText;->mLevels:[B

    invoke-static {p2, p1, p3, v0, v1}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result p1

    iput p1, p0, Landroid/text/MeasuredText;->mDir:I

    .line 27
    iput-boolean v1, p0, Landroid/text/MeasuredText;->mEasy:Z

    :goto_4
    return-void
.end method

.method public setPos(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/text/MeasuredText;->mPos:I

    return-void
.end method
