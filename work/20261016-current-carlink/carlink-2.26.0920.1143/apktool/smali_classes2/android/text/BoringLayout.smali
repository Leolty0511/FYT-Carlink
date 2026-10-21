.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 11

    move-object v10, p0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move v3, p3

    .line 2
    iput v3, v10, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    .line 3
    iput v0, v10, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 4
    iput v0, v10, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 5
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11

    move-object v10, p0

    move-object/from16 v3, p9

    move/from16 v7, p10

    .line 6
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    .line 7
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v7

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p9

    move-object v5, p0

    .line 8
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 9
    iput v7, v10, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v3, p3

    .line 10
    iput v3, v10, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 11
    iput v8, v10, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 12
    iput v8, v10, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v0, 0x1

    move v9, v0

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-void
.end method

.method private static hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .locals 7

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, p1, :cond_3

    .line 10
    .line 11
    add-int/lit16 v3, v2, 0x1f4

    .line 12
    .line 13
    :try_start_0
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {p0, v2, v4, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 18
    .line 19
    .line 20
    sub-int/2addr v4, v2

    .line 21
    move v2, v1

    .line 22
    :goto_1
    if-ge v2, v4, :cond_2

    .line 23
    .line 24
    aget-char v5, v0, v2

    .line 25
    .line 26
    const/16 v6, 0xa

    .line 27
    .line 28
    if-eq v5, v6, :cond_1

    .line 29
    .line 30
    const/16 v6, 0x9

    .line 31
    .line 32
    if-eq v5, v6, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    .line 35
    .line 36
    .line 37
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_2
    move v2, v3

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 57
    .line 58
    .line 59
    return v1
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    .line 2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 9

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 4
    invoke-static {p0, v4}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p0, v0, v4}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 6
    :cond_1
    instance-of p2, p0, Landroid/text/Spanned;

    if-eqz p2, :cond_2

    .line 7
    move-object p2, p0

    check-cast p2, Landroid/text/Spanned;

    .line 8
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {p2, v0, v4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 9
    array-length p2, p2

    if-lez p2, :cond_2

    return-object v1

    :cond_2
    if-nez p3, :cond_3

    .line 10
    new-instance p3, Landroid/text/BoringLayout$Metrics;

    invoke-direct {p3}, Landroid/text/BoringLayout$Metrics;-><init>()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p3}, Landroid/text/BoringLayout$Metrics;->access$000(Landroid/text/BoringLayout$Metrics;)V

    .line 12
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 13
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 14
    invoke-virtual {p2, p3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p3, Landroid/text/BoringLayout$Metrics;->width:I

    .line 15
    invoke-static {p2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-object p3
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10

    .line 1
    new-instance v9, Landroid/text/BoringLayout;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v9
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12

    .line 2
    new-instance v11, Landroid/text/BoringLayout;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v11
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget p2, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 8
    .line 9
    iget p3, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 10
    .line 11
    sub-int/2addr p2, p3

    .line 12
    int-to-float p2, p2

    .line 13
    iget-object p3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    invoke-virtual {p1, v0, p4, p2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public ellipsized(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 5
    .line 6
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 0

    iget p1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return p1
.end method

.method public getEllipsisStart(I)I
    .locals 0

    iget p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return p1
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLineCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 0

    iget p1, p0, Landroid/text/BoringLayout;->mDesc:I

    return p1
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 0

    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p1
.end method

.method public getLineMax(I)F
    .locals 0

    iget p1, p0, Landroid/text/BoringLayout;->mMax:F

    return p1
.end method

.method public getLineStart(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    return p1
.end method

.method public getLineTop(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p0, Landroid/text/BoringLayout;->mBottom:I

    return p1
.end method

.method public getLineWidth(I)F
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getParagraphDirection(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method public init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    move-object v4, p1

    .line 5
    instance-of v2, v4, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 11
    .line 12
    move-object/from16 v3, p4

    .line 13
    .line 14
    if-ne v3, v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object v11, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    move-object v3, p2

    .line 26
    iput-object v3, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    if-eqz p8, :cond_1

    .line 29
    .line 30
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 31
    .line 32
    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 33
    .line 34
    sub-int v5, v2, v5

    .line 35
    .line 36
    iput v2, v0, Landroid/text/BoringLayout;->mDesc:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 40
    .line 41
    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 42
    .line 43
    sub-int v5, v2, v5

    .line 44
    .line 45
    iput v2, v0, Landroid/text/BoringLayout;->mDesc:I

    .line 46
    .line 47
    :goto_1
    iput v5, v0, Landroid/text/BoringLayout;->mBottom:I

    .line 48
    .line 49
    if-eqz p9, :cond_2

    .line 50
    .line 51
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const/4 v7, 0x1

    .line 67
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    move-object v2, v12

    .line 72
    move-object v3, p2

    .line 73
    move-object v4, p1

    .line 74
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v12, v11}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    float-to-double v2, v2

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    double-to-int v2, v2

    .line 87
    int-to-float v2, v2

    .line 88
    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    .line 89
    .line 90
    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 91
    .line 92
    .line 93
    :goto_2
    if-eqz p8, :cond_3

    .line 94
    .line 95
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 96
    .line 97
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 98
    .line 99
    sub-int/2addr v2, v3

    .line 100
    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 101
    .line 102
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 103
    .line 104
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 105
    .line 106
    sub-int/2addr v2, v1

    .line 107
    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 108
    .line 109
    :cond_3
    return-void
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 11

    move-object v10, p0

    .line 1
    invoke-virtual/range {p0 .. p6}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move v3, p3

    .line 2
    iput v3, v10, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    .line 3
    iput v0, v10, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 4
    iput v0, v10, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 5
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-object v10
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11

    move-object v10, p0

    move-object/from16 v3, p9

    move/from16 v7, p10

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    .line 6
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v7

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p9

    move-object v5, p0

    .line 7
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 8
    iput v7, v10, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    move v9, v8

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move v3, p3

    .line 10
    iput v3, v10, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 11
    iput v8, v10, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 12
    iput v8, v10, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v0, 0x1

    move v9, v0

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-object v10
.end method
