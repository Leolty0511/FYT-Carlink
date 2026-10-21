.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mInvisibleIndicatorGroupId:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    sput-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [I

    .line 8
    .line 9
    const v4, 0x10100a8

    .line 10
    .line 11
    .line 12
    aput v4, v3, v0

    .line 13
    .line 14
    sput-object v3, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 15
    .line 16
    new-array v4, v2, [I

    .line 17
    .line 18
    const v5, 0x10100a9

    .line 19
    .line 20
    .line 21
    aput v5, v4, v0

    .line 22
    .line 23
    sput-object v4, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    new-array v6, v5, [I

    .line 27
    .line 28
    fill-array-data v6, :array_0

    .line 29
    .line 30
    .line 31
    sput-object v6, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    new-array v7, v7, [[I

    .line 35
    .line 36
    aput-object v1, v7, v0

    .line 37
    .line 38
    aput-object v3, v7, v2

    .line 39
    .line 40
    aput-object v4, v7, v5

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    aput-object v6, v7, v1

    .line 44
    .line 45
    sput-object v7, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 46
    .line 47
    new-array v1, v2, [I

    .line 48
    .line 49
    const v2, 0x10100a6

    .line 50
    .line 51
    .line 52
    aput v2, v1, v0

    .line 53
    .line 54
    sput-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/widget/ExpandableListView;->mInvisibleIndicatorGroupId:I

    .line 7
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x2

    .line 10
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    const/4 p3, 0x3

    .line 11
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez p2, :cond_0

    .line 12
    iget-object p2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 13
    iget p3, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_0
    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 p2, 0x5

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    const/4 p2, 0x6

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x7

    const/4 p3, -0x2

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    const/16 p2, 0x8

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    const/16 p2, 0x9

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    const/16 p2, 0xa

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 2

    .line 1
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 7
    .line 8
    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 9
    .line 10
    iget p1, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 18
    .line 19
    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 2
    .line 3
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 24
    .line 25
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 26
    .line 27
    if-ne v4, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 33
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v1, v3

    .line 41
    :goto_2
    or-int/2addr p1, v1

    .line 42
    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 43
    .line 44
    aget-object p1, v1, p1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_3
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 61
    .line 62
    iget v1, v1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 63
    .line 64
    iget-object p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 65
    .line 66
    iget p1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 67
    .line 68
    if-ne v1, p1, :cond_4

    .line 69
    .line 70
    sget-object p1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    sget-object p1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 74
    .line 75
    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static getPackedPositionChild(J)I
    .locals 8

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    :cond_1
    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/16 v2, -0x1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getPackedPositionType(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasRtlSupport()Z
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lt p1, v1, :cond_1

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    return p1
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8
    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method private resolveChildIndicator()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 15
    .line 16
    if-lt v0, v1, :cond_3

    .line 17
    .line 18
    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 22
    .line 23
    if-lt v0, v1, :cond_2

    .line 24
    .line 25
    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 26
    .line 27
    :cond_2
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 28
    .line 29
    if-lt v0, v1, :cond_3

    .line 30
    .line 31
    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 32
    .line 33
    :cond_3
    :goto_0
    return-void
.end method

.method private resolveIndicator()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 14
    .line 15
    if-ltz v0, :cond_3

    .line 16
    .line 17
    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 21
    .line 22
    if-ltz v0, :cond_2

    .line 23
    .line 24
    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 25
    .line 26
    :cond_2
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 27
    .line 28
    if-ltz v0, :cond_3

    .line 29
    .line 30
    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 31
    .line 32
    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v0, v1

    .line 47
    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 48
    .line 49
    :cond_4
    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 24
    .line 25
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-virtual {p3}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 34
    .line 35
    .line 36
    new-instance p2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 37
    .line 38
    move-object v0, p2

    .line 39
    move-object v1, p1

    .line 40
    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v2, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 18
    .line 19
    const/16 v3, 0x22

    .line 20
    .line 21
    and-int/2addr v2, v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    move v2, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v2, v4

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v6, v0, Landroid/view/View;->mScrollX:I

    .line 36
    .line 37
    iget v7, v0, Landroid/view/View;->mScrollY:I

    .line 38
    .line 39
    iget v8, v0, Landroid/view/View;->mPaddingLeft:I

    .line 40
    .line 41
    add-int/2addr v8, v6

    .line 42
    iget v9, v0, Landroid/view/View;->mPaddingTop:I

    .line 43
    .line 44
    add-int/2addr v9, v7

    .line 45
    iget v10, v0, Landroid/view/View;->mRight:I

    .line 46
    .line 47
    add-int/2addr v6, v10

    .line 48
    iget v10, v0, Landroid/view/View;->mLeft:I

    .line 49
    .line 50
    sub-int/2addr v6, v10

    .line 51
    iget v10, v0, Landroid/view/View;->mPaddingRight:I

    .line 52
    .line 53
    sub-int/2addr v6, v10

    .line 54
    iget v10, v0, Landroid/view/View;->mBottom:I

    .line 55
    .line 56
    add-int/2addr v7, v10

    .line 57
    iget v10, v0, Landroid/view/View;->mTop:I

    .line 58
    .line 59
    sub-int/2addr v7, v10

    .line 60
    iget v10, v0, Landroid/view/View;->mPaddingBottom:I

    .line 61
    .line 62
    sub-int/2addr v7, v10

    .line 63
    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v3, v4

    .line 68
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iget v7, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    sub-int/2addr v7, v8

    .line 79
    sub-int/2addr v7, v6

    .line 80
    sub-int/2addr v7, v5

    .line 81
    iget v8, v0, Landroid/view/View;->mBottom:I

    .line 82
    .line 83
    iget-object v9, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    iget v11, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 90
    .line 91
    sub-int/2addr v11, v6

    .line 92
    const/4 v6, -0x4

    .line 93
    :goto_2
    if-ge v4, v10, :cond_f

    .line 94
    .line 95
    if-gez v11, :cond_4

    .line 96
    .line 97
    :cond_3
    :goto_3
    move/from16 v18, v6

    .line 98
    .line 99
    move/from16 v17, v7

    .line 100
    .line 101
    move/from16 v19, v8

    .line 102
    .line 103
    goto/16 :goto_8

    .line 104
    .line 105
    :cond_4
    if-le v11, v7, :cond_5

    .line 106
    .line 107
    goto/16 :goto_a

    .line 108
    .line 109
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-ltz v12, :cond_3

    .line 122
    .line 123
    if-le v13, v8, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    iget-object v14, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 127
    .line 128
    invoke-virtual {v14, v11}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 137
    .line 138
    .line 139
    move-result v16

    .line 140
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 141
    .line 142
    move/from16 v17, v7

    .line 143
    .line 144
    iget v7, v5, Landroid/widget/ExpandableListPosition;->type:I

    .line 145
    .line 146
    if-eq v7, v6, :cond_b

    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    if-ne v7, v6, :cond_9

    .line 150
    .line 151
    iget v6, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 152
    .line 153
    move/from16 v19, v8

    .line 154
    .line 155
    const/4 v8, -0x1

    .line 156
    if-ne v6, v8, :cond_7

    .line 157
    .line 158
    iget v6, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 159
    .line 160
    :cond_7
    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget v6, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 163
    .line 164
    if-ne v6, v8, :cond_8

    .line 165
    .line 166
    iget v6, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 167
    .line 168
    :cond_8
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    move/from16 v19, v8

    .line 172
    .line 173
    iget v6, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 174
    .line 175
    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 176
    .line 177
    iget v6, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 178
    .line 179
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 180
    .line 181
    :goto_4
    if-eqz v15, :cond_a

    .line 182
    .line 183
    iget v6, v9, Landroid/graphics/Rect;->left:I

    .line 184
    .line 185
    iget v8, v9, Landroid/graphics/Rect;->right:I

    .line 186
    .line 187
    sub-int v8, v16, v8

    .line 188
    .line 189
    sub-int v16, v16, v6

    .line 190
    .line 191
    iget v6, v0, Landroid/view/View;->mPaddingRight:I

    .line 192
    .line 193
    sub-int/2addr v8, v6

    .line 194
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 195
    .line 196
    sub-int v6, v16, v6

    .line 197
    .line 198
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_a
    iget v6, v9, Landroid/graphics/Rect;->left:I

    .line 202
    .line 203
    iget v8, v0, Landroid/view/View;->mPaddingLeft:I

    .line 204
    .line 205
    add-int/2addr v6, v8

    .line 206
    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 207
    .line 208
    iget v6, v9, Landroid/graphics/Rect;->right:I

    .line 209
    .line 210
    add-int/2addr v6, v8

    .line 211
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 212
    .line 213
    :goto_5
    move v6, v7

    .line 214
    goto :goto_6

    .line 215
    :cond_b
    move/from16 v18, v6

    .line 216
    .line 217
    move/from16 v19, v8

    .line 218
    .line 219
    :goto_6
    iget v8, v9, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    iget v15, v9, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    if-eq v8, v15, :cond_e

    .line 224
    .line 225
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 226
    .line 227
    if-eqz v8, :cond_c

    .line 228
    .line 229
    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_c
    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 235
    .line 236
    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 237
    .line 238
    :goto_7
    const/4 v8, 0x2

    .line 239
    if-ne v7, v8, :cond_d

    .line 240
    .line 241
    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 242
    .line 243
    iget v7, v0, Landroid/widget/ExpandableListView;->mInvisibleIndicatorGroupId:I

    .line 244
    .line 245
    if-eq v5, v7, :cond_e

    .line 246
    .line 247
    :cond_d
    invoke-direct {v0, v14}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-eqz v5, :cond_e

    .line 252
    .line 253
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    .line 258
    .line 259
    :cond_e
    invoke-virtual {v14}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 260
    .line 261
    .line 262
    goto :goto_9

    .line 263
    :goto_8
    move/from16 v6, v18

    .line 264
    .line 265
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 266
    .line 267
    add-int/lit8 v11, v11, 0x1

    .line 268
    .line 269
    move/from16 v7, v17

    .line 270
    .line 271
    move/from16 v8, v19

    .line 272
    .line 273
    const/4 v5, 0x1

    .line 274
    goto/16 :goto_2

    .line 275
    .line 276
    :cond_f
    :goto_a
    if-eqz v2, :cond_10

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 279
    .line 280
    .line 281
    :cond_10
    return-void
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    add-int/2addr p3, v0

    .line 4
    if-ltz p3, :cond_2

    .line 5
    .line 6
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 17
    .line 18
    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 30
    .line 31
    iget v2, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 32
    .line 33
    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 34
    .line 35
    if-eq v2, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public expandGroup(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result p1

    return p1
.end method

.method public expandGroup(IZ)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v0

    .line 6
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iget-object p2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p2, p2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p2

    .line 10
    iget-object p2, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(II)V

    .line 11
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 30
    .line 31
    .line 32
    return-wide v0
.end method

.method public getFlatListPosition(J)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 15
    .line 16
    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getSelectedId()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0

    .line 34
    :cond_1
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-interface {v3, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public handleItemClick(Landroid/view/View;IJ)Z
    .locals 8

    .line 1
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 8
    .line 9
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 14
    .line 15
    iget p4, p3, Landroid/widget/ExpandableListPosition;->type:I

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v7, 0x0

    .line 19
    if-ne p4, v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 22
    .line 23
    const/4 p4, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget v3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 27
    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-wide v4, v5

    .line 31
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 38
    .line 39
    .line 40
    return p4

    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 60
    .line 61
    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 62
    .line 63
    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 80
    .line 81
    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 82
    .line 83
    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 87
    .line 88
    iget p3, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 89
    .line 90
    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr v0, p1

    .line 97
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 98
    .line 99
    invoke-interface {p1, p3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    add-int/2addr p1, v0

    .line 104
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(II)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    move v7, p4

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 110
    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 117
    .line 118
    iget-object p2, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 119
    .line 120
    iget v3, p2, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 121
    .line 122
    iget v4, p2, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 123
    .line 124
    move-object v1, p0

    .line 125
    move-object v2, p1

    .line 126
    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1

    .line 131
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 132
    .line 133
    .line 134
    return v7
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/ExpandableListView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroid/widget/ExpandableListView$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 3
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/2addr p1, v0

    .line 16
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setInvisibleIndicatorGroupId(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ExpandableListView;->mInvisibleIndicatorGroupId:I

    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p2, "Could not find child"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_2
    :goto_0
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 38
    .line 39
    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    return p1
.end method

.method public setSelectedGroup(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 15
    .line 16
    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
