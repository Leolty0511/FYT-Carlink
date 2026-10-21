.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final localLOGV:Z = false

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Landroid/text/MeasuredText;

    .line 8
    .line 9
    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    return-void
.end method

.method public static obtain()Landroid/text/MeasuredText;
    .locals 5

    .line 1
    sget-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    if-ltz v1, :cond_1

    .line 10
    .line 11
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 12
    .line 13
    aget-object v3, v2, v1

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v4, v2, v1

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v3

    .line 22
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    new-instance v0, Landroid/text/MeasuredText;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/text/MeasuredText;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method

.method public static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    aget-object v3, v2, v1

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    aput-object p0, v2, v1

    .line 19
    .line 20
    iput-object v4, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    monitor-exit v0

    .line 27
    return-object v4

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method


# virtual methods
.method public addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p3

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2
    :cond_0
    iget v11, v0, Landroid/text/MeasuredText;->mPos:I

    add-int v12, v11, p2

    .line 3
    iput v12, v0, Landroid/text/MeasuredText;->mPos:I

    .line 4
    iget-object v1, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/text/TextPaint;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/text/MeasuredText;->mWidths:[F

    :goto_1
    move-object v13, v1

    .line 6
    iget-boolean v1, v0, Landroid/text/MeasuredText;->mEasy:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_6

    .line 7
    iget v1, v0, Landroid/text/MeasuredText;->mDir:I

    if-eq v1, v15, :cond_3

    move v7, v15

    goto :goto_2

    :cond_3
    move v7, v14

    :goto_2
    if-eqz v13, :cond_4

    .line 8
    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v1, p1

    move v3, v11

    move/from16 v4, p2

    move v5, v11

    move/from16 v6, p2

    move-object v8, v13

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    .line 9
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v2, v11, v12, v13}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    goto :goto_3

    .line 11
    :cond_4
    iget-object v1, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    invoke-virtual {v1, v10, v11, v12, v7}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v1

    :cond_5
    :goto_3
    return v1

    .line 12
    :cond_6
    iget-object v1, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v1, v1, v11

    add-int/lit8 v2, v11, 0x1

    const/4 v3, 0x0

    move/from16 v16, v3

    move v9, v11

    move v11, v2

    :goto_4
    if-eq v11, v12, :cond_7

    .line 13
    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v11

    if-eq v2, v1, :cond_c

    :cond_7
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    move v7, v15

    goto :goto_5

    :cond_8
    move v7, v14

    :goto_5
    if-eqz v13, :cond_9

    .line 14
    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v6, v11, v9

    move-object/from16 v1, p1

    move v3, v9

    move v4, v6

    move v5, v9

    move-object v8, v13

    move/from16 p2, v9

    .line 15
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float v16, v16, v1

    .line 16
    iget-object v1, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v1, :cond_a

    move/from16 v2, p2

    .line 17
    invoke-virtual {v1, v2, v11, v13}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    goto :goto_6

    :cond_9
    move v2, v9

    .line 18
    iget-object v1, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    invoke-virtual {v1, v10, v2, v11, v7}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v1

    add-float v16, v1, v16

    :cond_a
    :goto_6
    if-ne v11, v12, :cond_b

    return v16

    .line 19
    :cond_b
    iget-object v1, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v1, v1, v11

    move v9, v11

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method public addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 7

    .line 20
    iget-object v6, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 21
    invoke-virtual {v6, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 p1, 0x0

    .line 22
    iput p1, v6, Landroid/text/TextPaint;->baselineShift:I

    const/4 v0, 0x0

    .line 23
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 24
    aget-object v1, p2, p1

    .line 25
    instance-of v2, v1, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    .line 26
    move-object v0, v1

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v1, v6}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p0, v6, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    goto :goto_3

    .line 29
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

    .line 30
    iget-object p2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez p2, :cond_3

    .line 31
    iget-object p2, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 32
    iget v0, p0, Landroid/text/MeasuredText;->mPos:I

    aput p1, p2, v0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p3

    :goto_2
    if-ge v1, v0, :cond_4

    const/4 v2, 0x0

    .line 33
    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 34
    :cond_3
    iget v0, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v1, v0, p3

    invoke-virtual {p2, v0, v1, p1}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    .line 35
    :cond_4
    iget p2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr p2, p3

    iput p2, p0, Landroid/text/MeasuredText;->mPos:I

    :goto_3
    if-eqz p4, :cond_6

    .line 36
    iget p2, v6, Landroid/text/TextPaint;->baselineShift:I

    if-gez p2, :cond_5

    .line 37
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 38
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_4

    .line 39
    :cond_5
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 40
    iget p3, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p3, p2

    iput p3, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_6
    :goto_4
    return p1
.end method

.method public breakText(IZF)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    if-ge p2, p1, :cond_1

    .line 10
    .line 11
    aget v3, v0, p2

    .line 12
    .line 13
    sub-float/2addr p3, v3

    .line 14
    cmpg-float v3, p3, v2

    .line 15
    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 25
    .line 26
    add-int/lit8 p3, p2, -0x1

    .line 27
    .line 28
    aget-char p1, p1, p3

    .line 29
    .line 30
    if-ne p1, v1, :cond_2

    .line 31
    .line 32
    add-int/lit8 p2, p2, -0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    return p2

    .line 36
    :cond_3
    add-int/lit8 p2, p1, -0x1

    .line 37
    .line 38
    move v3, p2

    .line 39
    :goto_2
    if-ltz v3, :cond_5

    .line 40
    .line 41
    aget v4, v0, v3

    .line 42
    .line 43
    sub-float/2addr p3, v4

    .line 44
    cmpg-float v4, p3, v2

    .line 45
    .line 46
    if-gez v4, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_5
    :goto_3
    if-ge v3, p2, :cond_7

    .line 53
    .line 54
    iget-object p3, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 55
    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 57
    .line 58
    aget-char p3, p3, v4

    .line 59
    .line 60
    if-eq p3, v1, :cond_6

    .line 61
    .line 62
    aget p3, v0, v4

    .line 63
    .line 64
    cmpl-float p3, p3, v2

    .line 65
    .line 66
    if-nez p3, :cond_7

    .line 67
    .line 68
    :cond_6
    move v3, v4

    .line 69
    goto :goto_3

    .line 70
    :cond_7
    sub-int/2addr p1, v3

    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 72
    .line 73
    return p1
.end method

.method public finish()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 5
    .line 6
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    iput-object v0, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 13
    .line 14
    iput-object v0, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 15
    .line 16
    iput-object v0, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public measure(II)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge p1, p2, :cond_0

    .line 5
    .line 6
    aget v2, v0, p1

    .line 7
    .line 8
    add-float/2addr v1, v2

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return v1
.end method

.method public setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .locals 6

    .line 1
    iput-object p5, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 2
    .line 3
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 6
    .line 7
    sub-int p5, p3, p2

    .line 8
    .line 9
    iput p5, p0, Landroid/text/MeasuredText;->mLen:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 13
    .line 14
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    if-ge v1, p5, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    if-ge v1, p5, :cond_3

    .line 33
    .line 34
    :cond_2
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 39
    .line 40
    :cond_3
    iget-object v1, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 41
    .line 42
    invoke-static {p1, p2, p3, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 43
    .line 44
    .line 45
    instance-of v1, p1, Landroid/text/Spanned;

    .line 46
    .line 47
    if-eqz v1, :cond_7

    .line 48
    .line 49
    check-cast p1, Landroid/text/Spanned;

    .line 50
    .line 51
    const-class v1, Landroid/text/style/ReplacementSpan;

    .line 52
    .line 53
    invoke-interface {p1, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    check-cast p3, [Landroid/text/style/ReplacementSpan;

    .line 58
    .line 59
    move v1, v0

    .line 60
    :goto_0
    array-length v2, p3

    .line 61
    if-ge v1, v2, :cond_7

    .line 62
    .line 63
    aget-object v2, p3, v1

    .line 64
    .line 65
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sub-int/2addr v2, p2

    .line 70
    aget-object v3, p3, v1

    .line 71
    .line 72
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    sub-int/2addr v3, p2

    .line 77
    if-gez v2, :cond_4

    .line 78
    .line 79
    move v2, v0

    .line 80
    :cond_4
    if-le v3, p5, :cond_5

    .line 81
    .line 82
    move v3, p5

    .line 83
    :cond_5
    :goto_1
    if-ge v2, v3, :cond_6

    .line 84
    .line 85
    iget-object v4, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 86
    .line 87
    const v5, 0xfffc

    .line 88
    .line 89
    .line 90
    aput-char v5, v4, v2

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_7
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 99
    .line 100
    const/4 p2, 0x1

    .line 101
    if-eq p4, p1, :cond_8

    .line 102
    .line 103
    sget-object p3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 104
    .line 105
    if-eq p4, p3, :cond_8

    .line 106
    .line 107
    sget-object p3, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 108
    .line 109
    if-ne p4, p3, :cond_9

    .line 110
    .line 111
    :cond_8
    iget-object p3, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 112
    .line 113
    invoke-static {p3, v0, p5}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_9

    .line 118
    .line 119
    iput p2, p0, Landroid/text/MeasuredText;->mDir:I

    .line 120
    .line 121
    iput-boolean p2, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_9
    iget-object p3, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 125
    .line 126
    if-eqz p3, :cond_a

    .line 127
    .line 128
    array-length p3, p3

    .line 129
    if-ge p3, p5, :cond_b

    .line 130
    .line 131
    :cond_a
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    iput-object p3, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 136
    .line 137
    :cond_b
    if-ne p4, p1, :cond_c

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_c
    sget-object p1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 141
    .line 142
    const/4 p3, -0x1

    .line 143
    if-ne p4, p1, :cond_d

    .line 144
    .line 145
    :goto_2
    move p2, p3

    .line 146
    goto :goto_3

    .line 147
    :cond_d
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 148
    .line 149
    if-ne p4, p1, :cond_e

    .line 150
    .line 151
    const/4 p2, 0x2

    .line 152
    goto :goto_3

    .line 153
    :cond_e
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 154
    .line 155
    if-ne p4, p1, :cond_f

    .line 156
    .line 157
    const/4 p2, -0x2

    .line 158
    goto :goto_3

    .line 159
    :cond_f
    iget-object p1, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 160
    .line 161
    invoke-interface {p4, p1, v0, p5}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_10

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_10
    :goto_3
    iget-object p1, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 169
    .line 170
    iget-object p3, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 171
    .line 172
    invoke-static {p2, p1, p3, p5, v0}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Landroid/text/MeasuredText;->mDir:I

    .line 177
    .line 178
    iput-boolean v0, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 179
    .line 180
    :goto_4
    return-void
.end method

.method public setPos(I)V
    .locals 1

    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/text/MeasuredText;->mPos:I

    return-void
.end method
