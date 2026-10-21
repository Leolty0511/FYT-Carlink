.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final HYPHEN:I = 0x3

.field private static final HYPHEN_MASK:I = 0xff

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x3

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mJustificationMode:I

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 15

    .line 3
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 13

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p13

    move/from16 v12, p14

    if-nez v11, :cond_0

    move-object v1, v10

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, v10, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p2}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p2}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, v0

    :goto_1
    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 6
    iput-object v9, v8, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 7
    iput-object v10, v8, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-eqz v11, :cond_2

    .line 8
    new-instance v2, Landroid/text/PackedIntVector;

    invoke-direct {v2, v0}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v2, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 9
    iput v12, v8, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 10
    iput-object v11, v8, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 11
    :cond_2
    new-instance v2, Landroid/text/PackedIntVector;

    invoke-direct {v2, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v2, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v2, p4

    .line 12
    iput v2, v8, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    const/4 v2, 0x0

    .line 13
    iput-object v2, v8, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 14
    :goto_2
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v2, v8, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move/from16 v2, p9

    .line 15
    iput-boolean v2, v8, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v2, p10

    .line 16
    iput v2, v8, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v2, p12

    .line 17
    iput v2, v8, Landroid/text/DynamicLayout;->mJustificationMode:I

    move/from16 v2, p11

    .line 18
    iput v2, v8, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    if-eqz v11, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Ellipsizer;

    .line 20
    iput-object v8, v2, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 21
    iput v12, v2, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 22
    iput-object v11, v2, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 23
    iput-boolean v3, v8, Landroid/text/DynamicLayout;->mEllipsize:Z

    :cond_3
    if-eqz v11, :cond_4

    new-array v0, v0, [I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    goto :goto_3

    :cond_4
    new-array v0, v1, [I

    :goto_3
    new-array v1, v3, [Landroid/text/Layout$Directions;

    .line 24
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 25
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 26
    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 27
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/high16 v6, 0x40000000    # 2.0f

    .line 28
    aput v6, v0, v4

    .line 29
    aput v4, v0, v3

    const/4 v6, 0x2

    .line 30
    aput v2, v0, v6

    .line 31
    iget-object v6, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v6, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    sub-int/2addr v2, v5

    .line 32
    aput v2, v0, v3

    .line 33
    iget-object v2, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 34
    iget-object v0, v8, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v0, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, p1, v4, v4, v0}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 36
    instance-of v0, v9, Landroid/text/Spannable;

    if-eqz v0, :cond_7

    .line 37
    iget-object v0, v8, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v0, :cond_5

    .line 38
    new-instance v0, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v0, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v0, v8, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 39
    :cond_5
    move-object v0, v9

    check-cast v0, Landroid/text/Spannable;

    .line 40
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v0, v4, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/DynamicLayout$ChangeWatcher;

    move v2, v4

    .line 41
    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 42
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 43
    :cond_6
    iget-object v1, v8, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const v3, 0x800012

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method public static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 15
    .line 16
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 17
    .line 18
    aput p1, v0, v2

    .line 19
    .line 20
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 24
    .line 25
    add-int/2addr p1, v1

    .line 26
    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 30
    .line 31
    add-int/lit8 v3, v2, -0x1

    .line 32
    .line 33
    aget v3, v0, v3

    .line 34
    .line 35
    if-le p1, v3, :cond_1

    .line 36
    .line 37
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 42
    .line 43
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 49
    .line 50
    add-int/2addr p1, v1

    .line 51
    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/text/Spanned;

    .line 8
    .line 9
    const-class v2, Landroid/text/style/ReplacementSpan;

    .line 10
    .line 11
    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 39
    .line 40
    if-lt p3, v0, :cond_2

    .line 41
    .line 42
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 45
    .line 46
    if-le p2, p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :cond_2
    :goto_0
    return v1
.end method

.method private createBlocks()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 3
    .line 4
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 5
    .line 6
    const/16 v2, 0x190

    .line 7
    .line 8
    :goto_0
    const/16 v3, 0xa

    .line 9
    .line 10
    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-gez v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 29
    .line 30
    :goto_1
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 31
    .line 32
    array-length v1, v1

    .line 33
    if-ge v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    aput v2, v1, v0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 45
    .line 46
    .line 47
    add-int/lit16 v2, v2, 0x190

    .line 48
    .line 49
    goto :goto_0
.end method

.method private getContentMayProtrudeFromTopOrBottom(I)Z
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    if-eq v2, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v3, p2, -0x1

    .line 17
    .line 18
    const/16 v4, 0xa

    .line 19
    .line 20
    invoke-static {v0, v4, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v6, 0x1

    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    add-int/2addr v3, v6

    .line 30
    :goto_0
    sub-int v3, p2, v3

    .line 31
    .line 32
    add-int v7, p3, v3

    .line 33
    .line 34
    add-int v8, p4, v3

    .line 35
    .line 36
    sub-int v3, p2, v3

    .line 37
    .line 38
    add-int v9, v3, v8

    .line 39
    .line 40
    invoke-static {v0, v4, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-gez v4, :cond_2

    .line 45
    .line 46
    move v4, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/2addr v4, v6

    .line 49
    :goto_1
    sub-int/2addr v4, v9

    .line 50
    add-int/2addr v7, v4

    .line 51
    add-int/2addr v8, v4

    .line 52
    instance-of v4, v0, Landroid/text/Spanned;

    .line 53
    .line 54
    if-eqz v4, :cond_7

    .line 55
    .line 56
    move-object v4, v0

    .line 57
    check-cast v4, Landroid/text/Spanned;

    .line 58
    .line 59
    :cond_3
    add-int v9, v3, v8

    .line 60
    .line 61
    const-class v10, Landroid/text/style/WrapTogetherSpan;

    .line 62
    .line 63
    invoke-interface {v4, v3, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    :goto_2
    array-length v12, v9

    .line 70
    if-ge v10, v12, :cond_6

    .line 71
    .line 72
    aget-object v12, v9, v10

    .line 73
    .line 74
    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    aget-object v13, v9, v10

    .line 79
    .line 80
    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    if-ge v12, v3, :cond_4

    .line 85
    .line 86
    sub-int v11, v3, v12

    .line 87
    .line 88
    add-int/2addr v7, v11

    .line 89
    add-int/2addr v8, v11

    .line 90
    sub-int/2addr v3, v11

    .line 91
    move v11, v6

    .line 92
    :cond_4
    add-int v12, v3, v8

    .line 93
    .line 94
    if-le v13, v12, :cond_5

    .line 95
    .line 96
    sub-int/2addr v13, v12

    .line 97
    add-int/2addr v7, v13

    .line 98
    add-int/2addr v8, v13

    .line 99
    move v11, v6

    .line 100
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    if-nez v11, :cond_3

    .line 104
    .line 105
    :cond_7
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v1, v4}, Landroid/text/DynamicLayout;->getLineTop(I)I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    add-int v10, v3, v7

    .line 114
    .line 115
    invoke-virtual {v1, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    add-int v11, v3, v8

    .line 120
    .line 121
    if-ne v11, v2, :cond_8

    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    :cond_8
    invoke-virtual {v1, v10}, Landroid/text/DynamicLayout;->getLineTop(I)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    if-ne v10, v13, :cond_9

    .line 136
    .line 137
    move v13, v6

    .line 138
    goto :goto_3

    .line 139
    :cond_9
    const/4 v13, 0x0

    .line 140
    :goto_3
    sget-object v14, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    .line 141
    .line 142
    monitor-enter v14

    .line 143
    :try_start_0
    sget-object v15, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 144
    .line 145
    sget-object v16, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 149
    .line 150
    sput-object v5, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 151
    .line 152
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    if-nez v15, :cond_a

    .line 154
    .line 155
    new-instance v15, Landroid/text/StaticLayout;

    .line 156
    .line 157
    invoke-direct {v15, v5}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    invoke-static {v0, v3, v11, v5, v14}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v16

    .line 172
    :cond_a
    move-object/from16 v5, v16

    .line 173
    .line 174
    invoke-virtual {v5, v0, v3, v11}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getSpacingAdd()F

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getSpacingMultiplier()F

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    invoke-virtual {v3, v14, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    iget v6, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 215
    .line 216
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    iget-object v6, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 221
    .line 222
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget v6, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 227
    .line 228
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    iget v6, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 233
    .line 234
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iget v6, v1, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 239
    .line 240
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 241
    .line 242
    .line 243
    const/4 v3, 0x0

    .line 244
    const/4 v6, 0x1

    .line 245
    invoke-virtual {v15, v5, v3, v6}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eq v11, v2, :cond_b

    .line 253
    .line 254
    add-int/lit8 v2, v3, -0x1

    .line 255
    .line 256
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-ne v2, v11, :cond_b

    .line 261
    .line 262
    add-int/lit8 v3, v3, -0x1

    .line 263
    .line 264
    :cond_b
    iget-object v2, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 265
    .line 266
    sub-int v6, v10, v4

    .line 267
    .line 268
    invoke-virtual {v2, v4, v6}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 272
    .line 273
    invoke-virtual {v2, v4, v6}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 281
    .line 282
    if-eqz v6, :cond_c

    .line 283
    .line 284
    if-nez v4, :cond_c

    .line 285
    .line 286
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getTopPadding()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    iput v6, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 291
    .line 292
    sub-int/2addr v2, v6

    .line 293
    goto :goto_4

    .line 294
    :cond_c
    const/4 v6, 0x0

    .line 295
    :goto_4
    iget-boolean v14, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 296
    .line 297
    if-eqz v14, :cond_d

    .line 298
    .line 299
    if-eqz v13, :cond_d

    .line 300
    .line 301
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getBottomPadding()I

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    iput v13, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 306
    .line 307
    add-int/2addr v2, v13

    .line 308
    goto :goto_5

    .line 309
    :cond_d
    const/4 v13, 0x0

    .line 310
    :goto_5
    iget-object v14, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 311
    .line 312
    sub-int/2addr v8, v7

    .line 313
    const/4 v7, 0x0

    .line 314
    invoke-virtual {v14, v4, v7, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 315
    .line 316
    .line 317
    iget-object v7, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 318
    .line 319
    sub-int v8, v9, v12

    .line 320
    .line 321
    add-int/2addr v8, v2

    .line 322
    const/4 v2, 0x1

    .line 323
    invoke-virtual {v7, v4, v2, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 324
    .line 325
    .line 326
    iget-boolean v7, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 327
    .line 328
    const/4 v8, 0x4

    .line 329
    if-eqz v7, :cond_e

    .line 330
    .line 331
    const/4 v7, 0x6

    .line 332
    new-array v7, v7, [I

    .line 333
    .line 334
    const/high16 v12, -0x80000000

    .line 335
    .line 336
    aput v12, v7, v8

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_e
    new-array v7, v8, [I

    .line 340
    .line 341
    :goto_6
    new-array v12, v2, [Landroid/text/Layout$Directions;

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    :goto_7
    if-ge v2, v3, :cond_15

    .line 345
    .line 346
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    const/16 v17, 0x0

    .line 351
    .line 352
    aput v14, v7, v17

    .line 353
    .line 354
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    .line 355
    .line 356
    .line 357
    move-result v18

    .line 358
    shl-int/lit8 v18, v18, 0x1e

    .line 359
    .line 360
    or-int v18, v14, v18

    .line 361
    .line 362
    aput v18, v7, v17

    .line 363
    .line 364
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    .line 365
    .line 366
    .line 367
    move-result v19

    .line 368
    if-eqz v19, :cond_f

    .line 369
    .line 370
    const/high16 v19, 0x20000000

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_f
    move/from16 v19, v17

    .line 374
    .line 375
    :goto_8
    or-int v18, v18, v19

    .line 376
    .line 377
    aput v18, v7, v17

    .line 378
    .line 379
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 380
    .line 381
    .line 382
    move-result v17

    .line 383
    add-int v17, v17, v9

    .line 384
    .line 385
    if-lez v2, :cond_10

    .line 386
    .line 387
    sub-int v17, v17, v6

    .line 388
    .line 389
    :cond_10
    const/16 v16, 0x1

    .line 390
    .line 391
    aput v17, v7, v16

    .line 392
    .line 393
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getLineDescent(I)I

    .line 394
    .line 395
    .line 396
    move-result v17

    .line 397
    add-int/lit8 v8, v3, -0x1

    .line 398
    .line 399
    if-ne v2, v8, :cond_11

    .line 400
    .line 401
    add-int v17, v17, v13

    .line 402
    .line 403
    :cond_11
    const/16 v18, 0x2

    .line 404
    .line 405
    aput v17, v7, v18

    .line 406
    .line 407
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    .line 408
    .line 409
    .line 410
    move-result-object v17

    .line 411
    const/16 v18, 0x0

    .line 412
    .line 413
    aput-object v17, v12, v18

    .line 414
    .line 415
    if-ne v2, v8, :cond_12

    .line 416
    .line 417
    move/from16 p1, v6

    .line 418
    .line 419
    move v8, v11

    .line 420
    goto :goto_9

    .line 421
    :cond_12
    add-int/lit8 v8, v2, 0x1

    .line 422
    .line 423
    invoke-virtual {v15, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    move/from16 p1, v6

    .line 428
    .line 429
    :goto_9
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getHyphen(I)I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    and-int/lit16 v6, v6, 0xff

    .line 434
    .line 435
    const/16 v17, 0x3

    .line 436
    .line 437
    aput v6, v7, v17

    .line 438
    .line 439
    invoke-direct {v1, v0, v14, v8}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    if-eqz v8, :cond_13

    .line 444
    .line 445
    const/16 v8, 0x100

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_13
    move/from16 v8, v18

    .line 449
    .line 450
    :goto_a
    or-int/2addr v6, v8

    .line 451
    aput v6, v7, v17

    .line 452
    .line 453
    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 454
    .line 455
    if-eqz v6, :cond_14

    .line 456
    .line 457
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    const/4 v8, 0x4

    .line 462
    aput v6, v7, v8

    .line 463
    .line 464
    const/4 v6, 0x5

    .line 465
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    .line 466
    .line 467
    .line 468
    move-result v14

    .line 469
    aput v14, v7, v6

    .line 470
    .line 471
    goto :goto_b

    .line 472
    :cond_14
    const/4 v8, 0x4

    .line 473
    :goto_b
    iget-object v6, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 474
    .line 475
    add-int v14, v4, v2

    .line 476
    .line 477
    invoke-virtual {v6, v14, v7}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 478
    .line 479
    .line 480
    iget-object v6, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 481
    .line 482
    invoke-virtual {v6, v14, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    add-int/lit8 v2, v2, 0x1

    .line 486
    .line 487
    move/from16 v6, p1

    .line 488
    .line 489
    goto/16 :goto_7

    .line 490
    .line 491
    :cond_15
    const/4 v2, 0x1

    .line 492
    sub-int/2addr v10, v2

    .line 493
    invoke-virtual {v1, v4, v10, v3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 497
    .line 498
    .line 499
    sget-object v2, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    .line 500
    .line 501
    monitor-enter v2

    .line 502
    :try_start_1
    sput-object v15, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 503
    .line 504
    sput-object v5, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 505
    .line 506
    monitor-exit v2

    .line 507
    return-void

    .line 508
    :catchall_0
    move-exception v0

    .line 509
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    throw v0

    .line 511
    :catchall_1
    move-exception v0

    .line 512
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    throw v0
.end method

.method private updateAlwaysNeedsToBeRedrawn(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 6
    .line 7
    add-int/lit8 v1, p1, -0x1

    .line 8
    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 14
    .line 15
    aget v1, v1, p1

    .line 16
    .line 17
    :goto_1
    if-gt v0, v1, :cond_3

    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_4
    return-void
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndex(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public getBlockIndices()[I
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getEllipsisStart(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getLineCount()I
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Directions;

    return-object p1
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    const v0, 0x1fffffff

    and-int/2addr p1, v0

    return p1
.end method

.method public getLineTop(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public getNumberOfBlocks()I
    .locals 1

    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public setBlockIndex(II)V
    .locals 1

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, v0, p1

    return-void
.end method

.method public setBlocksDataForTest([I[III)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 17
    .line 18
    array-length v0, p2

    .line 19
    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 20
    .line 21
    .line 22
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 23
    .line 24
    :goto_0
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/text/PackedIntVector;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ge p1, p4, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/text/PackedIntVector;->size()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 p3, 0x4

    .line 39
    new-array p3, p3, [I

    .line 40
    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0

    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return-void
.end method

.method public updateBlocks(III)V
    .locals 20

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
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 18
    .line 19
    const/4 v6, -0x1

    .line 20
    if-ge v4, v5, :cond_2

    .line 21
    .line 22
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 23
    .line 24
    aget v5, v5, v4

    .line 25
    .line 26
    if-lt v5, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v4, v6

    .line 33
    :goto_1
    move v5, v4

    .line 34
    :goto_2
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 35
    .line 36
    if-ge v5, v7, :cond_4

    .line 37
    .line 38
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 39
    .line 40
    aget v8, v8, v5

    .line 41
    .line 42
    if-lt v8, v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    move v5, v6

    .line 49
    :goto_3
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 50
    .line 51
    aget v9, v8, v5

    .line 52
    .line 53
    const/4 v10, 0x1

    .line 54
    if-nez v4, :cond_5

    .line 55
    .line 56
    move v11, v3

    .line 57
    goto :goto_4

    .line 58
    :cond_5
    add-int/lit8 v11, v4, -0x1

    .line 59
    .line 60
    aget v11, v8, v11

    .line 61
    .line 62
    add-int/2addr v11, v10

    .line 63
    :goto_4
    if-le v1, v11, :cond_6

    .line 64
    .line 65
    move v11, v10

    .line 66
    goto :goto_5

    .line 67
    :cond_6
    move v11, v3

    .line 68
    :goto_5
    if-lez p3, :cond_7

    .line 69
    .line 70
    move v12, v10

    .line 71
    goto :goto_6

    .line 72
    :cond_7
    move v12, v3

    .line 73
    :goto_6
    if-ge v2, v9, :cond_8

    .line 74
    .line 75
    move v13, v10

    .line 76
    goto :goto_7

    .line 77
    :cond_8
    move v13, v3

    .line 78
    :goto_7
    if-eqz v12, :cond_9

    .line 79
    .line 80
    add-int/lit8 v14, v11, 0x1

    .line 81
    .line 82
    goto :goto_8

    .line 83
    :cond_9
    move v14, v11

    .line 84
    :goto_8
    if-eqz v13, :cond_a

    .line 85
    .line 86
    add-int/lit8 v14, v14, 0x1

    .line 87
    .line 88
    :cond_a
    sub-int v15, v5, v4

    .line 89
    .line 90
    add-int/2addr v15, v10

    .line 91
    add-int v16, v7, v14

    .line 92
    .line 93
    sub-int v10, v16, v15

    .line 94
    .line 95
    if-nez v10, :cond_b

    .line 96
    .line 97
    aput v3, v8, v3

    .line 98
    .line 99
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 100
    .line 101
    aput v6, v1, v3

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    iput v1, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 105
    .line 106
    return-void

    .line 107
    :cond_b
    array-length v6, v8

    .line 108
    if-le v10, v6, :cond_c

    .line 109
    .line 110
    array-length v6, v8

    .line 111
    mul-int/lit8 v6, v6, 0x2

    .line 112
    .line 113
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    array-length v7, v6

    .line 122
    new-array v7, v7, [I

    .line 123
    .line 124
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 125
    .line 126
    invoke-static {v8, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 127
    .line 128
    .line 129
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 130
    .line 131
    invoke-static {v8, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 132
    .line 133
    .line 134
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 135
    .line 136
    add-int/lit8 v3, v5, 0x1

    .line 137
    .line 138
    move/from16 v18, v9

    .line 139
    .line 140
    add-int v9, v4, v14

    .line 141
    .line 142
    move/from16 v19, v13

    .line 143
    .line 144
    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 145
    .line 146
    sub-int/2addr v13, v5

    .line 147
    const/16 v17, 0x1

    .line 148
    .line 149
    add-int/lit8 v13, v13, -0x1

    .line 150
    .line 151
    invoke-static {v8, v3, v6, v9, v13}, Ljava/lang/System;->arraycopy([II[III)V

    .line 152
    .line 153
    .line 154
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 155
    .line 156
    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 157
    .line 158
    sub-int/2addr v13, v5

    .line 159
    add-int/lit8 v13, v13, -0x1

    .line 160
    .line 161
    invoke-static {v8, v3, v7, v9, v13}, Ljava/lang/System;->arraycopy([II[III)V

    .line 162
    .line 163
    .line 164
    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 165
    .line 166
    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_c
    move/from16 v18, v9

    .line 170
    .line 171
    move/from16 v19, v13

    .line 172
    .line 173
    const/16 v17, 0x1

    .line 174
    .line 175
    add-int v3, v14, v15

    .line 176
    .line 177
    if-eqz v3, :cond_d

    .line 178
    .line 179
    add-int/lit8 v3, v5, 0x1

    .line 180
    .line 181
    add-int v6, v4, v14

    .line 182
    .line 183
    sub-int/2addr v7, v5

    .line 184
    add-int/lit8 v7, v7, -0x1

    .line 185
    .line 186
    invoke-static {v8, v3, v8, v6, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 187
    .line 188
    .line 189
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 190
    .line 191
    iget v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 192
    .line 193
    sub-int/2addr v8, v5

    .line 194
    add-int/lit8 v8, v8, -0x1

    .line 195
    .line 196
    invoke-static {v7, v3, v7, v6, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 197
    .line 198
    .line 199
    :cond_d
    :goto_9
    add-int v3, v14, v15

    .line 200
    .line 201
    if-eqz v3, :cond_10

    .line 202
    .line 203
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 204
    .line 205
    if-eqz v3, :cond_10

    .line 206
    .line 207
    new-instance v3, Landroid/util/ArraySet;

    .line 208
    .line 209
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 210
    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    :goto_a
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 214
    .line 215
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ge v5, v6, :cond_f

    .line 220
    .line 221
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 222
    .line 223
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-le v7, v4, :cond_e

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    sub-int v7, v14, v15

    .line 240
    .line 241
    add-int/2addr v7, v6

    .line 242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    :cond_e
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    add-int/lit8 v5, v5, 0x1

    .line 250
    .line 251
    goto :goto_a

    .line 252
    :cond_f
    iput-object v3, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 253
    .line 254
    :cond_10
    iput v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 255
    .line 256
    sub-int/2addr v2, v1

    .line 257
    const/4 v3, 0x1

    .line 258
    add-int/2addr v2, v3

    .line 259
    sub-int v2, p3, v2

    .line 260
    .line 261
    if-eqz v2, :cond_11

    .line 262
    .line 263
    add-int v10, v4, v14

    .line 264
    .line 265
    move v3, v10

    .line 266
    :goto_b
    iget v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 267
    .line 268
    if-ge v3, v5, :cond_11

    .line 269
    .line 270
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 271
    .line 272
    aget v6, v5, v3

    .line 273
    .line 274
    add-int/2addr v6, v2

    .line 275
    aput v6, v5, v3

    .line 276
    .line 277
    add-int/lit8 v3, v3, 0x1

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_11
    iget v3, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 281
    .line 282
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iput v3, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 287
    .line 288
    if-eqz v11, :cond_12

    .line 289
    .line 290
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 291
    .line 292
    add-int/lit8 v5, v1, -0x1

    .line 293
    .line 294
    aput v5, v3, v4

    .line 295
    .line 296
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 297
    .line 298
    .line 299
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 300
    .line 301
    const/4 v5, -0x1

    .line 302
    aput v5, v3, v4

    .line 303
    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 305
    .line 306
    :cond_12
    if-eqz v12, :cond_13

    .line 307
    .line 308
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 309
    .line 310
    add-int v1, v1, p3

    .line 311
    .line 312
    const/4 v5, 0x1

    .line 313
    sub-int/2addr v1, v5

    .line 314
    aput v1, v3, v4

    .line 315
    .line 316
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 320
    .line 321
    const/4 v3, -0x1

    .line 322
    aput v3, v1, v4

    .line 323
    .line 324
    add-int/lit8 v4, v4, 0x1

    .line 325
    .line 326
    goto :goto_c

    .line 327
    :cond_13
    const/4 v3, -0x1

    .line 328
    :goto_c
    if-eqz v19, :cond_14

    .line 329
    .line 330
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 331
    .line 332
    add-int v9, v18, v2

    .line 333
    .line 334
    aput v9, v1, v4

    .line 335
    .line 336
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 340
    .line 341
    aput v3, v1, v4

    .line 342
    .line 343
    :cond_14
    return-void
.end method
