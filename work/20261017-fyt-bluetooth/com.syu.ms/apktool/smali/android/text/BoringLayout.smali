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


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field public mBottom:I

.field private mBottomPadding:I

.field public mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

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

    .line 3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 10

    const/16 v0, 0x1f4

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_5

    add-int/lit16 v3, v2, 0x1f4

    if-le v3, v5, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v3

    .line 6
    :goto_1
    invoke-static {p0, v2, v4, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int/2addr v4, v2

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    .line 7
    aget-char v6, v0, v2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    const/16 v7, 0x590

    if-lt v6, v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    move p2, v1

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2, v0, v1, v4}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    const/4 p2, 0x1

    .line 9
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    if-eqz p2, :cond_6

    .line 10
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 11
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 12
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v1, v5, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 13
    array-length v0, v0

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, p2

    :goto_5
    if-eqz v1, :cond_8

    if-nez p3, :cond_7

    .line 14
    new-instance p3, Landroid/text/BoringLayout$Metrics;

    invoke-direct {p3}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 15
    :cond_7
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object p2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 16
    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 17
    invoke-virtual {p2, p3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    iput p0, p3, Landroid/text/BoringLayout$Metrics;->width:I

    .line 18
    invoke-static {p2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-object p3

    :cond_8
    const/4 p0, 0x0

    return-object p0
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

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    iget p3, p0, Landroid/text/BoringLayout;->mBottom:I

    iget p4, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    iget-object p4, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method public ellipsized(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 0

    .line 1
    iget p1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return p1
.end method

.method public getEllipsisStart(I)I
    .locals 0

    .line 1
    iget p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return p1
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
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

    .line 1
    iget p1, p0, Landroid/text/BoringLayout;->mDesc:I

    return p1
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 0

    .line 1
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p1
.end method

.method public getLineMax(I)F
    .locals 0

    .line 1
    iget p1, p0, Landroid/text/BoringLayout;->mMax:F

    return p1
.end method

.method public getLineStart(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
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

    .line 1
    :cond_0
    iget p1, p0, Landroid/text/BoringLayout;->mBottom:I

    return p1
.end method

.method public getParagraphDirection(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getTopPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method public init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v4, p1

    .line 1
    instance-of v2, v4, Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v3, p4

    if-ne v3, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v11, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    :goto_0
    move-object v3, p2

    .line 4
    iput-object v3, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz p8, :cond_1

    .line 5
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_1

    .line 6
    :cond_1
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_1
    sub-int/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p5, v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, p6, v5

    if-eqz v5, :cond_3

    :cond_2
    int-to-float v2, v2

    mul-float v2, v2, p5

    add-float v2, v2, p6

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 7
    :cond_3
    iput v2, v0, Landroid/text/BoringLayout;->mBottom:I

    if-eqz p8, :cond_4

    .line 8
    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2

    .line 9
    :cond_4
    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/text/BoringLayout;->mDesc:I

    :goto_2
    if-eqz p9, :cond_5

    .line 10
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v2, v2

    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    const/4 v5, 0x0

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 13
    invoke-virtual {v12, v11}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    .line 14
    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    :goto_3
    if-eqz p8, :cond_6

    .line 15
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 16
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    :cond_6
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
