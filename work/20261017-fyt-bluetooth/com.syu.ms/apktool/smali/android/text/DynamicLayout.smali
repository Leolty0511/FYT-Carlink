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

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

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

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

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
    .locals 12

    .line 3
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 13

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p10

    move/from16 v12, p11

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
    iput-object v9, v8, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 6
    iput-object v10, v8, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eqz v11, :cond_2

    .line 7
    new-instance v2, Landroid/text/PackedIntVector;

    invoke-direct {v2, v0}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v2, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 8
    iput v12, v8, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 9
    iput-object v11, v8, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 10
    :cond_2
    new-instance v2, Landroid/text/PackedIntVector;

    invoke-direct {v2, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v2, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v2, p4

    .line 11
    iput v2, v8, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    const/4 v2, 0x0

    .line 12
    iput-object v2, v8, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 13
    :goto_2
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v2, v8, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move/from16 v2, p9

    .line 14
    iput-boolean v2, v8, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v11, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Ellipsizer;

    .line 16
    iput-object v8, v2, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 17
    iput v12, v2, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 18
    iput-object v11, v2, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 19
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

    .line 20
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 22
    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 23
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/high16 v6, 0x40000000    # 2.0f

    .line 24
    aput v6, v0, v4

    .line 25
    aput v4, v0, v3

    const/4 v6, 0x2

    .line 26
    aput v2, v0, v6

    .line 27
    iget-object v6, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v6, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    sub-int/2addr v2, v5

    .line 28
    aput v2, v0, v3

    .line 29
    iget-object v2, v8, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 30
    iget-object v0, v8, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v0, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, p1, v4, v4, v0}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 32
    instance-of v0, v9, Landroid/text/Spannable;

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, v8, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v0, :cond_5

    .line 34
    new-instance v0, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v0, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v0, v8, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 35
    :cond_5
    move-object v0, v9

    check-cast v0, Landroid/text/Spannable;

    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v0, v4, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/DynamicLayout$ChangeWatcher;

    move v2, v4

    .line 37
    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 38
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 39
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

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lu/a;->h(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 4
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 5
    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    .line 6
    :cond_0
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v0, v3

    if-le p1, v3, :cond_2

    .line 7
    array-length v0, v0

    if-ne v2, v0, :cond_1

    add-int/2addr v2, v1

    .line 8
    invoke-static {v2}, Lu/a;->h(I)I

    move-result v0

    new-array v0, v0, [I

    .line 9
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 11
    :cond_1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 12
    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :cond_2
    return-void
.end method

.method private createBlocks()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 2
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    const/16 v2, 0x190

    :goto_0
    const/16 v3, 0xa

    .line 3
    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    if-gez v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 5
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 6
    :goto_1
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    add-int/lit16 v2, v2, 0x190

    goto :goto_0
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 27

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    if-eq v2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, p2, -0x1

    const/16 v4, 0xa

    .line 4
    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    const/4 v14, 0x1

    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr v2, v14

    :goto_0
    sub-int v2, p2, v2

    add-int v5, p3, v2

    add-int v6, p4, v2

    sub-int v2, p2, v2

    add-int v7, v2, v6

    .line 5
    invoke-static {v3, v4, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    if-gez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/2addr v4, v14

    :goto_1
    sub-int/2addr v4, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    .line 6
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_7

    .line 7
    move-object v4, v3

    check-cast v4, Landroid/text/Spanned;

    :cond_3
    add-int v7, v2, v6

    .line 8
    const-class v8, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v4, v2, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 9
    :goto_2
    array-length v10, v7

    if-ge v8, v10, :cond_6

    .line 10
    aget-object v10, v7, v8

    invoke-interface {v4, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 11
    aget-object v11, v7, v8

    invoke-interface {v4, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    if-ge v10, v2, :cond_4

    sub-int v9, v2, v10

    add-int/2addr v5, v9

    add-int/2addr v6, v9

    sub-int/2addr v2, v9

    move v9, v14

    :cond_4
    add-int v10, v2, v6

    if-le v11, v10, :cond_5

    sub-int/2addr v11, v10

    add-int/2addr v5, v11

    add-int/2addr v6, v11

    move v9, v14

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    if-nez v9, :cond_3

    :cond_7
    move v4, v2

    move/from16 v16, v5

    move/from16 v17, v6

    .line 12
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 13
    invoke-virtual {v1, v13}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v18

    add-int v2, v4, v16

    .line 14
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    add-int v12, v4, v17

    if-ne v12, v0, :cond_8

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    :cond_8
    move v11, v2

    .line 16
    invoke-virtual {v1, v11}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v19

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-ne v11, v2, :cond_9

    move/from16 v20, v14

    goto :goto_3

    :cond_9
    const/16 v20, 0x0

    .line 18
    :goto_3
    sget-object v2, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_0
    sget-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 20
    sput-object v6, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_a

    .line 22
    new-instance v5, Landroid/text/StaticLayout;

    invoke-direct {v5, v6}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 23
    :cond_a
    invoke-virtual {v5}, Landroid/text/StaticLayout;->prepare()V

    :goto_4
    move-object v10, v5

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    iget v2, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    int-to-float v5, v2

    iget-object v2, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v2

    move-object v2, v10

    move/from16 v25, v5

    move v5, v12

    move-object/from16 p1, v10

    move/from16 v10, v21

    move/from16 v21, v11

    move/from16 v11, v22

    move v15, v12

    move/from16 v12, v23

    move/from16 v26, v13

    move/from16 v13, v25

    move-object/from16 v14, v24

    invoke-virtual/range {v2 .. v14}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-eq v15, v0, :cond_b

    add-int/lit8 v0, v2, -0x1

    move-object/from16 v5, p1

    .line 26
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v0

    if-ne v0, v15, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_b
    move-object/from16 v5, p1

    .line 27
    :cond_c
    :goto_5
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v3, v26

    sub-int v11, v21, v3

    invoke-virtual {v0, v3, v11}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 28
    iget-object v0, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v0, v3, v11}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 29
    invoke-virtual {v5, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 30
    iget-boolean v4, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_d

    if-nez v3, :cond_d

    .line 31
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v4

    .line 32
    iput v4, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    sub-int/2addr v0, v4

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    .line 33
    :goto_6
    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v6, :cond_e

    if-eqz v20, :cond_e

    .line 34
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v6

    .line 35
    iput v6, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    add-int/2addr v0, v6

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    .line 36
    :goto_7
    iget-object v7, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v8, v17, v16

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 37
    iget-object v7, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v8, v18, v19

    add-int/2addr v8, v0

    const/4 v0, 0x1

    invoke-virtual {v7, v3, v0, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 38
    iget-boolean v7, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v8, 0x3

    if-eqz v7, :cond_f

    const/4 v7, 0x5

    new-array v7, v7, [I

    const/high16 v9, -0x80000000

    aput v9, v7, v8

    goto :goto_8

    :cond_f
    new-array v7, v8, [I

    :goto_8
    new-array v9, v0, [Landroid/text/Layout$Directions;

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v2, :cond_14

    .line 39
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v11

    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v12

    shl-int/lit8 v12, v12, 0x1e

    or-int/2addr v11, v12

    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x20000000

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    or-int/2addr v11, v12

    const/4 v12, 0x0

    aput v11, v7, v12

    .line 40
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v11

    add-int v11, v11, v18

    if-lez v10, :cond_11

    sub-int/2addr v11, v4

    .line 41
    :cond_11
    aput v11, v7, v0

    .line 42
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v11

    add-int/lit8 v12, v2, -0x1

    if-ne v10, v12, :cond_12

    add-int/2addr v11, v6

    :cond_12
    const/4 v12, 0x2

    .line 43
    aput v11, v7, v12

    .line 44
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 45
    iget-boolean v11, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v11, :cond_13

    .line 46
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v11

    aput v11, v7, v8

    const/4 v11, 0x4

    .line 47
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v13

    aput v13, v7, v11

    .line 48
    :cond_13
    iget-object v11, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v13, v3, v10

    invoke-virtual {v11, v13, v7}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 49
    iget-object v11, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v11, v13, v9}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_14
    add-int/lit8 v11, v21, -0x1

    .line 50
    invoke-virtual {v1, v3, v11, v2}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 51
    sget-object v3, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 52
    :try_start_1
    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 53
    invoke-virtual {v5}, Landroid/text/StaticLayout;->finish()V

    .line 54
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 55
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public getEllipsisStart(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Directions;

    return-object p1
.end method

.method public getLineStart(I)I
    .locals 2

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method public getTopPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public setBlocksDataForTest([I[II)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 2
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return-void
.end method

.method public updateBlocks(III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_0

    .line 2
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 3
    :goto_0
    iget v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    const/4 v6, -0x1

    if-ge v4, v5, :cond_2

    .line 4
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v5, v5, v4

    if-lt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_1
    move v5, v4

    .line 5
    :goto_2
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v7, :cond_4

    .line 6
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v8, v8, v5

    if-lt v8, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v6

    .line 7
    :goto_3
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v9, v8, v5

    const/4 v10, 0x1

    if-nez v4, :cond_5

    move v11, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v4, -0x1

    .line 8
    aget v11, v8, v11

    add-int/2addr v11, v10

    :goto_4
    if-le v1, v11, :cond_6

    move v11, v10

    goto :goto_5

    :cond_6
    move v11, v3

    :goto_5
    if-lez p3, :cond_7

    move v12, v10

    goto :goto_6

    :cond_7
    move v12, v3

    .line 9
    :goto_6
    aget v13, v8, v5

    if-ge v2, v13, :cond_8

    move v13, v10

    goto :goto_7

    :cond_8
    move v13, v3

    :goto_7
    if-eqz v12, :cond_9

    add-int/lit8 v14, v11, 0x1

    goto :goto_8

    :cond_9
    move v14, v11

    :goto_8
    if-eqz v13, :cond_a

    add-int/lit8 v14, v14, 0x1

    :cond_a
    sub-int v15, v5, v4

    add-int/2addr v15, v10

    add-int v16, v7, v14

    sub-int v15, v16, v15

    if-nez v15, :cond_b

    .line 10
    aput v3, v8, v3

    .line 11
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v6, v1, v3

    .line 12
    iput v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    .line 13
    :cond_b
    array-length v6, v8

    if-le v15, v6, :cond_c

    .line 14
    invoke-static {v15}, Lu/a;->h(I)I

    move-result v6

    .line 15
    new-array v7, v6, [I

    .line 16
    new-array v6, v6, [I

    .line 17
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    invoke-static {v8, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v8, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v8, v5, 0x1

    add-int v10, v4, v14

    move/from16 v18, v9

    iget v9, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v9, v5

    const/16 v17, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v3, v8, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v9, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    invoke-static {v3, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 22
    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    goto :goto_9

    :cond_c
    move/from16 v18, v9

    move/from16 v17, v10

    add-int/lit8 v3, v5, 0x1

    add-int v6, v4, v14

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    .line 23
    invoke-static {v8, v3, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v3, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :goto_9
    iput v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    sub-int v2, p3, v2

    if-eqz v2, :cond_d

    add-int v15, v4, v14

    move v3, v15

    .line 26
    :goto_a
    iget v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v3, v5, :cond_d

    .line 27
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v5, v3

    add-int/2addr v6, v2

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 28
    :cond_d
    iget v3, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    if-eqz v11, :cond_e

    .line 29
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v5, v1, -0x1

    aput v5, v3, v4

    .line 30
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v5, -0x1

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v5, -0x1

    :goto_b
    if-eqz v12, :cond_f

    .line 31
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v1, v1, p3

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    aput v1, v3, v4

    .line 32
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_f
    if-eqz v13, :cond_10

    .line 33
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v9, v18, v2

    aput v9, v1, v4

    .line 34
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v5, v1, v4

    :cond_10
    return-void
.end method
