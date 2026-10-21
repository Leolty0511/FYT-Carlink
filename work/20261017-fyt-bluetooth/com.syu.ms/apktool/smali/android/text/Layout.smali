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
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field public static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field public static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field public static final DIR_REQUEST_LTR:I = 0x1

.field public static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final ELLIPSIS_NORMAL:[C

.field public static final ELLIPSIS_TWO_DOTS:[C

.field public static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

.field public static final MAX_EMOJI:I

.field public static final MIN_EMOJI:I

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field public static final RUN_LENGTH_MASK:I = 0x3ffffff

.field public static final RUN_LEVEL_MASK:I = 0x3f

.field public static final RUN_LEVEL_SHIFT:I = 0x1a

.field public static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

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

.field public mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lu/a;->d(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 2
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v1

    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 4
    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5
    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 6
    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 7
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 9
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2026

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 10
    sput-object v1, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    new-array v0, v0, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v3

    .line 11
    sput-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

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
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 9
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 10
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 11
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 12
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 13
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 14
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Layout: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_0

    .line 4
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    const/4 v7, 0x0

    move v8, v7

    .line 5
    :goto_0
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v10, v9

    if-ge v8, v10, :cond_3

    .line 6
    aget v10, v9, v8

    add-int/2addr v10, v4

    add-int/lit8 v11, v8, 0x1

    .line 7
    aget v9, v9, v11

    const v11, 0x3ffffff

    and-int/2addr v9, v11

    add-int/2addr v9, v10

    if-le v9, v5, :cond_1

    move v9, v5

    :cond_1
    if-gt v2, v9, :cond_2

    if-lt v3, v10, :cond_2

    .line 8
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 9
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eq v10, v9, :cond_2

    .line 10
    invoke-direct {v0, v10, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v10

    const/4 v11, 0x1

    .line 11
    invoke-direct {v0, v9, v11, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v9

    .line 12
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 13
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move/from16 v9, p4

    int-to-float v13, v9

    move/from16 v10, p5

    int-to-float v15, v10

    .line 14
    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v11, p6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_2
    move/from16 v9, p4

    move/from16 v10, p5

    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result p3

    move v2, v1

    :goto_0
    add-int v3, v1, v0

    if-ge v2, v3, :cond_3

    if-ne v2, v1, :cond_1

    .line 4
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v3

    goto :goto_1

    :cond_1
    const v3, 0xfeff

    :goto_1
    add-int v4, v2, p3

    if-lt v4, p1, :cond_2

    if-ge v4, p2, :cond_2

    add-int/2addr v4, p5

    sub-int/2addr v4, p1

    .line 5
    aput-char v3, p4, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    const/16 v1, 0xa

    .line 2
    invoke-static {p0, v1, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p2

    .line 3
    :cond_0
    invoke-static {p3, p0, p1, v1}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

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

    .line 1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    aget-char p1, p1, v1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    aget-char p1, p1, v1

    :goto_0
    return p1
.end method

.method private getHorizontal(IZIZ)F
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    .line 3
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 4
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 5
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 6
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 7
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    .line 8
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 9
    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v11, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 10
    array-length v3, v2

    if-lez v3, :cond_0

    .line 11
    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_0

    :cond_0
    move-object v10, v12

    .line 12
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    .line 13
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v13

    move v5, v11

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v11

    move/from16 v3, p2

    .line 14
    invoke-virtual {v13, v2, v3, v12}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    .line 15
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    .line 16
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    int-to-float v2, v3

    .line 17
    :cond_1
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 18
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 19
    invoke-direct {p0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    return v1
.end method

.method private getHorizontal(IZZ)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result p1

    return p1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 9

    .line 14
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p3

    :goto_0
    move v4, p3

    .line 16
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 18
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 19
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object p1

    .line 20
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p2

    .line 22
    invoke-static {p1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p2
.end method

.method private getLineExtent(IZ)F
    .locals 9

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

    move-result-object p1

    .line 11
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p2

    .line 13
    invoke-static {p1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p2
.end method

.method private getLineStartPos(III)I
    .locals 8

    .line 1
    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    if-ne v2, v4, :cond_0

    .line 4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v3, :cond_3

    if-ne v2, v4, :cond_2

    .line 6
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7
    :cond_3
    :goto_0
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v1, v3, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move p2, p3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 8
    iget-boolean v5, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 10
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 11
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v5, v6, v7, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    .line 12
    invoke-static {v5, v6, v7, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 13
    array-length v5, v0

    if-lez v5, :cond_6

    .line 14
    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    invoke-direct {v3, v5, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v3, v0}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result p1

    float-to-int p1, p1

    .line 16
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v0, :cond_8

    if-ne v2, v4, :cond_7

    sub-int p2, p3, p1

    goto :goto_1

    :cond_7
    sub-int/2addr p2, p1

    goto :goto_1

    :cond_8
    and-int/lit8 p1, p1, -0x2

    add-int/2addr p2, p3

    sub-int/2addr p2, p1

    shr-int/2addr p2, v4

    :goto_1
    return p2
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

    :cond_1
    const/16 p1, 0x20

    if-eq v1, p1, :cond_2

    const/16 p1, 0x9

    if-eq v1, p1, :cond_2

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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xdc00

    if-lt v2, v3, :cond_1

    const v3, 0xdfff

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, p1, -0x1

    .line 3
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v3, 0xdbff

    if-gt v2, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_1
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_3

    .line 5
    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 6
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 7
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8
    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, p1, :cond_2

    if-le v4, p1, :cond_2

    move p1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-ne p2, v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    if-ne p1, v2, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v0, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return p1

    :cond_3
    if-ne p1, v1, :cond_5

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    :goto_2
    move v5, v6

    goto :goto_3

    :cond_4
    return p1

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 8
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    xor-int/lit8 p2, p2, 0x1

    move v10, v1

    move v5, v2

    move v6, v4

    goto :goto_4

    :cond_6
    move v10, v1

    move v5, v2

    move v6, v3

    .line 9
    :goto_4
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 10
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 11
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move v4, v10

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int/2addr p1, v10

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    add-int/2addr v10, p1

    .line 13
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v10
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 10

    .line 1
    const-class v0, Landroid/text/style/LeadingMarginSpan;

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 5
    invoke-interface {v1, v3, v4, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 6
    invoke-static {v1, v3, v4, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/LeadingMarginSpan;

    .line 7
    array-length v4, v0

    if-nez v4, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    sub-int/2addr v3, v4

    .line 8
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v4

    :goto_1
    move v5, v2

    move v6, v5

    .line 9
    :goto_2
    array-length v7, v0

    if-ge v5, v7, :cond_6

    .line 10
    aget-object v7, v0, v5

    .line 11
    instance-of v8, v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v8, :cond_5

    .line 12
    invoke-interface {v1, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 13
    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 14
    move-object v9, v7

    check-cast v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v9}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    add-int/2addr v8, v9

    if-ge p1, v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v2

    goto :goto_3

    :cond_5
    move v8, v3

    .line 15
    :goto_3
    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return v6
.end method

.method public static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0
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

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1
    invoke-static {p3}, Lu/a;->d(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 18

    move-object/from16 v0, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 1
    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v10

    .line 2
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 3
    :try_start_0
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v10, v0, v4, v5, v2}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 4
    iget-boolean v2, v10, Landroid/text/MeasuredText;->mEasy:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object v7, v2

    move v6, v3

    goto :goto_0

    .line 6
    :cond_0
    iget v12, v10, Landroid/text/MeasuredText;->mDir:I

    iget-object v13, v10, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v14, 0x0

    iget-object v15, v10, Landroid/text/MeasuredText;->mChars:[C

    const/16 v16, 0x0

    iget v2, v10, Landroid/text/MeasuredText;->mLen:I

    move/from16 v17, v2

    invoke-static/range {v12 .. v17}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    .line 7
    iget v6, v10, Landroid/text/MeasuredText;->mDir:I

    move-object v7, v2

    .line 8
    :goto_0
    iget-object v2, v10, Landroid/text/MeasuredText;->mChars:[C

    .line 9
    iget v8, v10, Landroid/text/MeasuredText;->mLen:I

    const/4 v9, 0x0

    move v12, v9

    :goto_1
    const/4 v13, 0x0

    if-ge v12, v8, :cond_4

    .line 10
    aget-char v14, v2, v12

    const/16 v15, 0x9

    if-ne v14, v15, :cond_3

    .line 11
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    .line 12
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 13
    invoke-interface {v2, v4, v5, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    .line 14
    invoke-static {v2, v4, v8, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 15
    array-length v2, v1

    if-lez v2, :cond_1

    .line 16
    new-instance v2, Landroid/text/Layout$TabStops;

    const/16 v8, 0x14

    invoke-direct {v2, v8, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object v2, v13

    :goto_2
    move-object v9, v2

    move v8, v3

    goto :goto_4

    :cond_2
    move v8, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    move v8, v9

    :goto_3
    move-object v9, v13

    :goto_4
    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 17
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 18
    invoke-virtual {v11, v13}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 20
    invoke-static {v10}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v0

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 22
    invoke-static {v10}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v0
.end method

.method public static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 2
    check-cast p0, Landroid/text/Spanned;

    const-class p4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, p4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    move p2, p1

    .line 3
    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_3

    if-nez p0, :cond_1

    .line 4
    aget-object v1, p4, v0

    instance-of v1, v1, Landroid/text/style/TabStopSpan;

    if-nez v1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    aget-object v1, p4, v0

    check-cast v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_2

    cmpl-float v2, v1, p3

    if-lez v2, :cond_2

    move p2, v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmpl-float p0, p2, p1

    if-eqz p0, :cond_4

    return p2

    :cond_4
    const/high16 p0, 0x41a00000    # 20.0f

    add-float/2addr p3, p0

    div-float/2addr p3, p0

    float-to-int p0, p3

    mul-int/lit8 p0, p0, 0x14

    int-to-float p0, p0

    return p0
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v4, 0x0

    move v5, v4

    .line 5
    :goto_0
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, -0x1

    if-ge v5, v6, :cond_3

    .line 6
    aget v6, v3, v5

    add-int/2addr v6, v1

    add-int/lit8 v9, v5, 0x1

    .line 7
    aget v10, v3, v9

    and-int/2addr v10, v7

    add-int/2addr v10, v6

    if-le v10, v2, :cond_0

    move v10, v2

    :cond_0
    if-lt p1, v6, :cond_2

    if-ge p1, v10, :cond_2

    if-le p1, v6, :cond_1

    return v4

    .line 8
    :cond_1
    aget v5, v3, v9

    ushr-int/lit8 v5, v5, 0x1a

    and-int/lit8 v5, v5, 0x3f

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_1
    const/4 v6, 0x1

    if-ne v5, v8, :cond_5

    .line 9
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v6

    :cond_5
    :goto_2
    if-ne p1, v1, :cond_7

    .line 10
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    if-ne p1, v6, :cond_6

    move v8, v4

    goto :goto_4

    :cond_6
    move v8, v6

    goto :goto_4

    :cond_7
    add-int/2addr p1, v8

    move v0, v4

    .line 11
    :goto_3
    array-length v9, v3

    if-ge v0, v9, :cond_a

    .line 12
    aget v9, v3, v0

    add-int/2addr v9, v1

    add-int/lit8 v10, v0, 0x1

    .line 13
    aget v11, v3, v10

    and-int/2addr v11, v7

    add-int/2addr v11, v9

    if-le v11, v2, :cond_8

    move v11, v2

    :cond_8
    if-lt p1, v9, :cond_9

    if-ge p1, v11, :cond_9

    .line 14
    aget p1, v3, v10

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 v8, p1, 0x3f

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_a
    :goto_4
    if-ge v8, v5, :cond_b

    move v4, v6

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

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v1, p5

    .line 1
    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_a

    .line 2
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 4
    :cond_0
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v15, v2

    check-cast v15, Landroid/text/Spanned;

    .line 5
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 6
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v11, 0x0

    invoke-virtual {v2, v15, v11, v12}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 7
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v2, :cond_9

    .line 8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 10
    sget-object v4, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 11
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 12
    iget v9, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v6, p6

    move v8, v1

    move/from16 v16, v2

    move v7, v3

    move v1, v11

    move v2, v1

    :goto_0
    if-gt v8, v6, :cond_9

    add-int/lit8 v5, v8, 0x1

    .line 13
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 14
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 15
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v18

    sub-int v18, v17, v18

    if-lt v7, v1, :cond_7

    .line 16
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v7, v12}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    if-ne v7, v3, :cond_2

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v1

    move-object/from16 v22, v4

    move/from16 v20, v5

    goto :goto_6

    :cond_2
    :goto_1
    move/from16 p5, v1

    move v2, v11

    .line 17
    :goto_2
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v20, v5

    iget v5, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v11, v5, :cond_6

    .line 18
    iget-object v5, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v5, v5, v11

    if-ge v5, v3, :cond_5

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v11

    if-gt v1, v7, :cond_3

    goto :goto_4

    .line 19
    :cond_3
    array-length v1, v4

    if-ne v2, v1, :cond_4

    mul-int/lit8 v1, v2, 0x2

    .line 20
    invoke-static {v1}, Lu/a;->j(I)I

    move-result v1

    .line 21
    new-array v1, v1, [Landroid/text/style/ParagraphStyle;

    const/4 v5, 0x0

    .line 22
    invoke-static {v4, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v1, v2, 0x1

    .line 23
    iget-object v5, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v5, [Landroid/text/style/LineBackgroundSpan;

    aget-object v5, v5, v11

    aput-object v5, v4, v2

    move v2, v1

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v20

    goto :goto_2

    :cond_6
    move/from16 v21, p5

    goto :goto_5

    :cond_7
    move/from16 v20, v5

    move/from16 v21, v1

    :goto_5
    move v11, v2

    move-object/from16 v22, v4

    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v11, :cond_8

    .line 24
    aget-object v1, v22, v5

    check-cast v1, Landroid/text/style/LineBackgroundSpan;

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v23, v3

    move-object v3, v10

    move/from16 v19, v20

    const/16 v24, 0x0

    move/from16 v20, v5

    move v5, v9

    move/from16 v6, v16

    move/from16 v25, v7

    move/from16 v7, v18

    move/from16 v26, v8

    move/from16 v8, v17

    move/from16 v27, v9

    move-object v9, v15

    move-object/from16 v28, v10

    move/from16 v10, v25

    move/from16 v29, v24

    move/from16 v24, v11

    move/from16 v11, v23

    move/from16 v30, v12

    move/from16 v12, v26

    .line 25
    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v5, v20, 0x1

    move/from16 v6, p6

    move/from16 v20, v19

    move/from16 v3, v23

    move/from16 v11, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v9, v27

    move-object/from16 v10, v28

    move/from16 v12, v30

    goto :goto_7

    :cond_8
    move/from16 v23, v3

    move/from16 v24, v11

    move/from16 v19, v20

    const/16 v29, 0x0

    move/from16 v6, p6

    move/from16 v16, v17

    move/from16 v8, v19

    move/from16 v1, v21

    move-object/from16 v4, v22

    move/from16 v7, v23

    move/from16 v2, v24

    move/from16 v11, v29

    goto/16 :goto_0

    .line 26
    :cond_9
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    :cond_a
    if-eqz p2, :cond_c

    const/4 v1, 0x0

    if-eqz v14, :cond_b

    int-to-float v2, v14

    .line 27
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    :cond_b
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v14, :cond_c

    neg-int v2, v14

    int-to-float v2, v2

    .line 29
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_c
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 39

    move-object/from16 v13, p0

    move/from16 v14, p2

    .line 1
    const-class v15, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 3
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 4
    iget-object v12, v13, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 5
    iget-object v11, v13, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 6
    iget-object v3, v13, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 7
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v16

    const/4 v4, 0x0

    move/from16 v7, p3

    move/from16 v17, v0

    move v8, v1

    move-object v9, v4

    move v6, v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v6, v7, :cond_17

    add-int/lit8 v5, v6, 0x1

    .line 8
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 9
    invoke-direct {v13, v6, v8, v4}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v18

    .line 10
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 11
    invoke-virtual {v13, v6}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v20

    sub-int v10, v19, v20

    move-object/from16 v20, v9

    .line 12
    invoke-virtual {v13, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    move/from16 v22, v1

    .line 13
    iget v1, v13, Landroid/text/Layout;->mWidth:I

    move/from16 v23, v1

    .line 14
    iget-boolean v1, v13, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_b

    .line 15
    move-object v1, v11

    check-cast v1, Landroid/text/Spanned;

    .line 16
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v8, :cond_1

    move-object/from16 v25, v2

    add-int/lit8 v2, v8, -0x1

    .line 17
    invoke-interface {v11, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object/from16 v26, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v27, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    :goto_1
    const/16 v27, 0x1

    :goto_2
    if-lt v8, v0, :cond_5

    if-eq v6, v14, :cond_2

    if-eqz v27, :cond_5

    .line 18
    :cond_2
    invoke-interface {v1, v8, v7, v15}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 19
    invoke-static {v1, v8, v0, v15}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    .line 20
    iget-object v3, v13, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 21
    array-length v7, v2

    const/16 v24, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_3
    move/from16 v22, v0

    if-ltz v7, :cond_4

    .line 22
    aget-object v0, v2, v7

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_3

    .line 23
    aget-object v0, v2, v7

    check-cast v0, Landroid/text/style/AlignmentSpan;

    invoke-interface {v0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v22

    goto :goto_3

    :cond_4
    :goto_4
    move-object v7, v2

    move-object/from16 v26, v3

    const/16 v25, 0x0

    goto :goto_5

    :cond_5
    const/16 v24, 0x1

    move-object/from16 v7, v25

    move/from16 v25, v22

    move/from16 v22, v0

    .line 24
    :goto_5
    array-length v3, v7

    const/4 v2, 0x0

    const/16 v28, 0x0

    :goto_6
    if-ge v2, v3, :cond_a

    .line 25
    aget-object v0, v7, v2

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_9

    .line 26
    aget-object v0, v7, v2

    check-cast v0, Landroid/text/style/LeadingMarginSpan;

    move/from16 v29, v2

    .line 27
    instance-of v2, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v2, :cond_7

    .line 28
    move-object v2, v0

    check-cast v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v2}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    move/from16 v30, v3

    .line 29
    invoke-interface {v1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    add-int/2addr v3, v2

    if-ge v6, v3, :cond_6

    move/from16 v2, v24

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    move v3, v2

    goto :goto_8

    :cond_7
    move/from16 v30, v3

    move/from16 v3, v27

    :goto_8
    const/4 v2, -0x1

    if-ne v9, v2, :cond_8

    move-object v2, v0

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v12

    move-object/from16 v32, v15

    move v15, v3

    move/from16 v3, v23

    move/from16 v33, v4

    move v4, v9

    move/from16 v34, v5

    move/from16 v5, v17

    move v13, v6

    move v6, v10

    move/from16 v35, v13

    move/from16 v13, v24

    move-object/from16 v24, v7

    move/from16 v7, v19

    move/from16 v36, v8

    move-object v8, v11

    move-object/from16 v13, v20

    move/from16 v20, v9

    move/from16 v9, v36

    move/from16 v21, v10

    move/from16 v10, v18

    move-object/from16 v37, v11

    move/from16 v11, v27

    move-object/from16 v38, v12

    move-object/from16 v12, p0

    .line 30
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 31
    invoke-interface {v14, v15}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v23, v23, v0

    goto/16 :goto_9

    :cond_8
    move-object v14, v0

    move-object/from16 v31, v1

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v6

    move-object/from16 v24, v7

    move/from16 v36, v8

    move/from16 v21, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v32, v15

    move-object/from16 v13, v20

    move v15, v3

    move/from16 v20, v9

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move/from16 v3, v28

    move/from16 v4, v20

    move/from16 v5, v17

    move/from16 v6, v21

    move/from16 v7, v19

    move-object/from16 v8, v37

    move/from16 v9, v36

    move/from16 v10, v18

    move/from16 v11, v27

    move-object/from16 v12, p0

    .line 32
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 33
    invoke-interface {v14, v15}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    add-int v28, v28, v0

    goto :goto_9

    :cond_9
    move-object/from16 v31, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v6

    move-object/from16 v24, v7

    move/from16 v36, v8

    move/from16 v21, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v32, v15

    move-object/from16 v13, v20

    move/from16 v20, v9

    :goto_9
    add-int/lit8 v2, v29, 0x1

    move/from16 v14, p2

    move/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v7, v24

    move/from16 v3, v30

    move-object/from16 v1, v31

    move-object/from16 v15, v32

    move/from16 v4, v33

    move/from16 v5, v34

    move/from16 v6, v35

    move/from16 v8, v36

    move-object/from16 v11, v37

    move-object/from16 v12, v38

    const/16 v24, 0x1

    move-object/from16 v20, v13

    move-object/from16 v13, p0

    goto/16 :goto_6

    :cond_a
    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v24, v7

    move/from16 v36, v8

    move/from16 v21, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v32, v15

    move-object/from16 v13, v20

    move/from16 v20, v9

    move-object/from16 v14, p0

    move v3, v6

    move/from16 v0, v22

    move-object/from16 v2, v24

    move/from16 v1, v25

    move-object/from16 v12, v26

    move/from16 v10, v28

    goto :goto_a

    :cond_b
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v36, v8

    move/from16 v21, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v32, v15

    move-object/from16 v13, v20

    move/from16 v20, v9

    move-object/from16 v14, p0

    move v3, v6

    move/from16 v1, v22

    move-object/from16 v12, v26

    const/4 v10, 0x0

    .line 34
    :goto_a
    invoke-virtual {v14, v3}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v1, :cond_d

    const/16 v1, 0x14

    if-nez v13, :cond_c

    .line 35
    new-instance v9, Landroid/text/Layout$TabStops;

    invoke-direct {v9, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    goto :goto_b

    .line 36
    :cond_c
    invoke-virtual {v13, v1, v2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object v9, v13

    :goto_b
    move-object v13, v9

    const/4 v1, 0x1

    .line 37
    :cond_d
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v12, v4, :cond_f

    move/from16 v8, v20

    const/4 v4, 0x1

    if-ne v8, v4, :cond_e

    .line 38
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_c

    :cond_e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_c

    :cond_f
    move/from16 v8, v20

    const/4 v4, 0x1

    .line 39
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v12, v5, :cond_11

    if-ne v8, v4, :cond_10

    .line 40
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_c

    :cond_10
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_c

    :cond_11
    move-object v5, v12

    .line 41
    :goto_c
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_13

    if-ne v8, v4, :cond_12

    goto :goto_d

    :cond_12
    move/from16 v10, v23

    :goto_d
    const/4 v15, 0x0

    goto :goto_f

    :cond_13
    const/4 v15, 0x0

    .line 42
    invoke-direct {v14, v3, v13, v15}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    .line 43
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v7, :cond_15

    if-ne v8, v4, :cond_14

    sub-int v23, v23, v6

    goto :goto_e

    :cond_14
    sub-int v23, v10, v6

    goto :goto_e

    :cond_15
    and-int/lit8 v5, v6, -0x2

    add-int v23, v23, v10

    sub-int v23, v23, v5

    shr-int/lit8 v23, v23, 0x1

    :goto_e
    move/from16 v10, v23

    .line 44
    :goto_f
    invoke-virtual {v14, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 45
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v9, v3, :cond_16

    iget-boolean v3, v14, Landroid/text/Layout;->mSpannedText:Z

    if-nez v3, :cond_16

    if-nez v11, :cond_16

    int-to-float v7, v10

    move/from16 v6, v21

    int-to-float v8, v6

    move-object/from16 v3, p1

    move-object/from16 v4, v37

    move/from16 v5, v36

    move/from16 v6, v18

    move-object/from16 v9, v38

    .line 46
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_16
    move/from16 v6, v21

    move-object/from16 v3, v16

    move-object/from16 v4, v38

    move-object/from16 v5, v37

    move/from16 v20, v6

    move/from16 v6, v36

    move/from16 v7, v18

    move v15, v10

    move v10, v11

    move-object v11, v13

    .line 47
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    int-to-float v6, v15

    move-object/from16 v4, v16

    move-object/from16 v5, p1

    move/from16 v7, v17

    move/from16 v8, v20

    move/from16 v9, v19

    .line 48
    invoke-virtual/range {v4 .. v9}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    :goto_10
    move/from16 v7, p3

    move-object v3, v12

    move-object v9, v13

    move-object v13, v14

    move/from16 v17, v19

    move-object/from16 v15, v32

    move/from16 v8, v33

    move/from16 v6, v34

    move-object/from16 v11, v37

    move-object/from16 v12, v38

    move/from16 v14, p2

    goto/16 :goto_0

    :cond_17
    move-object v14, v13

    .line 49
    invoke-static/range {v16 .. v16}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
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
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 4
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    .line 7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result p1

    sub-float/2addr p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    const/4 v0, 0x1

    .line 8
    invoke-static {p3, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/16 v6, 0x800

    invoke-static {p3, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v6

    or-int/2addr v5, v6

    const/4 v6, 0x2

    .line 9
    invoke-static {p3, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p3

    const/4 v7, 0x0

    if-nez v5, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    sub-int v7, v2, v1

    shr-int/2addr v7, v6

    if-eqz p3, :cond_2

    add-int/2addr v1, v7

    :cond_2
    if-eqz v5, :cond_3

    sub-int/2addr v2, v7

    :cond_3
    cmpg-float v8, v3, v4

    if-gez v8, :cond_4

    move v3, v4

    :cond_4
    cmpg-float v8, p1, v4

    if-gez v8, :cond_5

    move p1, v4

    .line 10
    :cond_5
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_6

    int-to-float v8, v1

    .line 11
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    .line 12
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_6
    int-to-float v8, v1

    .line 13
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v8, v1, v2

    shr-int/2addr v8, v0

    int-to-float v8, v8

    .line 14
    invoke-virtual {p2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    .line 16
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    if-ne v5, v6, :cond_7

    int-to-float v5, v2

    .line 17
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v7

    sub-float v9, p1, v8

    add-int/2addr v2, v7

    int-to-float v2, v2

    .line 18
    invoke-virtual {p2, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p1, v8

    .line 20
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_7
    if-ne v5, v0, :cond_8

    int-to-float v5, v2

    .line 21
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v7

    sub-float v9, p1, v8

    add-int/2addr v2, v7

    int-to-float v2, v2

    .line 22
    invoke-virtual {p2, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v10, v2, v4

    .line 23
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v8, p1

    .line 24
    invoke-virtual {p2, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    invoke-virtual {p2, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    invoke-virtual {p2, p1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    :goto_2
    if-ne p3, v6, :cond_9

    int-to-float p1, v1

    .line 27
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, v7

    sub-float v0, v3, p3

    sub-int/2addr v1, v7

    int-to-float v1, v1

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v3, p3

    .line 30
    invoke-virtual {p2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_9
    if-ne p3, v0, :cond_a

    int-to-float p1, v1

    .line 31
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, v7

    sub-float v0, v3, p3

    sub-int/2addr v1, v7

    int-to-float v1, v1

    .line 32
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v4, v1

    .line 33
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr p3, v3

    .line 34
    invoke-virtual {p2, p3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 36
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    :goto_3
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 1
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

.method public final getLineAscent(I)I
    .locals 2

    .line 1
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

    .line 1
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

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    return p1
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p1

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

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method public getLineForOffset(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public getLineForVertical(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public getLineLeft(I)F
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 4
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v4, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v4, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    :goto_0
    sub-float/2addr v0, p1

    return v0

    :cond_1
    return v3

    .line 6
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    .line 7
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    goto :goto_0

    .line 8
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    if-ne v0, v4, :cond_4

    return v3

    .line 9
    :cond_4
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    .line 11
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v1

    .line 12
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    float-to-int p1, p1

    and-int/lit8 p1, p1, -0x2

    sub-int/2addr v1, v0

    sub-int/2addr v1, p1

    .line 13
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p1, v0

    return p1
.end method

.method public getLineMax(I)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p1

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    return p1
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 4

    .line 1
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 4
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 9
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getLineRight(I)F
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    :goto_0
    add-float/2addr v0, p1

    return v0

    .line 5
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v3, :cond_1

    .line 6
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p1, p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    goto :goto_0

    .line 8
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    .line 9
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p1, p1

    return p1

    .line 10
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    if-ne v0, v3, :cond_4

    .line 11
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    return p1

    .line 12
    :cond_4
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p1, p1

    return p1

    .line 13
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    .line 14
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v1

    .line 15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    float-to-int p1, p1

    and-int/lit8 p1, p1, -0x2

    sub-int v0, v1, v0

    sub-int/2addr v0, p1

    .line 16
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float p1, v1

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

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p1

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    return p1
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v2

    move/from16 v6, p1

    if-ne v6, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    move v7, v3

    .line 6
    :goto_0
    iget-object v8, v4, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v9, v8

    if-ge v6, v9, :cond_9

    .line 7
    aget v9, v8, v6

    add-int/2addr v9, v3

    add-int/lit8 v10, v6, 0x1

    .line 8
    aget v11, v8, v10

    const v12, 0x3ffffff

    and-int/2addr v11, v12

    add-int/2addr v11, v9

    .line 9
    aget v8, v8, v10

    const/high16 v10, 0x4000000

    and-int/2addr v8, v10

    if-eqz v8, :cond_1

    const/4 v8, -0x1

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    if-le v11, v1, :cond_2

    move v11, v1

    :cond_2
    add-int/lit8 v10, v11, -0x1

    add-int/2addr v10, v2

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v12, -0x1

    :goto_2
    sub-int v14, v10, v13

    if-le v14, v2, :cond_4

    add-int v14, v10, v13

    .line 10
    div-int/lit8 v14, v14, 0x2

    .line 11
    invoke-direct {v0, v14}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v15

    .line 12
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v15

    int-to-float v2, v8

    mul-float/2addr v15, v2

    mul-float v2, v2, p2

    cmpl-float v2, v15, v2

    if-ltz v2, :cond_3

    move v10, v14

    goto :goto_3

    :cond_3
    move v13, v14

    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    if-ge v13, v12, :cond_5

    goto :goto_4

    :cond_5
    move v12, v13

    :goto_4
    if-ge v12, v11, :cond_7

    .line 13
    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    sub-float v8, v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 15
    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-static {v10, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v10

    if-ge v10, v11, :cond_6

    .line 16
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    sub-float v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v12, v11, v8

    if-gez v12, :cond_6

    move v2, v10

    move v8, v11

    :cond_6
    cmpg-float v10, v8, v5

    if-gez v10, :cond_7

    move v7, v2

    move v5, v8

    .line 17
    :cond_7
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    sub-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v8, v2, v5

    if-gez v8, :cond_8

    move v5, v2

    move v7, v9

    :cond_8
    add-int/lit8 v6, v6, 0x2

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 18
    :cond_9
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    sub-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_a

    goto :goto_5

    :cond_a
    move v1, v7

    :goto_5
    return v1
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    return p1
.end method

.method public getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    return p1
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    const-class v3, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v2, p1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/AlignmentSpan;

    .line 5
    array-length v1, p1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 6
    aget-object p1, p1, v1

    invoke-interface {p1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getParagraphRight(I)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p1

    sub-int/2addr v0, p1

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

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v1, v0, :cond_1

    move v8, v0

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    move v8, v1

    .line 2
    :goto_0
    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 3
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 4
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 5
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    if-ne v9, v10, :cond_2

    move-object/from16 v0, p0

    move v1, v9

    move v3, v8

    move v4, v11

    move-object/from16 v6, p3

    .line 6
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto/16 :goto_2

    .line 7
    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v15, v0

    .line 8
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v9

    move v4, v11

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 9
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 10
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v17

    int-to-float v0, v11

    const/16 v19, 0x0

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v16, p3

    move/from16 v18, v0

    move/from16 v20, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    move v11, v15

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v11

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v12, p3

    move v11, v15

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v10, :cond_4

    .line 12
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 13
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    const/4 v13, 0x0

    int-to-float v14, v0

    int-to-float v0, v1

    .line 14
    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v12, p3

    move v15, v11

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 16
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    .line 17
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v10

    move v3, v8

    move v4, v9

    move v5, v12

    move v8, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 18
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v8, :cond_5

    int-to-float v14, v9

    .line 19
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v15

    int-to-float v0, v12

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v12, p3

    move v13, v11

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    int-to-float v3, v9

    .line 20
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    int-to-float v5, v12

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_2
    return-void
.end method

.method public final getSpacingAdd()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "attempted to reduce Layout width"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLevelBoundary(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 6
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    move v0, v3

    .line 7
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 8
    aget v2, v1, v0

    if-ne p1, v2, :cond_2

    return v5

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    return v3

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v5, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    if-ne p1, v2, :cond_6

    move p1, v3

    goto :goto_3

    .line 10
    :cond_6
    array-length p1, v1

    add-int/lit8 p1, p1, -0x2

    :goto_3
    add-int/2addr p1, v5

    .line 11
    aget p1, v1, p1

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x3f

    if-eq p1, v0, :cond_7

    move v3, v5

    :cond_7
    :goto_4
    return v3
.end method

.method public isRtlCharAt(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 4
    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    return v4

    .line 5
    :cond_1
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 6
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    move v2, v3

    .line 7
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 8
    aget v5, v1, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    add-int/2addr v5, v0

    if-lt p1, v5, :cond_3

    add-int/2addr v2, v4

    .line 9
    aget p1, v1, v2

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x3f

    and-int/2addr p1, v4

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    return v3
.end method

.method public final isSpanned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 0

    if-ltz p3, :cond_0

    .line 1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 3
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 4
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 5
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 6
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 7
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Layout: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldClampCursor(I)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method
