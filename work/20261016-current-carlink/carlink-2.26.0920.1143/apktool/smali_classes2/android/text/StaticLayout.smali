.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 9

    .line 37
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v3, v1

    :goto_1
    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v6, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v7, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v8, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    .line 39
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 40
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 42
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 43
    iget v1, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 44
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v2, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 45
    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v0, 0x6

    .line 46
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    .line 47
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 48
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 49
    :goto_2
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    const-class v1, Landroid/text/Layout$Directions;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 50
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 51
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 52
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 53
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 54
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->setJustificationMode(I)V

    .line 55
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v0}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 31
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const p1, 0x7fffffff

    .line 33
    iput p1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 p1, 0x6

    .line 34
    iput p1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 p1, p1, 0x2

    .line 35
    const-class v0, Landroid/text/Layout$Directions;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Layout$Directions;

    iput-object p1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 36
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

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

    .line 4
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14

    .line 6
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

    .line 5
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 13

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    move-object v1, v9

    goto :goto_1

    .line 7
    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

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

    const/4 v0, -0x1

    .line 8
    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    .line 9
    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 10
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    .line 11
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p7

    .line 12
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v1, p8

    move/from16 v2, p9

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v1, p10

    .line 14
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v10, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Ellipsizer;

    .line 19
    iput-object v8, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 20
    iput v11, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 21
    iput-object v10, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 22
    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x6

    .line 23
    iput v1, v8, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    .line 24
    iput v1, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v1, p5

    .line 25
    iput v1, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 26
    :goto_2
    iget v1, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    const-class v2, Landroid/text/Layout$Directions;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 27
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v8, Landroid/text/StaticLayout;->mLines:[I

    .line 28
    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 29
    iget-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v0, v1, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 30
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10

    const/4 v2, 0x0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

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

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

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

.method public static synthetic access$000()J
    .locals 2

    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$100(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method public static synthetic access$200(J[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method public static synthetic access$300(JLjava/lang/String;[J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/text/StaticLayout;->nSetLocales(JLjava/lang/String;[J)V

    return-void
.end method

.method public static synthetic access$400(JJJIIZ)F
    .locals 0

    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result p0

    return p0
.end method

.method public static synthetic access$500(JII[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method public static synthetic access$600(JIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method public static synthetic access$800(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    move/from16 v2, p7

    .line 5
    .line 6
    invoke-direct {p0, v2}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    sub-float v3, p5, v3

    .line 11
    .line 12
    cmpg-float v4, p8, v3

    .line 13
    .line 14
    const/4 v5, 0x5

    .line 15
    const/4 v6, 0x0

    .line 16
    if-gtz v4, :cond_0

    .line 17
    .line 18
    if-nez p10, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 21
    .line 22
    iget v3, v0, Landroid/text/StaticLayout;->mColumns:I

    .line 23
    .line 24
    mul-int v4, v3, v2

    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x4

    .line 27
    .line 28
    aput v6, v1, v4

    .line 29
    .line 30
    mul-int/2addr v3, v2

    .line 31
    add-int/2addr v3, v5

    .line 32
    aput v6, v1, v3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 36
    .line 37
    if-ne v1, v4, :cond_1

    .line 38
    .line 39
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    .line 43
    .line 44
    :goto_0
    const/4 v8, 0x1

    .line 45
    move-object/from16 v9, p9

    .line 46
    .line 47
    invoke-virtual {v9, v7, v6, v8}, Landroid/graphics/Paint;->measureText([CII)F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    sub-int v9, p2, p1

    .line 52
    .line 53
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 54
    .line 55
    const-string v11, "StaticLayout"

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    if-ne v1, v10, :cond_4

    .line 59
    .line 60
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 61
    .line 62
    if-ne v1, v8, :cond_3

    .line 63
    .line 64
    move v1, v9

    .line 65
    move v4, v12

    .line 66
    :goto_1
    if-lez v1, :cond_f

    .line 67
    .line 68
    add-int/lit8 v10, v1, -0x1

    .line 69
    .line 70
    add-int/2addr v10, p1

    .line 71
    sub-int v10, v10, p4

    .line 72
    .line 73
    aget v10, p3, v10

    .line 74
    .line 75
    add-float/2addr v4, v10

    .line 76
    add-float v10, v4, v7

    .line 77
    .line 78
    cmpl-float v10, v10, v3

    .line 79
    .line 80
    if-lez v10, :cond_2

    .line 81
    .line 82
    :goto_2
    if-ge v1, v9, :cond_f

    .line 83
    .line 84
    add-int v3, v1, p1

    .line 85
    .line 86
    sub-int v3, v3, p4

    .line 87
    .line 88
    aget v3, p3, v3

    .line 89
    .line 90
    cmpl-float v3, v3, v12

    .line 91
    .line 92
    if-nez v3, :cond_f

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-static {v11, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_b

    .line 105
    .line 106
    const-string v1, "Start Ellipsis only supported with one line"

    .line 107
    .line 108
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_4
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 113
    .line 114
    if-eq v1, v10, :cond_c

    .line 115
    .line 116
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 117
    .line 118
    if-eq v1, v10, :cond_c

    .line 119
    .line 120
    if-ne v1, v4, :cond_5

    .line 121
    .line 122
    goto :goto_8

    .line 123
    :cond_5
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 124
    .line 125
    if-ne v1, v8, :cond_a

    .line 126
    .line 127
    sub-float/2addr v3, v7

    .line 128
    const/high16 v1, 0x40000000    # 2.0f

    .line 129
    .line 130
    div-float v1, v3, v1

    .line 131
    .line 132
    move v4, v9

    .line 133
    move v7, v12

    .line 134
    :goto_3
    if-lez v4, :cond_7

    .line 135
    .line 136
    add-int/lit8 v10, v4, -0x1

    .line 137
    .line 138
    add-int/2addr v10, p1

    .line 139
    sub-int v10, v10, p4

    .line 140
    .line 141
    aget v10, p3, v10

    .line 142
    .line 143
    add-float/2addr v10, v7

    .line 144
    cmpl-float v11, v10, v1

    .line 145
    .line 146
    if-lez v11, :cond_6

    .line 147
    .line 148
    :goto_4
    if-ge v4, v9, :cond_7

    .line 149
    .line 150
    add-int v1, v4, p1

    .line 151
    .line 152
    sub-int v1, v1, p4

    .line 153
    .line 154
    aget v1, p3, v1

    .line 155
    .line 156
    cmpl-float v1, v1, v12

    .line 157
    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 164
    .line 165
    move v7, v10

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    sub-float/2addr v3, v7

    .line 168
    :goto_5
    if-ge v6, v4, :cond_9

    .line 169
    .line 170
    add-int v1, v6, p1

    .line 171
    .line 172
    sub-int v1, v1, p4

    .line 173
    .line 174
    aget v1, p3, v1

    .line 175
    .line 176
    add-float/2addr v12, v1

    .line 177
    cmpl-float v1, v12, v3

    .line 178
    .line 179
    if-lez v1, :cond_8

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_9
    :goto_6
    sub-int v1, v4, v6

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_a
    invoke-static {v11, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_b

    .line 193
    .line 194
    const-string v1, "Middle Ellipsis only supported with one line"

    .line 195
    .line 196
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    :cond_b
    :goto_7
    move v1, v6

    .line 200
    goto :goto_a

    .line 201
    :cond_c
    :goto_8
    if-ge v6, v9, :cond_e

    .line 202
    .line 203
    add-int v1, v6, p1

    .line 204
    .line 205
    sub-int v1, v1, p4

    .line 206
    .line 207
    aget v1, p3, v1

    .line 208
    .line 209
    add-float/2addr v12, v1

    .line 210
    add-float v1, v12, v7

    .line 211
    .line 212
    cmpl-float v1, v1, v3

    .line 213
    .line 214
    if-lez v1, :cond_d

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_e
    :goto_9
    sub-int v1, v9, v6

    .line 221
    .line 222
    if-eqz p10, :cond_f

    .line 223
    .line 224
    if-nez v1, :cond_f

    .line 225
    .line 226
    if-lez v9, :cond_f

    .line 227
    .line 228
    sub-int/2addr v9, v8

    .line 229
    move v1, v8

    .line 230
    move v6, v9

    .line 231
    :cond_f
    :goto_a
    iput-boolean v8, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 232
    .line 233
    iget-object v3, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 234
    .line 235
    iget v4, v0, Landroid/text/StaticLayout;->mColumns:I

    .line 236
    .line 237
    mul-int v7, v4, v2

    .line 238
    .line 239
    add-int/lit8 v7, v7, 0x4

    .line 240
    .line 241
    aput v6, v3, v7

    .line 242
    .line 243
    mul-int/2addr v4, v2

    .line 244
    add-int/2addr v4, v5

    .line 245
    aput v1, v3, v4

    .line 246
    .line 247
    return-void
.end method

.method private getTotalInsets(I)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    aget p1, v1, p1

    .line 28
    .line 29
    add-int/2addr v0, p1

    .line 30
    :cond_1
    int-to-float p1, v0

    .line 31
    return p1
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method public static native nLoadHyphenator(Ljava/nio/ByteBuffer;III)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocales(JLjava/lang/String;[J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIIIZ)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 25

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-object/from16 v8, p11

    move-object/from16 v9, p13

    move-object/from16 v10, p25

    .line 1
    iget v13, v11, Landroid/text/StaticLayout;->mLineCount:I

    .line 2
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v14, v13, v0

    add-int/2addr v0, v14

    const/4 v15, 0x1

    add-int/2addr v0, v15

    .line 3
    iget-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    .line 4
    array-length v2, v1

    const/4 v7, 0x0

    if-lt v0, v2, :cond_0

    .line 5
    const-class v2, Landroid/text/Layout$Directions;

    .line 6
    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    .line 7
    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    .line 8
    iget-object v2, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v2

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 10
    array-length v0, v0

    new-array v0, v0, [I

    .line 11
    array-length v2, v1

    invoke-static {v1, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 12
    iput-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    :goto_0
    if-eqz v8, :cond_3

    move/from16 v0, p4

    .line 13
    iput v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v1, p5

    .line 14
    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v2, p6

    .line 15
    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v3, p7

    .line 16
    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v7

    .line 17
    :goto_1
    array-length v0, v8

    if-ge v6, v0, :cond_2

    .line 18
    aget-object v0, v8, v6

    instance-of v1, v0, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v1, :cond_1

    .line 19
    check-cast v0, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v4, p12, v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move/from16 v17, v6

    move-object/from16 v6, p13

    move/from16 v18, v7

    move-object/from16 v7, p28

    .line 20
    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_1
    move/from16 v17, v6

    move/from16 v18, v7

    .line 21
    aget v4, p12, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v7

    .line 22
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 23
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 24
    iget v2, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 25
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3

    :cond_3
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v18, v7

    :goto_3
    move/from16 v17, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    if-nez v13, :cond_4

    move/from16 v22, v15

    goto :goto_4

    :cond_4
    move/from16 v22, v18

    :goto_4
    add-int/lit8 v0, v13, 0x1

    .line 26
    iget v1, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v1, :cond_5

    move/from16 v23, v15

    goto :goto_5

    :cond_5
    move/from16 v23, v18

    :goto_5
    if-eqz v10, :cond_d

    if-eqz p29, :cond_6

    .line 27
    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v0, v15

    if-ne v0, v1, :cond_6

    move/from16 v24, v15

    goto :goto_6

    :cond_6
    move/from16 v24, v18

    :goto_6
    if-ne v1, v15, :cond_7

    if-nez p29, :cond_8

    :cond_7
    if-eqz v22, :cond_9

    if-nez p29, :cond_9

    .line 28
    :cond_8
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v0, :cond_b

    :cond_9
    if-nez v22, :cond_c

    if-nez v23, :cond_a

    if-nez p29, :cond_c

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v0, :cond_c

    :cond_b
    move v7, v15

    goto :goto_7

    :cond_c
    move/from16 v7, v18

    :goto_7
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p23

    move/from16 v4, p24

    move/from16 v5, p26

    move-object/from16 v6, p25

    move v7, v13

    move/from16 v8, p27

    move-object/from16 v9, p28

    move/from16 v10, v24

    .line 29
    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 30
    :cond_d
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v0, :cond_f

    move/from16 v1, p19

    if-ne v12, v1, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v7, v18

    goto :goto_9

    :cond_f
    :goto_8
    move v7, v15

    :goto_9
    if-eqz v22, :cond_11

    if-eqz p21, :cond_10

    sub-int v1, v20, v17

    .line 31
    iput v1, v11, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_10
    if-eqz p20, :cond_11

    move/from16 v17, v20

    :cond_11
    if-eqz v7, :cond_13

    if-eqz p21, :cond_12

    sub-int v1, v21, v19

    .line 32
    iput v1, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_12
    if-eqz p20, :cond_13

    move/from16 v19, v21

    :cond_13
    if-eqz p15, :cond_15

    if-nez v7, :cond_15

    sub-int v1, v19, v17

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v3, v2, v1, v4}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-ltz v3, :cond_14

    add-double/2addr v1, v4

    double-to-int v1, v1

    goto :goto_a

    :cond_14
    neg-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    neg-int v1, v1

    :goto_a
    move v7, v1

    goto :goto_b

    :cond_15
    move/from16 v7, v18

    :goto_b
    add-int/lit8 v1, v14, 0x0

    .line 33
    aput p2, v16, v1

    add-int/lit8 v2, v14, 0x1

    .line 34
    aput p8, v16, v2

    add-int/lit8 v2, v14, 0x2

    add-int v3, v19, v7

    .line 35
    aput v3, v16, v2

    if-nez v0, :cond_17

    if-eqz v23, :cond_17

    if-eqz p20, :cond_16

    goto :goto_c

    :cond_16
    move/from16 v21, v19

    :goto_c
    sub-int v21, v21, v17

    add-int v0, v21, p8

    .line 36
    iput v0, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_17
    sub-int v19, v19, v17

    add-int v19, v19, v7

    add-int v19, v19, p8

    .line 37
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v14, v0

    add-int/lit8 v2, v2, 0x0

    aput v12, v16, v2

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    .line 38
    aput v19, v16, v0

    .line 39
    aget v0, v16, v1

    const/high16 v2, 0x20000000

    and-int v2, p14, v2

    or-int/2addr v0, v2

    aput v0, v16, v1

    add-int/lit8 v14, v14, 0x3

    .line 40
    aput p14, v16, v14

    .line 41
    aget v0, v16, v1

    shl-int/lit8 v2, p17, 0x1e

    or-int/2addr v0, v2

    aput v0, v16, v1

    .line 42
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eqz p18, :cond_18

    .line 43
    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v0, v1, v13

    goto :goto_d

    .line 44
    :cond_18
    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v1, p2, p24

    sub-int v2, v12, p2

    move/from16 p1, p17

    move-object/from16 p2, p16

    move/from16 p3, v1

    move-object/from16 p4, p22

    move/from16 p5, v1

    move/from16 p6, v2

    invoke-static/range {p1 .. p6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    aput-object v1, v0, v13

    .line 45
    :goto_d
    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v0, v15

    iput v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    return v19
.end method


# virtual methods
.method public generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 72

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    .line 1
    iget-object v12, v13, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 2
    iget v11, v13, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 3
    iget v10, v13, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 4
    iget-object v9, v13, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 5
    iget v8, v13, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 6
    iget-object v7, v13, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7
    iget v6, v13, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 8
    iget v14, v13, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 9
    iget v0, v13, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v5, v0

    .line 10
    iget-object v4, v13, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 11
    new-instance v3, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct {v3}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0x10

    new-array v1, v1, [I

    .line 12
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;Landroid/os/LocaleList;)V

    const/4 v2, 0x0

    .line 13
    iput v2, v15, Landroid/text/StaticLayout;->mLineCount:I

    .line 14
    iput-boolean v2, v15, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 15
    iget v2, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v23, v11

    const/4 v11, 0x1

    if-ge v2, v11, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, v15, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v6, v2

    const/16 v30, 0x0

    if-nez v2, :cond_2

    cmpl-float v2, v14, v30

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v31, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v31, v11

    .line 16
    :goto_2
    iget-object v2, v13, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 17
    iget-object v11, v13, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    move-object/from16 v17, v0

    .line 18
    instance-of v0, v12, Landroid/text/Spanned;

    const/16 v32, 0x0

    if-eqz v0, :cond_3

    .line 19
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    goto :goto_3

    :cond_3
    move-object/from16 v0, v32

    :goto_3
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v26, v8

    move/from16 v1, v23

    move-object/from16 v2, v32

    const/16 v25, 0x0

    :goto_4
    const/16 v8, 0xa

    if-gt v1, v10, :cond_2e

    .line 20
    invoke-static {v12, v8, v1, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v20

    if-gez v20, :cond_4

    move v8, v10

    goto :goto_5

    :cond_4
    add-int/lit8 v20, v20, 0x1

    move/from16 v8, v20

    :goto_5
    move-object/from16 v20, v3

    if-eqz v0, :cond_c

    .line 21
    const-class v3, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v1, v8, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v33, v6

    move/from16 v27, v26

    move/from16 v29, v27

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 22
    :goto_6
    array-length v6, v3

    if-ge v5, v6, :cond_6

    .line 23
    aget-object v6, v3, v5

    move/from16 v34, v14

    const/4 v14, 0x1

    .line 24
    invoke-interface {v6, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v35

    sub-int v27, v27, v35

    .line 25
    aget-object v14, v3, v5

    move-object/from16 v35, v3

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int v29, v29, v14

    .line 26
    instance-of v14, v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_5

    .line 27
    check-cast v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 28
    invoke-interface {v6}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v6

    .line 29
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v34

    move-object/from16 v3, v35

    goto :goto_6

    :cond_6
    move/from16 v34, v14

    const/4 v3, 0x0

    .line 30
    const-class v5, Landroid/text/style/LineHeightSpan;

    invoke-static {v0, v1, v8, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineHeightSpan;

    .line 31
    array-length v6, v5

    if-nez v6, :cond_7

    move-object v5, v0

    move-object/from16 v35, v2

    move/from16 v42, v4

    move/from16 v6, v27

    move/from16 v14, v29

    move-object/from16 v36, v32

    goto :goto_9

    :cond_7
    if-eqz v2, :cond_8

    .line 32
    array-length v6, v2

    array-length v14, v5

    if-ge v6, v14, :cond_9

    .line 33
    :cond_8
    array-length v2, v5

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    :cond_9
    move v6, v3

    .line 34
    :goto_7
    array-length v14, v5

    if-ge v6, v14, :cond_b

    .line 35
    aget-object v14, v5, v6

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    if-ge v14, v1, :cond_a

    .line 36
    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v14

    aput v14, v2, v6

    goto :goto_8

    .line 37
    :cond_a
    aput v25, v2, v6

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v35, v2

    move/from16 v42, v4

    move-object/from16 v36, v5

    move/from16 v6, v27

    move/from16 v14, v29

    move-object v5, v0

    goto :goto_9

    :cond_c
    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v33, v6

    move/from16 v34, v14

    const/4 v3, 0x0

    move-object v5, v0

    move-object/from16 v35, v2

    move/from16 v6, v26

    move v14, v6

    move-object/from16 v36, v32

    const/16 v42, 0x1

    :goto_9
    move-object v0, v11

    move v4, v1

    move-object v1, v12

    move-object/from16 v29, v12

    move-object/from16 v12, v19

    move v2, v4

    move/from16 v49, v10

    move-object/from16 v50, v20

    move v10, v3

    move v3, v8

    move v10, v4

    move-object/from16 v51, v21

    move-object v4, v7

    move-object/from16 v54, v7

    move/from16 v53, v22

    move-object v7, v5

    move-object/from16 v5, p1

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 39
    iget-object v5, v11, Landroid/text/MeasuredText;->mChars:[C

    .line 40
    iget-object v4, v11, Landroid/text/MeasuredText;->mWidths:[F

    .line 41
    iget-object v3, v11, Landroid/text/MeasuredText;->mLevels:[B

    .line 42
    iget v2, v11, Landroid/text/MeasuredText;->mDir:I

    .line 43
    iget-boolean v1, v11, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v7, :cond_e

    .line 44
    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-static {v7, v10, v8, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    move/from16 v55, v1

    .line 45
    array-length v1, v0

    if-lez v1, :cond_f

    .line 46
    array-length v1, v0

    move/from16 v56, v2

    new-array v2, v1, [I

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    const/4 v3, 0x0

    .line 47
    :goto_a
    array-length v4, v0

    if-ge v3, v4, :cond_d

    .line 48
    aget-object v4, v0, v3

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    .line 49
    invoke-static {v2, v3, v1}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v44, v2

    goto :goto_b

    :cond_e
    move/from16 v55, v1

    :cond_f
    move/from16 v56, v2

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    move-object/from16 v44, v32

    .line 50
    :goto_b
    iget-wide v0, v13, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v40, v8, v10

    int-to-float v2, v6

    int-to-float v3, v14

    const/16 v45, 0x14

    iget v4, v13, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    iget v6, v13, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    iget v14, v13, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    if-eqz v14, :cond_10

    const/16 v48, 0x1

    goto :goto_c

    :cond_10
    const/16 v48, 0x0

    :goto_c
    move-wide/from16 v37, v0

    move-object/from16 v39, v5

    move/from16 v41, v2

    move/from16 v43, v3

    move/from16 v46, v4

    move/from16 v47, v6

    invoke-static/range {v37 .. v48}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIIIZ)V

    .line 51
    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_11

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_17

    :cond_11
    if-nez v0, :cond_12

    const/4 v2, 0x0

    goto :goto_d

    .line 52
    :cond_12
    array-length v2, v0

    .line 53
    :goto_d
    iget-object v0, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_e

    :cond_13
    array-length v0, v0

    .line 54
    :goto_e
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v15, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 55
    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_16

    .line 56
    iget-object v6, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v6, :cond_14

    move/from16 v16, v1

    const/4 v1, 0x0

    goto :goto_10

    :cond_14
    iget v14, v15, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v14, v4

    move/from16 v16, v1

    add-int/lit8 v1, v2, -0x1

    .line 57
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v1, v6, v1

    .line 58
    :goto_10
    iget-object v6, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v6, :cond_15

    move/from16 v19, v2

    const/4 v2, 0x0

    goto :goto_11

    :cond_15
    iget v14, v15, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v14, v4

    move/from16 v19, v2

    add-int/lit8 v2, v0, -0x1

    .line 59
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v2, v6, v2

    :goto_11
    add-int/2addr v1, v2

    .line 60
    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    move/from16 v2, v19

    goto :goto_f

    .line 61
    :cond_16
    iget-wide v0, v13, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, v3}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    :cond_17
    move v1, v10

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_12
    if-ge v1, v8, :cond_1b

    mul-int/lit8 v3, v2, 0x4

    .line 62
    array-length v14, v4

    if-lt v3, v14, :cond_18

    mul-int/lit8 v14, v3, 0x2

    .line 63
    new-array v14, v14, [I

    move-object/from16 v37, v5

    const/4 v5, 0x0

    .line 64
    invoke-static {v4, v5, v14, v5, v3}, Ljava/lang/System;->arraycopy([II[III)V

    move-object v4, v14

    goto :goto_13

    :cond_18
    move-object/from16 v37, v5

    const/4 v5, 0x0

    .line 65
    :goto_13
    array-length v14, v6

    if-lt v0, v14, :cond_19

    mul-int/lit8 v14, v0, 0x2

    .line 66
    new-array v14, v14, [I

    .line 67
    invoke-static {v6, v5, v14, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    move-object v6, v14

    :cond_19
    if-nez v7, :cond_1a

    sub-int v1, v8, v1

    .line 68
    invoke-virtual {v11, v9, v1, v12}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move v1, v8

    move/from16 v38, v10

    goto :goto_14

    .line 69
    :cond_1a
    const-class v14, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v1, v8, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    move/from16 v38, v10

    sub-int v10, v5, v1

    .line 70
    invoke-interface {v7, v1, v5, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 71
    invoke-static {v1, v7, v14}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 72
    invoke-virtual {v11, v9, v1, v10, v12}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move v1, v5

    :goto_14
    add-int/lit8 v5, v3, 0x0

    .line 73
    iget v10, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v4, v5

    add-int/lit8 v5, v3, 0x1

    .line 74
    iget v10, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v4, v5

    add-int/lit8 v5, v3, 0x2

    .line 75
    iget v10, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v4, v5

    add-int/lit8 v3, v3, 0x3

    .line 76
    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    .line 77
    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v37

    move/from16 v10, v38

    goto :goto_12

    :cond_1b
    move-object/from16 v37, v5

    move/from16 v38, v10

    .line 78
    iget-wide v0, v13, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v5, v58

    invoke-static {v0, v1, v5}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    .line 79
    iget-wide v0, v13, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v10, v50

    iget-object v2, v10, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    iget-object v3, v10, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    iget-object v14, v10, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v39, v7

    array-length v7, v2

    move-wide/from16 v16, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v14

    move/from16 v22, v7

    invoke-static/range {v16 .. v22}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v0

    .line 80
    iget-object v7, v10, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    .line 81
    iget-object v3, v10, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    .line 82
    iget-object v2, v10, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    .line 83
    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v14, v15, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v14, v1, v14

    move-object/from16 v15, v51

    move-object/from16 v16, v9

    if-eqz v15, :cond_1d

    .line 84
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v9, :cond_1c

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1d

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v1, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    goto :goto_15

    :cond_1d
    const/4 v1, 0x0

    :goto_15
    if-lez v14, :cond_22

    if-ge v14, v0, :cond_22

    if-eqz v1, :cond_22

    add-int/lit8 v1, v14, -0x1

    move-object/from16 v50, v10

    move/from16 v17, v30

    const/4 v9, 0x0

    move v10, v1

    :goto_16
    if-ge v10, v0, :cond_21

    move-object/from16 v18, v11

    add-int/lit8 v11, v0, -0x1

    if-ne v10, v11, :cond_1e

    .line 85
    aget v11, v3, v10

    add-float v17, v17, v11

    goto :goto_18

    :cond_1e
    if-nez v10, :cond_1f

    const/4 v11, 0x0

    goto :goto_17

    :cond_1f
    add-int/lit8 v11, v10, -0x1

    .line 86
    aget v11, v7, v11

    :goto_17
    aget v13, v7, v10

    if-ge v11, v13, :cond_20

    .line 87
    aget v13, v5, v11

    add-float v17, v17, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 88
    :cond_20
    :goto_18
    aget v11, v2, v10

    const/high16 v13, 0x20000000

    and-int/2addr v11, v13

    or-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v13, p1

    move-object/from16 v11, v18

    goto :goto_16

    :cond_21
    move-object/from16 v18, v11

    add-int/lit8 v0, v0, -0x1

    .line 89
    aget v0, v7, v0

    aput v0, v7, v1

    .line 90
    aput v17, v3, v1

    .line 91
    aput v9, v2, v1

    move v13, v14

    goto :goto_19

    :cond_22
    move-object/from16 v50, v10

    move-object/from16 v18, v11

    move v13, v0

    :goto_19
    move-object/from16 v58, v5

    move/from16 v1, v38

    move/from16 v17, v1

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_1a
    if-ge v1, v8, :cond_2c

    add-int/lit8 v40, v9, 0x1

    .line 92
    aget v9, v6, v9

    mul-int/lit8 v20, v10, 0x4

    add-int/lit8 v21, v20, 0x0

    move-object/from16 v22, v6

    .line 93
    aget v6, v4, v21

    iput v6, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/lit8 v21, v20, 0x1

    move/from16 v41, v8

    .line 94
    aget v8, v4, v21

    iput v8, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/lit8 v21, v20, 0x2

    move-object/from16 v51, v15

    .line 95
    aget v15, v4, v21

    iput v15, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/lit8 v20, v20, 0x3

    move-object/from16 v21, v3

    .line 96
    aget v3, v4, v20

    iput v3, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/16 v20, 0x1

    add-int/lit8 v42, v10, 0x1

    if-ge v6, v11, :cond_23

    move v11, v6

    :cond_23
    if-ge v15, v14, :cond_24

    move v14, v15

    :cond_24
    if-le v3, v0, :cond_25

    move v0, v3

    :cond_25
    if-le v8, v5, :cond_26

    move v5, v8

    :cond_26
    move/from16 v3, v19

    :goto_1b
    if-ge v3, v13, :cond_27

    .line 97
    aget v6, v7, v3

    add-int v6, v38, v6

    if-ge v6, v1, :cond_27

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_27
    move v15, v3

    move v8, v5

    move v6, v14

    move v5, v0

    :goto_1c
    if-ge v15, v13, :cond_2b

    .line 98
    aget v0, v7, v15

    add-int v1, v38, v0

    if-gt v1, v9, :cond_2b

    add-int v10, v38, v0

    move/from16 v3, v49

    if-ge v10, v3, :cond_28

    move/from16 v43, v20

    goto :goto_1d

    :cond_28
    const/16 v43, 0x0

    .line 99
    :goto_1d
    aget v14, v2, v15

    aget v27, v21, v15

    move-object/from16 v0, p0

    move/from16 v44, v55

    move-object/from16 v1, v29

    move-object/from16 v46, v2

    move/from16 v45, v56

    move/from16 v2, v17

    move/from16 v17, v3

    move-object/from16 v48, v21

    move-object/from16 v47, v57

    move v3, v10

    move-object/from16 v55, v4

    move-object/from16 v49, v58

    move v4, v6

    const/16 v19, 0x0

    move-object/from16 v52, v22

    move v6, v11

    move-object/from16 v56, v39

    move-object/from16 v39, v54

    move-object/from16 v54, v7

    move v7, v8

    move/from16 v11, v41

    move/from16 v41, v26

    move/from16 v8, v25

    move/from16 v59, v9

    move-object/from16 v57, v16

    move/from16 v9, v33

    move/from16 v60, v10

    move/from16 v58, v17

    move/from16 v61, v19

    move-object/from16 v70, v50

    move/from16 v50, v38

    move-object/from16 v38, v70

    move/from16 v10, v34

    move/from16 v64, v11

    move-object/from16 v63, v18

    move/from16 v65, v20

    move/from16 v62, v23

    move-object/from16 v11, v36

    move-object/from16 v67, v12

    move-object/from16 v66, v29

    move-object/from16 v12, v35

    move/from16 v68, v13

    move-object/from16 v13, v67

    move/from16 v69, v15

    move/from16 v15, v31

    move-object/from16 v16, v47

    move/from16 v17, v45

    move/from16 v18, v44

    move/from16 v19, v58

    move/from16 v20, p2

    move/from16 v21, p3

    move-object/from16 v22, v37

    move-object/from16 v23, v49

    move/from16 v24, v50

    move-object/from16 v25, v51

    move/from16 v26, v53

    move-object/from16 v28, v57

    move/from16 v29, v43

    invoke-direct/range {v0 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v25

    move/from16 v0, v59

    move/from16 v1, v60

    if-ge v1, v0, :cond_29

    move-object/from16 v13, v67

    .line 100
    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 101
    iget v3, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 102
    iget v4, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 103
    iget v5, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v11, v2

    move v8, v3

    move v6, v4

    goto :goto_1e

    :cond_29
    move-object/from16 v13, v67

    move/from16 v5, v61

    move v6, v5

    move v8, v6

    move v11, v8

    :goto_1e
    add-int/lit8 v15, v69, 0x1

    move-object/from16 v10, p0

    .line 104
    iget v2, v10, Landroid/text/StaticLayout;->mLineCount:I

    iget v3, v10, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v2, v3, :cond_2a

    iget-boolean v2, v10, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v2, :cond_2a

    return-void

    :cond_2a
    move v9, v0

    move/from16 v17, v1

    move-object v12, v13

    move/from16 v26, v41

    move-object/from16 v2, v46

    move-object/from16 v21, v48

    move-object/from16 v22, v52

    move-object/from16 v7, v54

    move-object/from16 v4, v55

    move-object/from16 v16, v57

    move/from16 v23, v62

    move-object/from16 v18, v63

    move/from16 v41, v64

    move/from16 v20, v65

    move-object/from16 v29, v66

    move/from16 v13, v68

    move-object/from16 v54, v39

    move/from16 v55, v44

    move-object/from16 v57, v47

    move-object/from16 v39, v56

    move/from16 v56, v45

    move/from16 v70, v50

    move-object/from16 v50, v38

    move/from16 v38, v70

    move/from16 v71, v58

    move-object/from16 v58, v49

    move/from16 v49, v71

    goto/16 :goto_1c

    :cond_2b
    move-object/from16 v10, p0

    move-object/from16 v46, v2

    move v0, v9

    move/from16 v68, v13

    move/from16 v69, v15

    move-object/from16 v63, v18

    move/from16 v65, v20

    move-object/from16 v48, v21

    move-object/from16 v52, v22

    move/from16 v62, v23

    move-object/from16 v66, v29

    move/from16 v64, v41

    move/from16 v44, v55

    move/from16 v45, v56

    move-object/from16 v47, v57

    const/16 v61, 0x0

    move-object/from16 v55, v4

    move-object v13, v12

    move-object/from16 v57, v16

    move/from16 v41, v26

    move-object/from16 v56, v39

    move-object/from16 v39, v54

    move-object/from16 v54, v7

    move-object/from16 v70, v50

    move/from16 v50, v38

    move-object/from16 v38, v70

    move-object/from16 v71, v58

    move/from16 v58, v49

    move-object/from16 v49, v71

    move v1, v0

    move v0, v5

    move v14, v6

    move v5, v8

    move-object v12, v13

    move/from16 v9, v40

    move/from16 v26, v41

    move/from16 v10, v42

    move-object/from16 v2, v46

    move-object/from16 v3, v48

    move-object/from16 v15, v51

    move-object/from16 v6, v52

    move-object/from16 v7, v54

    move-object/from16 v4, v55

    move-object/from16 v16, v57

    move/from16 v23, v62

    move-object/from16 v18, v63

    move/from16 v8, v64

    move-object/from16 v29, v66

    move/from16 v13, v68

    move/from16 v19, v69

    move-object/from16 v54, v39

    move/from16 v55, v44

    move-object/from16 v57, v47

    move-object/from16 v39, v56

    move/from16 v56, v45

    move/from16 v70, v50

    move-object/from16 v50, v38

    move/from16 v38, v70

    move/from16 v71, v58

    move-object/from16 v58, v49

    move/from16 v49, v71

    goto/16 :goto_1a

    :cond_2c
    move-object/from16 v10, p0

    move-object/from16 v55, v4

    move-object/from16 v52, v6

    move v0, v8

    move-object v13, v12

    move-object/from16 v51, v15

    move-object/from16 v57, v16

    move-object/from16 v63, v18

    move/from16 v62, v23

    move/from16 v41, v26

    move-object/from16 v66, v29

    move-object/from16 v56, v39

    move/from16 v15, v49

    move-object/from16 v38, v50

    move-object/from16 v39, v54

    const/16 v61, 0x0

    const/16 v65, 0x1

    if-ne v0, v15, :cond_2d

    move/from16 v8, v25

    move/from16 v9, v62

    goto :goto_1f

    :cond_2d
    move v1, v0

    move-object/from16 v19, v13

    move/from16 v6, v33

    move/from16 v14, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v38

    move-object/from16 v7, v39

    move/from16 v26, v41

    move-object/from16 v4, v51

    move-object/from16 v17, v52

    move/from16 v5, v53

    move-object/from16 v18, v55

    move-object/from16 v0, v56

    move-object/from16 v9, v57

    move/from16 v23, v62

    move-object/from16 v11, v63

    move-object/from16 v12, v66

    move-object/from16 v13, p1

    move/from16 v70, v15

    move-object v15, v10

    move/from16 v10, v70

    goto/16 :goto_4

    :cond_2e
    move-object/from16 v51, v4

    move/from16 v53, v5

    move/from16 v33, v6

    move-object/from16 v39, v7

    move-object/from16 v57, v9

    move-object/from16 v63, v11

    move-object/from16 v66, v12

    move/from16 v34, v14

    move-object/from16 v13, v19

    move-object/from16 v70, v15

    move v15, v10

    move-object/from16 v10, v70

    move/from16 v9, v23

    move/from16 v8, v25

    :goto_1f
    if-eq v15, v9, :cond_2f

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v14, v66

    .line 105
    invoke-interface {v14, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_30

    goto :goto_20

    :cond_2f
    move-object/from16 v14, v66

    :goto_20
    iget v0, v10, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, v10, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v0, v1, :cond_30

    move-object/from16 v0, v63

    move-object v1, v14

    move v2, v15

    move v3, v15

    move-object/from16 v4, v39

    move-object/from16 v5, p1

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    move-object/from16 v3, v57

    .line 107
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 108
    iget v4, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v5, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v13, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move v14, v0

    move-object/from16 v0, v63

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v16, v2

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v17, v2

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move-object/from16 v28, v3

    move v3, v15

    move/from16 v24, v9

    move/from16 v9, v33

    move/from16 v10, v34

    move/from16 v19, v15

    move/from16 v15, v31

    move/from16 v20, p2

    move/from16 v21, p3

    move-object/from16 v25, v51

    move/from16 v26, v53

    invoke-direct/range {v0 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    :cond_30
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 9
    .line 10
    mul-int/2addr v0, p1

    .line 11
    add-int/lit8 v0, v0, 0x5

    .line 12
    .line 13
    aget p1, v1, v0

    .line 14
    .line 15
    return p1
.end method

.method public getEllipsisStart(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 9
    .line 10
    mul-int/2addr v0, p1

    .line 11
    add-int/lit8 v0, v0, 0x4

    .line 12
    .line 13
    aget p1, v1, v0

    .line 14
    .line 15
    return p1
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 5
    .line 6
    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    const-string v2, "StaticLayout"

    .line 16
    .line 17
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "maxLineHeight should not be -1.  maxLines:"

    .line 26
    .line 27
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, " lineCount:"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 41
    .line 42
    invoke-static {v1, v3, v2}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget p1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 48
    .line 49
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 50
    .line 51
    if-lt p1, v1, :cond_1

    .line 52
    .line 53
    iget p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 54
    .line 55
    if-eq p1, v0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    :goto_0
    return p1
.end method

.method public getHyphen(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 2

    .line 1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    array-length v0, p2

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aget p1, p2, p1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 22
    .line 23
    if-ne p2, v0, :cond_3

    .line 24
    .line 25
    iget-object p2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    array-length v0, p2

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, p2, p1

    .line 38
    .line 39
    neg-int p1, p1

    .line 40
    return p1

    .line 41
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 42
    .line 43
    if-ne p2, v0, :cond_6

    .line 44
    .line 45
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    array-length v0, p2

    .line 50
    add-int/lit8 v0, v0, -0x1

    .line 51
    .line 52
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    aget p2, p2, v0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    move p2, v1

    .line 60
    :goto_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    array-length v1, v0

    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    aget v1, v0, p1

    .line 72
    .line 73
    :cond_5
    sub-int/2addr p2, v1

    .line 74
    shr-int/lit8 p1, p2, 0x1

    .line 75
    .line 76
    return p1

    .line 77
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v1, "unhandled alignment "

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public getLineContainsTab(I)Z
    .locals 2

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

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget p1, v0, v1

    return p1
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLineForVertical(I)I
    .locals 6

    .line 1
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    :goto_0
    sub-int v3, v0, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-le v3, v4, :cond_1

    .line 10
    .line 11
    add-int v3, v0, v2

    .line 12
    .line 13
    shr-int/2addr v3, v4

    .line 14
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 15
    .line 16
    mul-int/2addr v5, v3

    .line 17
    add-int/2addr v5, v4

    .line 18
    aget v4, v1, v5

    .line 19
    .line 20
    if-le v4, p1, :cond_0

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-gez v2, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_2
    return v2
.end method

.method public getLineStart(I)I
    .locals 2

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

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget p1, v0, v1

    return p1
.end method

.method public getParagraphDirection(I)I
    .locals 2

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

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
