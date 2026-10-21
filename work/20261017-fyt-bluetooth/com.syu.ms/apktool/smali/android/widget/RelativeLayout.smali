.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mHasBaselineAlignedChild:Z

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v1, 0x800033

    .line 3
    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 6
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 9
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v1, 0x800033

    .line 13
    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 16
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 17
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 19
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 23
    iput-object p3, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v0, 0x800033

    .line 24
    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 27
    iput-object p3, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 28
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, p3}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    const/4 p3, 0x0

    .line 29
    iput-boolean p3, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 30
    iput-boolean p3, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method private alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout;->getRelatedViewBaseline([II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    if-eq v1, v3, :cond_0

    sub-int/2addr v0, v1

    .line 7
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 9
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 11
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-lt v1, v2, :cond_3

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p2

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 14
    :cond_3
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    :cond_4
    :goto_0
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 2
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1

    aget v0, p3, v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    .line 6
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_3

    aget v0, p3, v0

    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_3
    :goto_1
    const/4 v0, 0x5

    .line 11
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 13
    :cond_4
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_5

    aget v0, p3, v0

    if-eqz v0, :cond_5

    .line 14
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_5
    :goto_2
    const/4 v0, 0x7

    .line 15
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3

    .line 17
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_7

    aget v0, p3, v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    .line 18
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_7
    :goto_3
    const/16 v0, 0x9

    .line 19
    aget v0, p3, v0

    if-eqz v0, :cond_8

    .line 20
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_8
    const/16 v0, 0xb

    .line 21
    aget p3, p3, v0

    if-eqz p3, :cond_9

    if-ltz p2, :cond_9

    .line 22
    iget p3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_9
    return-void
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 3
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v1, v0, v1

    if-eqz v1, :cond_1

    if-ltz p2, :cond_1

    .line 7
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_1
    :goto_0
    const/4 v1, 0x3

    .line 8
    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 10
    :cond_2
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v1, v0, v1

    if-eqz v1, :cond_3

    .line 11
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_3
    :goto_1
    const/4 v1, 0x6

    .line 12
    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 13
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 14
    :cond_4
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_5

    aget v1, v0, v1

    if-eqz v1, :cond_5

    .line 15
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_5
    :goto_2
    const/16 v1, 0x8

    .line 16
    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 17
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3

    .line 18
    :cond_6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_7

    aget v1, v0, v1

    if-eqz v1, :cond_7

    if-ltz p2, :cond_7

    .line 19
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_7
    :goto_3
    const/16 v1, 0xa

    .line 20
    aget v1, v0, v1

    if-eqz v1, :cond_8

    .line 21
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_8
    const/16 v1, 0xc

    .line 22
    aget v1, v0, v1

    if-eqz v1, :cond_9

    if-ltz p2, :cond_9

    .line 23
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr p2, v1

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_9
    const/4 p1, 0x4

    .line 24
    aget p1, v0, p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    :cond_a
    return-void
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p2, p0

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    add-int/2addr p2, p0

    .line 4
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p2, p0

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    add-int/2addr p2, p0

    .line 4
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    return-void
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-gez p8, :cond_1

    .line 1
    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v2, :cond_1

    if-ltz p3, :cond_0

    .line 2
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_1
    if-gez p1, :cond_2

    add-int/2addr p6, p4

    goto :goto_0

    :cond_2
    move p6, p1

    :goto_0
    if-gez p2, :cond_3

    sub-int/2addr p8, p7

    sub-int/2addr p8, p5

    goto :goto_1

    :cond_3
    move p8, p2

    :goto_1
    sub-int/2addr p8, p6

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    :goto_2
    move p3, p8

    goto :goto_3

    :cond_4
    if-ltz p3, :cond_5

    if-ltz p8, :cond_8

    .line 4
    invoke-static {p8, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_3

    :cond_5
    const/4 p1, -0x1

    if-ne p3, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, -0x2

    if-ne p3, p1, :cond_7

    if-ltz p8, :cond_7

    const/high16 v0, -0x80000000

    goto :goto_2

    :cond_7
    move p3, v1

    move v0, p3

    .line 5
    :cond_8
    :goto_3
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 3

    .line 1
    aget p1, p1, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 6
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v1

    aget p1, p1, p2

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-nez p1, :cond_1

    return-object v0

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    return-object v0
.end method

.method private getRelatedViewBaseline([II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 3
    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Li/a;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 3
    iget p2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p3

    .line 2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p2

    .line 3
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p3

    .line 2
    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, p4, v0

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v2

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-gez p4, :cond_2

    .line 4
    iget-boolean p4, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez p4, :cond_2

    .line 5
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz p2, :cond_1

    .line 6
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 8
    :cond_2
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p4, -0x1

    if-ne p2, p4, :cond_3

    .line 9
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_3
    const/high16 p2, -0x80000000

    .line 10
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 11
    :goto_1
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v0

    .line 3
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1

    .line 6
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_6

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_6

    const/16 v1, 0xd

    .line 8
    aget v1, v0, v1

    if-nez v1, :cond_4

    const/16 v1, 0xe

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 10
    iget p4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr p3, p4

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 11
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 12
    :cond_3
    iget p3, p0, Landroid/view/View;->mPaddingLeft:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 13
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    :cond_4
    :goto_0
    if-nez p4, :cond_5

    .line 14
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 15
    :cond_5
    iget p3, p0, Landroid/view/View;->mPaddingLeft:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 16
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :goto_1
    return v2

    :cond_6
    :goto_2
    const/16 p1, 0x15

    .line 17
    aget p1, v0, p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1

    .line 5
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_5

    const/16 v1, 0xd

    .line 7
    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 9
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 10
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 11
    :cond_4
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 12
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :goto_1
    return v2

    :cond_5
    :goto_2
    const/16 p1, 0xc

    .line 13
    aget p1, v0, p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    const/16 v2, 0x12

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3
    :goto_1
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    return-void
.end method

.method private sortChildren()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 3
    :cond_0
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eq v1, v0, :cond_3

    .line 5
    :cond_2
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 6
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 7
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v2, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 10
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v2, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->clear()V

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_3
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->clear()V

    return v1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p5

    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p4

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v6, -0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v7, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-ne v3, v7, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v2

    .line 8
    :goto_3
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    const/4 v10, 0x0

    .line 9
    iget v11, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v12, 0x800007

    and-int/2addr v12, v11

    const v13, 0x800003

    if-eq v12, v13, :cond_5

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    move v12, v2

    :goto_4
    and-int/lit8 v11, v11, 0x70

    const/16 v13, 0x30

    if-eq v11, v13, :cond_6

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    move v11, v2

    :goto_5
    if-nez v12, :cond_7

    if-eqz v11, :cond_8

    .line 10
    :cond_7
    iget v13, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v13, v6, :cond_8

    .line 11
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    :cond_8
    if-eq v1, v7, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    if-eq v3, v7, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    move v3, v2

    .line 12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_b

    if-ne v4, v6, :cond_b

    const/high16 v4, 0x10000

    .line 14
    :cond_b
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 15
    array-length v13, v6

    move v15, v2

    move/from16 v16, v15

    :goto_8
    const/16 v2, 0x8

    if-ge v15, v13, :cond_d

    .line 16
    aget-object v14, v6, v15

    move-object/from16 v18, v6

    .line 17
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v2, :cond_c

    .line 18
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 19
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v6

    .line 20
    invoke-direct {v0, v2, v4, v6}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 21
    invoke-direct {v0, v14, v2, v4, v5}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 22
    invoke-direct {v0, v14, v2, v4, v1}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v16, 0x1

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v18

    goto :goto_8

    .line 23
    :cond_d
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 24
    array-length v13, v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/high16 v15, -0x80000000

    const v18, 0x7fffffff

    move/from16 v21, v15

    move/from16 v22, v18

    move/from16 v23, v22

    const/4 v2, 0x0

    const/16 v18, 0x0

    :goto_9
    if-ge v2, v13, :cond_1a

    move/from16 v20, v7

    .line 26
    aget-object v7, v6, v2

    move-object/from16 v19, v6

    .line 27
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v24, v13

    const/16 v13, 0x8

    if-eq v6, v13, :cond_18

    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 30
    invoke-direct {v0, v7, v6, v4, v5}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 31
    invoke-direct {v0, v7, v6, v5, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v18, 0x1

    :cond_e
    const/16 v13, 0x13

    if-eqz v1, :cond_12

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v25

    if-eqz v25, :cond_10

    if-ge v14, v13, :cond_f

    .line 33
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v25

    sub-int v13, v4, v25

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_a

    .line 34
    :cond_f
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v13

    sub-int v13, v4, v13

    move/from16 v25, v5

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v13, v5

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_b

    :cond_10
    move/from16 v25, v5

    move v5, v13

    if-ge v14, v5, :cond_11

    .line 35
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_b

    .line 36
    :cond_11
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v13

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v5

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_b

    :cond_12
    :goto_a
    move/from16 v25, v5

    :goto_b
    if-eqz v3, :cond_14

    const/16 v5, 0x13

    if-ge v14, v5, :cond_13

    .line 37
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_c

    .line 38
    :cond_13
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_14
    :goto_c
    if-ne v7, v10, :cond_15

    if-eqz v11, :cond_16

    .line 39
    :cond_15
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v13

    move/from16 v13, v23

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 40
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v13

    move/from16 v13, v22

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    :cond_16
    if-ne v7, v10, :cond_17

    if-eqz v12, :cond_19

    .line 41
    :cond_17
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 42
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v6

    move/from16 v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v15, v5

    move/from16 v21, v6

    goto :goto_d

    :cond_18
    move/from16 v25, v5

    move/from16 v6, v21

    move/from16 v5, v22

    move/from16 v13, v23

    :cond_19
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v19

    move/from16 v7, v20

    move/from16 v13, v24

    move/from16 v5, v25

    goto/16 :goto_9

    :cond_1a
    move/from16 v20, v7

    move/from16 v24, v13

    move/from16 v6, v21

    move/from16 v5, v22

    move/from16 v13, v23

    .line 43
    iget-boolean v2, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    if-eqz v2, :cond_21

    move/from16 v2, v24

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v2, :cond_20

    .line 44
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move/from16 v21, v4

    .line 45
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v17, v9

    const/16 v9, 0x8

    if-eq v4, v9, :cond_1e

    .line 46
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    invoke-direct {v0, v14, v4}, Landroid/widget/RelativeLayout;->alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    if-ne v14, v10, :cond_1c

    if-eqz v11, :cond_1b

    goto :goto_f

    :cond_1b
    move/from16 v22, v11

    goto :goto_10

    .line 48
    :cond_1c
    :goto_f
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    move/from16 v22, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v9, v11

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 49
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v11

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_10
    if-ne v14, v10, :cond_1d

    if-eqz v12, :cond_1f

    .line 50
    :cond_1d
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v11

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 51
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v4

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    move v15, v9

    goto :goto_11

    :cond_1e
    move/from16 v22, v11

    :cond_1f
    :goto_11
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v17

    move/from16 v4, v21

    move/from16 v11, v22

    goto :goto_e

    :cond_20
    move/from16 v21, v4

    move/from16 v17, v9

    move/from16 v22, v11

    goto :goto_12

    :cond_21
    move/from16 v21, v4

    move/from16 v17, v9

    move/from16 v22, v11

    move/from16 v2, v24

    :goto_12
    move/from16 v23, v13

    const/16 v4, 0xd

    if-eqz v1, :cond_27

    .line 52
    iget v1, v0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v8, v1

    .line 53
    iget-object v1, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_22

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v1, :cond_22

    .line 54
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 55
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v7, p1

    .line 56
    invoke-static {v1, v7}, Landroid/view/View;->resolveSize(II)I

    move-result v8

    if-eqz v16, :cond_27

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v2, :cond_27

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-eq v9, v11, :cond_25

    .line 59
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v11, v20

    .line 60
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v13

    .line 61
    aget v14, v13, v4

    if-nez v14, :cond_24

    const/16 v14, 0xe

    aget v14, v13, v14

    if-eqz v14, :cond_23

    goto :goto_14

    :cond_23
    const/16 v14, 0xb

    .line 62
    aget v13, v13, v14

    if-eqz v13, :cond_26

    .line 63
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 64
    iget v13, v0, Landroid/view/View;->mPaddingRight:I

    sub-int v13, v8, v13

    sub-int/2addr v13, v7

    invoke-static {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 65
    invoke-static {v9}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_15

    .line 66
    :cond_24
    :goto_14
    invoke-static {v7, v9, v8}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_15

    :cond_25
    move/from16 v11, v20

    :cond_26
    :goto_15
    add-int/lit8 v1, v1, 0x1

    move/from16 v20, v11

    goto :goto_13

    :cond_27
    move/from16 v11, v20

    if-eqz v3, :cond_2c

    .line 67
    iget v1, v0, Landroid/view/View;->mPaddingBottom:I

    add-int v9, v17, v1

    .line 68
    iget-object v1, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_28

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_28

    .line 69
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 70
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v3, p2

    .line 71
    invoke-static {v1, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    if-eqz v18, :cond_2d

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_2d

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v13, 0x8

    if-eq v7, v13, :cond_2b

    .line 74
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v13

    .line 76
    aget v14, v13, v4

    if-nez v14, :cond_2a

    const/16 v14, 0xf

    aget v14, v13, v14

    if-eqz v14, :cond_29

    goto :goto_17

    :cond_29
    const/16 v14, 0xc

    .line 77
    aget v13, v13, v14

    if-eqz v13, :cond_2b

    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 79
    iget v13, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int v13, v9, v13

    sub-int/2addr v13, v3

    invoke-static {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 80
    invoke-static {v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v13

    add-int/2addr v13, v3

    invoke-static {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_18

    .line 81
    :cond_2a
    :goto_17
    invoke-static {v3, v7, v9}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_2b
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    move/from16 v9, v17

    :cond_2d
    if-nez v12, :cond_2e

    if-eqz v22, :cond_32

    .line 82
    :cond_2e
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 83
    iget v3, v0, Landroid/view/View;->mPaddingLeft:I

    iget v4, v0, Landroid/view/View;->mPaddingTop:I

    iget v7, v0, Landroid/view/View;->mPaddingRight:I

    sub-int v7, v8, v7

    iget v13, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int v13, v9, v13

    invoke-virtual {v1, v3, v4, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    iget-object v3, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 85
    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v16, v15, v23

    sub-int v17, v6, v5

    move v15, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v11

    invoke-static/range {v15 .. v20}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 86
    iget v1, v3, Landroid/graphics/Rect;->left:I

    sub-int v1, v1, v23

    .line 87
    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    if-nez v1, :cond_2f

    if-eqz v3, :cond_32

    :cond_2f
    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_32

    .line 88
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_31

    if-eq v5, v10, :cond_31

    .line 90
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v12, :cond_30

    .line 91
    invoke-static {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 92
    invoke-static {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_30
    if-eqz v22, :cond_31

    .line 93
    invoke-static {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 94
    invoke-static {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 95
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_34

    sub-int v4, v21, v8

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v2, :cond_34

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_33

    .line 98
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    invoke-static {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 100
    invoke-static {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 101
    :cond_34
    invoke-virtual {v0, v8, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
