.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "SourceFile"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field public static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 24
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const p1, 0x7fffffff

    .line 25
    iput p1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 26
    new-instance p1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object p1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    const/4 p1, 0x5

    .line 27
    iput p1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 p1, p1, 0x2

    .line 28
    invoke-static {p1}, Lu/a;->h(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 29
    iget p1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lu/a;->h(I)I

    move-result p1

    new-array p1, p1, [Landroid/text/Layout$Directions;

    iput-object p1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 30
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object p1

    iput-object p1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 3
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14

    .line 5
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 4
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14

    move-object v13, p0

    move-object v8, p1

    move-object/from16 v12, p11

    move/from16 v9, p12

    if-nez v12, :cond_0

    move-object v1, v8

    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, v8, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, v0

    :goto_1
    move-object v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const v0, 0x7fffffff

    .line 7
    iput v0, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 8
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v13, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v12, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 10
    iput-object v13, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 11
    iput v9, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 12
    iput-object v12, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 13
    iput v9, v13, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v0, 0x5

    .line 14
    iput v0, v13, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v5, p5

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    .line 15
    iput v0, v13, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v5, p5

    .line 16
    iput v5, v13, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 17
    :goto_2
    iget v0, v13, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lu/a;->h(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v13, Landroid/text/StaticLayout;->mLines:[I

    .line 18
    iget v0, v13, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lu/a;->h(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, v13, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move/from16 v0, p13

    .line 19
    iput v0, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 20
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, v13, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    int-to-float v11, v9

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p10

    move-object/from16 v12, p11

    .line 21
    invoke-virtual/range {v0 .. v12}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 22
    iget-object v0, v13, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, v13, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    const/4 v0, 0x0

    .line 23
    iput-object v0, v13, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p6

    cmpg-float v2, p8, p5

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    if-nez p10, :cond_0

    .line 1
    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v4, v2, p7

    add-int/lit8 v4, v4, 0x3

    aput v3, v1, v4

    mul-int v2, v2, p7

    add-int/lit8 v2, v2, 0x4

    .line 2
    aput v3, v1, v2

    return-void

    .line 3
    :cond_0
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_1

    sget-object v4, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v6, p9

    invoke-virtual {v6, v4, v3, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v4

    sub-int v6, p2, p1

    .line 4
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v8, 0x5

    const-string v9, "StaticLayout"

    const/4 v10, 0x0

    if-ne v1, v7, :cond_5

    .line 5
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v5, :cond_4

    :goto_1
    if-ltz v6, :cond_3

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v1, p1

    sub-int/2addr v1, p4

    .line 6
    aget v1, p3, v1

    add-float/2addr v10, v1

    add-float v1, v10, v4

    cmpl-float v1, v1, p5

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v5, v6

    goto/16 :goto_a

    .line 7
    :cond_4
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Start Ellipsis only supported with one line"

    .line 8
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 9
    :cond_5
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v7, :cond_e

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v7, :cond_e

    if-ne v1, v2, :cond_6

    goto :goto_8

    .line 10
    :cond_6
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v5, :cond_c

    sub-float v1, p5, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    move v4, v10

    :goto_3
    if-ltz v6, :cond_8

    add-int/lit8 v5, v6, -0x1

    add-int/2addr v5, p1

    sub-int/2addr v5, p4

    .line 11
    aget v5, p3, v5

    add-float/2addr v5, v4

    cmpl-float v7, v5, v2

    if-lez v7, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, -0x1

    move v4, v5

    goto :goto_3

    :cond_8
    :goto_4
    sub-float/2addr v1, v4

    :goto_5
    if-ge v3, v6, :cond_a

    add-int v2, v3, p1

    sub-int/2addr v2, p4

    .line 12
    aget v2, p3, v2

    add-float/2addr v10, v2

    cmpl-float v2, v10, v1

    if-lez v2, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    sub-int v1, v6, v3

    :cond_b
    move v5, v1

    goto :goto_a

    .line 13
    :cond_c
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Middle Ellipsis only supported with one line"

    .line 14
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    move v5, v3

    goto :goto_a

    :cond_e
    :goto_8
    if-ge v3, v6, :cond_10

    add-int v1, v3, p1

    sub-int/2addr v1, p4

    .line 15
    aget v1, p3, v1

    add-float/2addr v10, v1

    add-float v1, v10, v4

    cmpl-float v1, v1, p5

    if-lez v1, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    sub-int v1, v6, v3

    if-eqz p10, :cond_b

    if-nez v1, :cond_b

    if-lez v6, :cond_b

    sub-int/2addr v6, v5

    move v3, v6

    .line 16
    :goto_a
    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v4, v2, p7

    add-int/lit8 v4, v4, 0x3

    aput v3, v1, v4

    mul-int v2, v2, p7

    add-int/lit8 v2, v2, 0x4

    .line 17
    aput v5, v1, v2

    return-void
.end method

.method private static final isIdeographic(CZ)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x2e80

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2fff

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x3000

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x3040

    const/4 v2, 0x0

    if-lt p0, v1, :cond_4

    const/16 v1, 0x309f

    if-gt p0, v1, :cond_4

    if-nez p1, :cond_3

    const/16 p1, 0x3041

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3043

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3045

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3047

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3049

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3063

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3083

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3085

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3087

    if-eq p0, p1, :cond_2

    const/16 p1, 0x308e

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3095

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3096

    if-eq p0, p1, :cond_2

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_2
    :pswitch_0
    return v2

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/16 v1, 0x30a0

    if-lt p0, v1, :cond_7

    const/16 v3, 0x30ff

    if-gt p0, v3, :cond_7

    if-nez p1, :cond_6

    if-eq p0, v1, :cond_5

    const/16 p1, 0x30a1

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30a3

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30a5

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30a7

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30a9

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30c3

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30e3

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30e5

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30e7

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30ee

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30f5

    if-eq p0, p1, :cond_5

    const/16 p1, 0x30f6

    if-eq p0, p1, :cond_5

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :cond_5
    :pswitch_1
    return v2

    :cond_6
    :goto_1
    return v0

    :cond_7
    const/16 p1, 0x3400

    if-lt p0, p1, :cond_8

    const/16 p1, 0x4db5

    if-gt p0, p1, :cond_8

    return v0

    :cond_8
    const/16 p1, 0x4e00

    if-lt p0, p1, :cond_9

    const p1, 0x9fbb

    if-gt p0, p1, :cond_9

    return v0

    :cond_9
    const p1, 0xf900

    if-lt p0, p1, :cond_a

    const p1, 0xfad9

    if-gt p0, p1, :cond_a

    return v0

    :cond_a
    const p1, 0xa000

    if-lt p0, p1, :cond_b

    const p1, 0xa48f

    if-gt p0, p1, :cond_b

    return v0

    :cond_b
    const p1, 0xa490

    if-lt p0, p1, :cond_c

    const p1, 0xa4cf

    if-gt p0, p1, :cond_c

    return v0

    :cond_c
    const p1, 0xfe62

    if-lt p0, p1, :cond_d

    const p1, 0xfe66

    if-gt p0, p1, :cond_d

    return v0

    :cond_d
    const p1, 0xff10

    if-lt p0, p1, :cond_e

    const p1, 0xff19

    if-gt p0, p1, :cond_e

    return v0

    :cond_e
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x309b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30fb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v9, p3

    move-object/from16 v10, p11

    move-object/from16 v11, p13

    move-object/from16 v12, p25

    .line 1
    iget v13, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 2
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v14, v13, v1

    add-int/2addr v1, v14

    const/4 v15, 0x1

    add-int/2addr v1, v15

    .line 3
    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 4
    array-length v3, v2

    const/4 v8, 0x0

    if-lt v1, v3, :cond_0

    add-int/2addr v1, v15

    .line 5
    invoke-static {v1}, Lu/a;->h(I)I

    move-result v1

    .line 6
    new-array v3, v1, [I

    .line 7
    array-length v4, v2

    invoke-static {v2, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v3, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 9
    new-array v1, v1, [Landroid/text/Layout$Directions;

    .line 10
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v4, v2

    invoke-static {v2, v8, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object/from16 v16, v3

    goto :goto_0

    :cond_0
    move-object/from16 v16, v2

    :goto_0
    move/from16 v1, p4

    if-eqz v10, :cond_3

    .line 12
    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v2, p5

    .line 13
    iput v2, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v3, p6

    .line 14
    iput v3, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v4, p7

    .line 15
    iput v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v7, v8

    .line 16
    :goto_1
    array-length v1, v10

    if-ge v7, v1, :cond_2

    .line 17
    aget-object v1, v10, v7

    instance-of v1, v1, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v1, :cond_1

    .line 18
    aget-object v1, v10, v7

    check-cast v1, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v5, p12, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move/from16 v17, v7

    move-object/from16 v7, p13

    move/from16 v18, v8

    move-object/from16 v8, p28

    invoke-interface/range {v1 .. v8}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_1
    move/from16 v17, v7

    move/from16 v18, v8

    .line 19
    aget-object v1, v10, v17

    aget v5, p12, v17

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move-object/from16 v7, p13

    invoke-interface/range {v1 .. v7}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v8

    .line 20
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 21
    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 22
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 23
    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3

    :cond_3
    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v18, v8

    :goto_3
    if-nez v13, :cond_5

    if-eqz p21, :cond_4

    sub-int v5, v3, v1

    .line 24
    iput v5, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_4
    if-eqz p20, :cond_5

    move v1, v3

    :cond_5
    move/from16 v3, p19

    if-ne v9, v3, :cond_7

    if-eqz p21, :cond_6

    sub-int v3, v4, v2

    .line 25
    iput v3, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_6
    if-eqz p20, :cond_7

    move v2, v4

    :cond_7
    if-eqz p15, :cond_9

    sub-int v3, v2, v1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, p9, v4

    mul-float/2addr v3, v4

    add-float v3, v3, p10

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-ltz v5, :cond_8

    add-double/2addr v3, v6

    double-to-int v3, v3

    goto :goto_4

    :cond_8
    neg-double v3, v3

    add-double/2addr v3, v6

    double-to-int v3, v3

    neg-int v3, v3

    :goto_4
    move v8, v3

    goto :goto_5

    :cond_9
    move/from16 v8, v18

    :goto_5
    add-int/lit8 v3, v14, 0x0

    .line 26
    aput p2, v16, v3

    add-int/lit8 v4, v14, 0x1

    .line 27
    aput p8, v16, v4

    add-int/lit8 v4, v14, 0x2

    add-int v5, v2, v8

    .line 28
    aput v5, v16, v4

    sub-int/2addr v2, v1

    add-int/2addr v2, v8

    add-int v1, p8, v2

    .line 29
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v4, v14, v2

    add-int/lit8 v4, v4, 0x0

    aput v9, v16, v4

    add-int/2addr v14, v2

    add-int/2addr v14, v15

    .line 30
    aput v1, v16, v14

    if-eqz p14, :cond_a

    .line 31
    aget v2, v16, v3

    const/high16 v4, 0x20000000

    or-int/2addr v2, v4

    aput v2, v16, v3

    .line 32
    :cond_a
    aget v2, v16, v3

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v2, v4

    aput v2, v16, v3

    .line 33
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eqz p18, :cond_b

    .line 34
    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v2, v3, v13

    goto :goto_6

    .line 35
    :cond_b
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v3, p2, p24

    sub-int v4, v9, p2

    move/from16 p4, p17

    move-object/from16 p5, p16

    move/from16 p6, v3

    move-object/from16 p7, p22

    move/from16 p8, v3

    move/from16 p9, v4

    invoke-static/range {p4 .. p9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v3

    aput-object v3, v2, v13

    :goto_6
    if-eqz v12, :cond_15

    if-nez v13, :cond_c

    move v8, v15

    goto :goto_7

    :cond_c
    move/from16 v8, v18

    :goto_7
    add-int/lit8 v2, v13, 0x1

    .line 36
    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_d

    move v2, v15

    goto :goto_8

    :cond_d
    move/from16 v2, v18

    :goto_8
    if-eqz p29, :cond_e

    .line 37
    iget v4, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v4, v15

    if-ne v4, v3, :cond_e

    move v4, v15

    goto :goto_9

    :cond_e
    move/from16 v4, v18

    :goto_9
    if-ne v3, v15, :cond_f

    if-nez p29, :cond_10

    :cond_f
    if-eqz v8, :cond_11

    if-nez p29, :cond_11

    .line 38
    :cond_10
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v12, v3, :cond_13

    :cond_11
    if-nez v8, :cond_14

    if-nez v2, :cond_12

    if-nez p29, :cond_14

    :cond_12
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v12, v2, :cond_14

    :cond_13
    move v8, v15

    goto :goto_a

    :cond_14
    move/from16 v8, v18

    :goto_a
    if-eqz v8, :cond_15

    move-object/from16 p4, p0

    move/from16 p5, p2

    move/from16 p6, p3

    move-object/from16 p7, p23

    move/from16 p8, p24

    move/from16 p9, p26

    move-object/from16 p10, p25

    move/from16 p11, v13

    move/from16 p12, p27

    move-object/from16 p13, p28

    move/from16 p14, v4

    .line 39
    invoke-direct/range {p4 .. p14}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 40
    :cond_15
    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v2, v15

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    return v1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method

.method public generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 71

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p6

    .line 1
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    const/4 v8, 0x0

    iput v8, v15, Landroid/text/StaticLayout;->mLineCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    const/16 v30, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_1

    cmpl-float v0, p8, v30

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v31, v8

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v31, v7

    .line 2
    :goto_1
    iget-object v6, v15, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 3
    iget-object v5, v15, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 4
    instance-of v0, v14, Landroid/text/Spanned;

    const/16 v32, 0x0

    if-eqz v0, :cond_2

    .line 5
    move-object v0, v14

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object/from16 v4, v32

    :goto_2
    move v1, v8

    move v3, v13

    move-object/from16 v0, v32

    :goto_3
    const/16 v2, 0xa

    if-gt v3, v12, :cond_34

    .line 6
    invoke-static {v14, v2, v3, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v16

    if-gez v16, :cond_3

    move v2, v12

    goto :goto_4

    :cond_3
    add-int/lit8 v16, v16, 0x1

    move/from16 v2, v16

    .line 7
    :goto_4
    iget v8, v15, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v8, v7

    if-eqz v4, :cond_a

    .line 8
    const-class v7, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v4, v3, v2, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/LeadingMarginSpan;

    move/from16 v20, p5

    move/from16 v21, v20

    move/from16 v19, v8

    const/4 v8, 0x0

    .line 9
    :goto_5
    array-length v12, v7

    if-ge v8, v12, :cond_5

    .line 10
    aget-object v12, v7, v8

    .line 11
    aget-object v13, v7, v8

    move-object/from16 v22, v9

    const/4 v9, 0x1

    invoke-interface {v13, v9}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v20, v20, v13

    .line 12
    aget-object v13, v7, v8

    const/4 v9, 0x0

    invoke-interface {v13, v9}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v21, v21, v13

    .line 13
    instance-of v13, v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v13, :cond_4

    .line 14
    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 15
    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v15, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 16
    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    add-int/2addr v13, v12

    move/from16 v19, v13

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, p2

    move-object/from16 v9, v22

    goto :goto_5

    :cond_5
    move-object/from16 v22, v9

    const/4 v9, 0x0

    .line 17
    const-class v7, Landroid/text/style/LineHeightSpan;

    invoke-static {v4, v3, v2, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/LineHeightSpan;

    .line 18
    array-length v8, v7

    if-eqz v8, :cond_9

    if-eqz v0, :cond_6

    .line 19
    array-length v8, v0

    array-length v12, v7

    if-ge v8, v12, :cond_7

    .line 20
    :cond_6
    array-length v0, v7

    invoke-static {v0}, Lu/a;->h(I)I

    move-result v0

    new-array v0, v0, [I

    :cond_7
    move v8, v9

    .line 21
    :goto_6
    array-length v12, v7

    if-ge v8, v12, :cond_9

    .line 22
    aget-object v12, v7, v8

    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    if-ge v12, v3, :cond_8

    .line 23
    invoke-virtual {v15, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v12

    aput v12, v0, v8

    goto :goto_7

    .line 24
    :cond_8
    aput v1, v0, v8

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v33, v0

    move-object/from16 v34, v7

    move/from16 v8, v19

    move/from16 v35, v21

    goto :goto_8

    :cond_a
    move-object/from16 v22, v9

    const/4 v9, 0x0

    move/from16 v20, p5

    move/from16 v35, v20

    move-object/from16 v33, v0

    move-object/from16 v34, v32

    .line 25
    :goto_8
    invoke-virtual {v5, v14, v3, v2, v10}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 26
    iget-object v13, v5, Landroid/text/MeasuredText;->mChars:[C

    .line 27
    iget-object v12, v5, Landroid/text/MeasuredText;->mWidths:[F

    .line 28
    iget-object v7, v5, Landroid/text/MeasuredText;->mLevels:[B

    .line 29
    iget v0, v5, Landroid/text/MeasuredText;->mDir:I

    .line 30
    iget-boolean v14, v5, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v16, v1

    move/from16 v28, v3

    move/from16 v40, v28

    move v1, v8

    move/from16 v19, v9

    move/from16 v23, v19

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v36, v26

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v42, v39

    move/from16 v21, v14

    move/from16 v27, v30

    move/from16 v29, v27

    move/from16 v41, v29

    move-object/from16 v43, v32

    move/from16 v8, v40

    move v14, v8

    :goto_9
    if-ge v14, v2, :cond_2f

    if-nez v4, :cond_b

    sub-int v9, v2, v14

    .line 31
    invoke-virtual {v5, v11, v9, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move/from16 v45, v1

    move v1, v2

    move-object/from16 v9, v22

    move/from16 v22, v0

    goto :goto_a

    :cond_b
    move-object/from16 v9, v22

    move/from16 v22, v0

    .line 32
    invoke-interface {v4, v14, v2, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    move/from16 v45, v1

    sub-int v1, v0, v14

    .line 33
    invoke-interface {v4, v14, v0, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    move/from16 v47, v0

    move-object/from16 v0, v46

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 34
    invoke-static {v0, v4, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 35
    invoke-virtual {v5, v11, v0, v1, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move/from16 v1, v47

    .line 36
    :goto_a
    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v46, v14

    .line 37
    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v47, v14

    .line 38
    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v48, v14

    .line 39
    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v10, v27

    move/from16 v11, v28

    move/from16 v49, v36

    move/from16 v50, v37

    move/from16 v51, v38

    move/from16 v52, v39

    move/from16 v28, v0

    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v0, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v9, v26

    move/from16 v38, v29

    move/from16 v7, v46

    move-object/from16 v29, v5

    move/from16 v5, v40

    move/from16 v70, v20

    move/from16 v20, v14

    move/from16 v14, v70

    :goto_b
    if-ge v7, v1, :cond_2e

    move/from16 v25, v9

    sub-int v9, v7, v3

    move/from16 v26, v0

    .line 40
    aget-char v0, v13, v9

    move-object/from16 v39, v6

    const/16 v6, 0xa

    if-ne v0, v6, :cond_c

    move/from16 v53, v2

    :goto_c
    move/from16 v40, v19

    goto/16 :goto_12

    :cond_c
    const/16 v6, 0x9

    if-ne v0, v6, :cond_10

    if-nez v42, :cond_e

    if-eqz v4, :cond_d

    .line 41
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v3, v2, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 42
    array-length v6, v9

    if-lez v6, :cond_d

    .line 43
    new-instance v6, Landroid/text/Layout$TabStops;

    move/from16 v53, v2

    const/16 v2, 0x14

    invoke-direct {v6, v2, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    goto :goto_d

    :cond_d
    move/from16 v53, v2

    const/16 v2, 0x14

    move-object/from16 v6, v43

    :goto_d
    const/16 v19, 0x1

    const/16 v42, 0x1

    goto :goto_e

    :cond_e
    move/from16 v53, v2

    const/16 v2, 0x14

    move-object/from16 v6, v43

    :goto_e
    if-eqz v6, :cond_f

    .line 44
    invoke-virtual {v6, v10}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v10

    goto :goto_f

    .line 45
    :cond_f
    invoke-static {v10, v2}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v10

    :goto_f
    move-object/from16 v43, v6

    goto :goto_c

    :cond_10
    move/from16 v53, v2

    const v2, 0xd800

    if-lt v0, v2, :cond_14

    const v2, 0xdfff

    if-gt v0, v2, :cond_14

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v1, :cond_14

    .line 46
    invoke-static {v13, v9}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    move/from16 v40, v2

    .line 47
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v2, :cond_13

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v2, :cond_13

    .line 48
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v2, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_12

    if-nez v4, :cond_11

    move-object/from16 v6, p4

    goto :goto_10

    .line 49
    :cond_11
    iget-object v6, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 50
    :goto_10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v7, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v7, v2

    add-float/2addr v10, v7

    move/from16 v7, v40

    const/16 v19, 0x1

    goto/16 :goto_c

    .line 51
    :cond_12
    aget v2, v12, v9

    goto :goto_11

    .line 52
    :cond_13
    aget v2, v12, v9

    goto :goto_11

    .line 53
    :cond_14
    aget v2, v12, v9

    :goto_11
    add-float/2addr v10, v2

    goto/16 :goto_c

    :goto_12
    const/16 v2, 0x20

    if-eq v0, v2, :cond_16

    const/16 v2, 0x9

    if-eq v0, v2, :cond_16

    const/16 v2, 0x200b

    if-ne v0, v2, :cond_15

    goto :goto_13

    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    :cond_16
    :goto_13
    const/4 v2, 0x1

    :goto_14
    int-to-float v6, v14

    cmpg-float v6, v10, v6

    if-lez v6, :cond_1e

    if-eqz v2, :cond_17

    goto/16 :goto_19

    :cond_17
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_18

    const/16 v54, 0x1

    goto :goto_15

    :cond_18
    const/16 v54, 0x0

    :goto_15
    if-eq v11, v8, :cond_19

    move/from16 v10, v28

    move/from16 v27, v38

    move-object/from16 v6, v39

    move/from16 v25, v49

    move/from16 v5, v50

    move/from16 v7, v52

    :goto_16
    move/from16 v39, v22

    goto :goto_17

    :cond_19
    if-eq v5, v8, :cond_1a

    move v11, v5

    move/from16 v7, v23

    move/from16 v5, v24

    move/from16 v51, v26

    move/from16 v10, v28

    move-object/from16 v6, v39

    move/from16 v27, v41

    goto :goto_16

    :cond_1a
    add-int/lit8 v11, v8, 0x1

    move-object/from16 v6, v39

    .line 54
    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 55
    iget v2, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 56
    iget v5, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 57
    iget v7, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v9, v8, v3

    .line 58
    aget v9, v12, v9

    move/from16 v25, v0

    move/from16 v51, v5

    move/from16 v27, v9

    move/from16 v39, v22

    move/from16 v10, v28

    move v5, v2

    :goto_17
    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p1

    move/from16 v55, v53

    move v2, v8

    move/from16 v53, v3

    move v3, v11

    move-object/from16 v56, v4

    move/from16 v4, v25

    move-object/from16 v8, v29

    move-object/from16 v57, v6

    move/from16 v6, v51

    move-object/from16 v59, v8

    move/from16 v8, v16

    move/from16 v60, v9

    move/from16 v9, p7

    move/from16 v61, v10

    move/from16 v10, p8

    move/from16 v62, v11

    move-object/from16 v11, v34

    move-object/from16 v44, v12

    move-object/from16 v12, v33

    move-object/from16 v63, v13

    move-object/from16 v13, v57

    move/from16 v67, v20

    move/from16 v64, v46

    move/from16 v65, v47

    move/from16 v66, v48

    move/from16 v46, v14

    move/from16 v47, v21

    move/from16 v14, v40

    move/from16 v15, v31

    move-object/from16 v16, v36

    move/from16 v17, v39

    move/from16 v18, v47

    move/from16 v19, p3

    move/from16 v20, p9

    move/from16 v21, p10

    move-object/from16 v22, v63

    move-object/from16 v23, v44

    move/from16 v24, v53

    move-object/from16 v25, p12

    move/from16 v26, p11

    move-object/from16 v28, p4

    move/from16 v29, v54

    .line 59
    invoke-direct/range {v0 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v16

    move/from16 v11, v62

    add-int/lit8 v7, v11, -0x1

    add-int/lit8 v45, v45, -0x1

    if-gtz v45, :cond_1b

    move/from16 v14, v35

    goto :goto_18

    :cond_1b
    move/from16 v14, v46

    :goto_18
    move/from16 v3, v64

    if-ge v11, v3, :cond_1c

    move-object/from16 v15, v59

    .line 60
    invoke-virtual {v15, v11}, Landroid/text/MeasuredText;->setPos(I)V

    move v8, v11

    move/from16 v28, v8

    move/from16 v20, v14

    move/from16 v27, v30

    move/from16 v19, v40

    move/from16 v1, v45

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v58, 0x0

    move-object/from16 v13, p0

    move/from16 v14, v28

    move/from16 v40, v14

    goto/16 :goto_25

    :cond_1c
    move-object/from16 v13, p0

    move-object/from16 v15, v59

    .line 61
    iget v0, v13, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_1d

    move v8, v11

    move/from16 v28, v8

    move/from16 v20, v14

    move/from16 v27, v30

    move/from16 v19, v40

    move/from16 v1, v45

    move/from16 v14, v60

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v58, 0x0

    move/from16 v40, v28

    goto/16 :goto_25

    :cond_1d
    move/from16 v64, v3

    move v5, v11

    move v8, v5

    move/from16 v46, v14

    move/from16 v10, v30

    move/from16 v2, v60

    move/from16 v28, v61

    move/from16 v9, v66

    move/from16 v14, v67

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    goto/16 :goto_24

    :cond_1e
    :goto_19
    move/from16 v60, v1

    move-object/from16 v56, v4

    move-object/from16 v44, v12

    move-object/from16 v63, v13

    move-object v13, v15

    move/from16 v67, v20

    move/from16 v61, v28

    move-object/from16 v15, v29

    move-object/from16 v57, v39

    move/from16 v65, v47

    move/from16 v66, v48

    move/from16 v55, v53

    move/from16 v53, v3

    move/from16 v47, v21

    move/from16 v39, v22

    move/from16 v3, v46

    move/from16 v46, v14

    add-int/lit8 v1, v7, 0x1

    move/from16 v6, v26

    move/from16 v4, v61

    if-ge v4, v6, :cond_1f

    move v6, v4

    :cond_1f
    move/from16 v12, v25

    move/from16 v9, v66

    if-ge v9, v12, :cond_20

    move v12, v9

    :cond_20
    move/from16 v5, v24

    move/from16 v14, v67

    move/from16 v64, v3

    move/from16 v28, v4

    if-le v14, v5, :cond_21

    move v5, v14

    :cond_21
    move/from16 v4, v23

    move/from16 v3, v65

    if-le v3, v4, :cond_22

    move v4, v3

    :cond_22
    if-nez v2, :cond_28

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_24

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_23

    goto :goto_1a

    :cond_23
    move/from16 v65, v3

    move/from16 v2, v60

    goto :goto_1b

    :cond_24
    :goto_1a
    move/from16 v2, v60

    if-ge v1, v2, :cond_27

    sub-int v17, v1, v53

    .line 62
    aget-char v17, v63, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isDigit(C)Z

    move-result v17

    if-eqz v17, :cond_27

    move/from16 v65, v3

    :goto_1b
    const/16 v3, 0x2e80

    if-lt v0, v3, :cond_25

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v0

    if-eqz v0, :cond_25

    if-ge v1, v2, :cond_25

    sub-int v0, v1, v53

    aget-char v0, v63, v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_1d

    :cond_25
    const/4 v3, 0x0

    :cond_26
    move v0, v3

    goto :goto_1e

    :cond_27
    move/from16 v65, v3

    goto :goto_1c

    :cond_28
    move/from16 v65, v3

    move/from16 v2, v60

    :goto_1c
    const/4 v3, 0x0

    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_2d

    move/from16 v0, v51

    if-ge v6, v0, :cond_29

    move/from16 v51, v6

    goto :goto_1f

    :cond_29
    move/from16 v51, v0

    :goto_1f
    move/from16 v0, v49

    if-ge v12, v0, :cond_2a

    move/from16 v49, v12

    goto :goto_20

    :cond_2a
    move/from16 v49, v0

    :goto_20
    move/from16 v0, v50

    if-le v5, v0, :cond_2b

    move/from16 v50, v5

    goto :goto_21

    :cond_2b
    move/from16 v50, v0

    :goto_21
    move/from16 v0, v52

    if-le v4, v0, :cond_2c

    move v11, v1

    move/from16 v20, v4

    goto :goto_22

    :cond_2c
    move/from16 v20, v0

    move v11, v1

    :goto_22
    move/from16 v38, v10

    goto :goto_23

    :cond_2d
    move/from16 v17, v49

    move/from16 v18, v50

    move/from16 v0, v51

    move/from16 v20, v52

    :goto_23
    move/from16 v23, v4

    move/from16 v24, v5

    move v0, v6

    move/from16 v41, v10

    move/from16 v52, v20

    const/16 v21, 0x1

    move v5, v1

    :goto_24
    add-int/lit8 v7, v7, 0x1

    move v1, v2

    move/from16 v48, v9

    move v9, v12

    move/from16 v20, v14

    move-object/from16 v29, v15

    move/from16 v22, v39

    move/from16 v19, v40

    move-object/from16 v12, v44

    move/from16 v14, v46

    move/from16 v21, v47

    move/from16 v3, v53

    move/from16 v2, v55

    move-object/from16 v4, v56

    move-object/from16 v6, v57

    move/from16 v46, v64

    move/from16 v47, v65

    move-object v15, v13

    move-object/from16 v13, v63

    goto/16 :goto_b

    :cond_2e
    move/from16 v55, v2

    move/from16 v53, v3

    move-object/from16 v56, v4

    move-object/from16 v57, v6

    move-object/from16 v44, v12

    move-object/from16 v63, v13

    move/from16 v46, v14

    move-object v13, v15

    move/from16 v47, v21

    move/from16 v39, v22

    move/from16 v4, v23

    move-object/from16 v15, v29

    move/from16 v17, v49

    move/from16 v18, v50

    move/from16 v20, v52

    const/4 v3, 0x0

    const/16 v21, 0x1

    move v6, v0

    move v2, v1

    move v12, v9

    move/from16 v0, v51

    move v14, v2

    move/from16 v40, v5

    move/from16 v23, v6

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v26, v12

    move/from16 v58, v17

    move/from16 v2, v20

    move/from16 v25, v24

    move/from16 v1, v45

    move/from16 v20, v46

    move/from16 v24, v4

    :goto_25
    move-object/from16 v11, p4

    move-object/from16 v10, p6

    move v9, v3

    move-object v5, v15

    move-object/from16 v7, v36

    move-object/from16 v22, v37

    move/from16 v29, v38

    move-object/from16 v12, v44

    move/from16 v21, v47

    move/from16 v3, v53

    move-object/from16 v4, v56

    move-object/from16 v6, v57

    move/from16 v36, v58

    move/from16 v38, v0

    move-object v15, v13

    move/from16 v37, v18

    move/from16 v0, v39

    move-object/from16 v13, v63

    move/from16 v39, v2

    move/from16 v2, v55

    goto/16 :goto_9

    :cond_2f
    move/from16 v39, v0

    move v14, v2

    move/from16 v53, v3

    move-object/from16 v56, v4

    move-object/from16 v57, v6

    move-object/from16 v36, v7

    move v3, v9

    move-object/from16 v44, v12

    move-object/from16 v63, v13

    move-object v13, v15

    move/from16 v47, v21

    move-object/from16 v37, v22

    const/16 v21, 0x1

    move-object v15, v5

    if-eq v14, v8, :cond_32

    .line 63
    iget v0, v13, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v0, v1, :cond_32

    or-int v0, v23, v24

    or-int v0, v0, v25

    or-int v0, v0, v26

    move-object/from16 v12, p4

    move-object/from16 v11, v57

    if-nez v0, :cond_30

    .line 64
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 65
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 66
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 67
    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 68
    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v10, p3

    move v6, v0

    move v7, v1

    move v5, v4

    move v4, v2

    goto :goto_26

    :cond_30
    move/from16 v10, p3

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v25

    move/from16 v4, v26

    :goto_26
    if-eq v14, v10, :cond_31

    move/from16 v29, v21

    goto :goto_27

    :cond_31
    move/from16 v29, v3

    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v38, v3

    move/from16 v35, v21

    move v3, v14

    move/from16 v8, v16

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v57, v11

    move-object/from16 v11, v34

    move-object/from16 v12, v33

    move-object/from16 v13, v57

    move/from16 v68, v14

    move/from16 v14, v19

    move-object/from16 v69, v15

    move/from16 v15, v31

    move-object/from16 v16, v36

    move/from16 v17, v39

    move/from16 v18, v47

    move/from16 v19, p3

    move/from16 v20, p9

    move/from16 v21, p10

    move-object/from16 v22, v63

    move-object/from16 v23, v44

    move/from16 v24, v53

    move-object/from16 v25, p12

    move/from16 v26, p11

    move-object/from16 v28, p4

    .line 69
    invoke-direct/range {v0 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0

    move/from16 v15, p3

    move v1, v0

    goto :goto_28

    :cond_32
    move/from16 v38, v3

    move/from16 v68, v14

    move-object/from16 v69, v15

    move/from16 v35, v21

    move/from16 v15, p3

    move/from16 v1, v16

    :goto_28
    move/from16 v12, v68

    if-ne v12, v15, :cond_33

    goto :goto_29

    :cond_33
    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v11, p4

    move-object/from16 v10, p6

    move v3, v12

    move v12, v15

    move-object/from16 v0, v33

    move/from16 v7, v35

    move-object/from16 v9, v37

    move/from16 v8, v38

    move-object/from16 v4, v56

    move-object/from16 v6, v57

    move-object/from16 v5, v69

    move-object/from16 v15, p0

    goto/16 :goto_3

    :cond_34
    move-object/from16 v69, v5

    move-object/from16 v57, v6

    move v15, v12

    :goto_29
    move/from16 v13, p2

    move v8, v1

    if-eq v15, v13, :cond_35

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v1, p1

    .line 70
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_36

    goto :goto_2a

    :cond_35
    move-object/from16 v1, p1

    :goto_2a
    move-object/from16 v10, p0

    iget v0, v10, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, v10, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v0, v2, :cond_36

    move-object/from16 v0, p6

    move-object/from16 v2, v69

    .line 71
    invoke-virtual {v2, v1, v13, v15, v0}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    move-object/from16 v9, p4

    move-object/from16 v3, v57

    .line 72
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 73
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-object v0, v2, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v16, v0

    iget v0, v2, Landroid/text/MeasuredText;->mDir:I

    move/from16 v17, v0

    iget-boolean v0, v2, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v19, v3

    move/from16 v3, p3

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v13, v19

    move/from16 v15, v31

    move/from16 v19, p3

    move/from16 v20, p9

    move/from16 v21, p10

    move/from16 v24, p2

    move-object/from16 v25, p12

    move/from16 v26, p11

    move-object/from16 v28, p4

    invoke-direct/range {v0 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    :cond_36
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    aget p1, v1, v0

    return p1
.end method

.method public getEllipsisStart(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aget p1, v1, v0

    return p1
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 p1, 0x0

    add-int/2addr v1, p1

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    .line 2
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLineForVertical(I)I
    .locals 6

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 2
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v2

    shr-int/2addr v3, v4

    .line 3
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v1, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method

.method public getLineStart(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget p1, v0, v1

    const v0, 0x1fffffff

    and-int/2addr p1, v0

    return p1
.end method

.method public getLineTop(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    .line 2
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget p1, v0, v1

    shr-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method public getTopPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public prepare()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method
