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

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

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

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    .line 20
    .line 21
    .line 22
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
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v1, 0x800033

    .line 6
    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 9
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 12
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 21
    .line 22
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    sub-int/2addr v0, v1

    .line 26
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    aget v0, p3, v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-ltz p2, :cond_1

    .line 39
    .line 40
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 41
    .line 42
    sub-int v0, p2, v0

    .line 43
    .line 44
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    .line 63
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 64
    .line 65
    add-int/2addr v1, v2

    .line 66
    add-int/2addr v1, v0

    .line 67
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    aget v0, p3, v0

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 80
    .line 81
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    const/4 v0, 0x5

    .line 88
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 99
    .line 100
    add-int/2addr v0, v1

    .line 101
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    aget v0, p3, v0

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 114
    .line 115
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 116
    .line 117
    add-int/2addr v0, v1

    .line 118
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    const/4 v0, 0x7

    .line 122
    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 133
    .line 134
    sub-int/2addr v0, v1

    .line 135
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    aget v0, p3, v0

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    if-ltz p2, :cond_7

    .line 148
    .line 149
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 150
    .line 151
    sub-int v0, p2, v0

    .line 152
    .line 153
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 154
    .line 155
    sub-int/2addr v0, v1

    .line 156
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_3
    const/16 v0, 0x9

    .line 160
    .line 161
    aget v0, p3, v0

    .line 162
    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 166
    .line 167
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    .line 169
    add-int/2addr v0, v1

    .line 170
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 171
    .line 172
    .line 173
    :cond_8
    const/16 v0, 0xb

    .line 174
    .line 175
    aget p3, p3, v0

    .line 176
    .line 177
    if-eqz p3, :cond_9

    .line 178
    .line 179
    if-ltz p2, :cond_9

    .line 180
    .line 181
    iget p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 182
    .line 183
    sub-int/2addr p2, p3

    .line 184
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 185
    .line 186
    sub-int/2addr p2, p3

    .line 187
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 188
    .line 189
    .line 190
    :cond_9
    return-void
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-eq p3, v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, p3

    .line 17
    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x2

    .line 31
    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 42
    .line 43
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 44
    .line 45
    add-int/2addr v1, v2

    .line 46
    sub-int/2addr p3, v1

    .line 47
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    aget p3, v0, p3

    .line 56
    .line 57
    if-eqz p3, :cond_3

    .line 58
    .line 59
    if-ltz p2, :cond_3

    .line 60
    .line 61
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 62
    .line 63
    sub-int p3, p2, p3

    .line 64
    .line 65
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 66
    .line 67
    sub-int/2addr p3, v1

    .line 68
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    const/4 p3, 0x3

    .line 72
    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 83
    .line 84
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 85
    .line 86
    add-int/2addr v1, v2

    .line 87
    add-int/2addr v1, p3

    .line 88
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    aget p3, v0, p3

    .line 97
    .line 98
    if-eqz p3, :cond_5

    .line 99
    .line 100
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 101
    .line 102
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    .line 104
    add-int/2addr p3, v1

    .line 105
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    const/4 p3, 0x6

    .line 109
    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 120
    .line 121
    add-int/2addr p3, v1

    .line 122
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    aget p3, v0, p3

    .line 131
    .line 132
    if-eqz p3, :cond_7

    .line 133
    .line 134
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 135
    .line 136
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    .line 138
    add-int/2addr p3, v1

    .line 139
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_2
    const/16 p3, 0x8

    .line 143
    .line 144
    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 155
    .line 156
    sub-int/2addr p3, v1

    .line 157
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 162
    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    aget p3, v0, p3

    .line 166
    .line 167
    if-eqz p3, :cond_9

    .line 168
    .line 169
    if-ltz p2, :cond_9

    .line 170
    .line 171
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 172
    .line 173
    sub-int p3, p2, p3

    .line 174
    .line 175
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 176
    .line 177
    sub-int/2addr p3, v1

    .line 178
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 179
    .line 180
    .line 181
    :cond_9
    :goto_3
    const/16 p3, 0xa

    .line 182
    .line 183
    aget p3, v0, p3

    .line 184
    .line 185
    if-eqz p3, :cond_a

    .line 186
    .line 187
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 188
    .line 189
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 190
    .line 191
    add-int/2addr p3, v1

    .line 192
    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 193
    .line 194
    .line 195
    :cond_a
    const/16 p3, 0xc

    .line 196
    .line 197
    aget p3, v0, p3

    .line 198
    .line 199
    if-eqz p3, :cond_b

    .line 200
    .line 201
    if-ltz p2, :cond_b

    .line 202
    .line 203
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 204
    .line 205
    sub-int/2addr p2, p3

    .line 206
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 207
    .line 208
    sub-int/2addr p2, p3

    .line 209
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 210
    .line 211
    .line 212
    :cond_b
    return-void
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sub-int/2addr p2, p0

    .line 6
    div-int/lit8 p2, p2, 0x2

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 9
    .line 10
    .line 11
    add-int/2addr p2, p0

    .line 12
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sub-int/2addr p2, p0

    .line 6
    div-int/lit8 p2, p2, 0x2

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 9
    .line 10
    .line 11
    add-int/2addr p2, p0

    .line 12
    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    sub-int/2addr p1, p2

    .line 22
    return p1
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p8, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    .line 9
    const/high16 v3, -0x80000000

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-boolean v4, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 14
    .line 15
    if-nez v4, :cond_3

    .line 16
    .line 17
    if-eq p1, v3, :cond_1

    .line 18
    .line 19
    if-eq p2, v3, :cond_1

    .line 20
    .line 21
    sub-int/2addr p2, p1

    .line 22
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-ltz p3, :cond_2

    .line 28
    .line 29
    :goto_1
    move v0, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move p3, v0

    .line 32
    :goto_2
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_3
    if-ne p1, v3, :cond_4

    .line 38
    .line 39
    add-int/2addr p6, p4

    .line 40
    goto :goto_3

    .line 41
    :cond_4
    move p6, p1

    .line 42
    :goto_3
    if-ne p2, v3, :cond_5

    .line 43
    .line 44
    sub-int/2addr p8, p7

    .line 45
    sub-int/2addr p8, p5

    .line 46
    goto :goto_4

    .line 47
    :cond_5
    move p8, p2

    .line 48
    :goto_4
    sub-int/2addr p8, p6

    .line 49
    if-eq p1, v3, :cond_7

    .line 50
    .line 51
    if-eq p2, v3, :cond_7

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    move v2, v0

    .line 56
    :cond_6
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    goto :goto_5

    .line 61
    :cond_7
    if-ltz p3, :cond_9

    .line 62
    .line 63
    if-ltz p8, :cond_8

    .line 64
    .line 65
    invoke-static {p8, p3}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    :cond_8
    :goto_5
    move v0, v2

    .line 70
    goto :goto_6

    .line 71
    :cond_9
    const/4 p1, -0x1

    .line 72
    if-ne p3, p1, :cond_b

    .line 73
    .line 74
    if-eqz v1, :cond_a

    .line 75
    .line 76
    move v2, v0

    .line 77
    :cond_a
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    goto :goto_5

    .line 82
    :cond_b
    const/4 p1, -0x2

    .line 83
    if-ne p3, p1, :cond_c

    .line 84
    .line 85
    if-ltz p8, :cond_c

    .line 86
    .line 87
    move p3, p8

    .line 88
    move v0, v3

    .line 89
    goto :goto_6

    .line 90
    :cond_c
    move p3, v0

    .line 91
    :goto_6
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 3

    .line 1
    aget p1, p1, p2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object p1, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    aget v1, v1, p2

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 62
    .line 63
    if-ne p1, v1, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object p1, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    return-object v0

    .line 69
    :cond_3
    return-object p1

    .line 70
    :cond_4
    return-object v0
.end method

.method private getRelatedViewBaselineOffset([I)I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, -0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    add-int/2addr p1, v1

    .line 34
    return p1

    .line 35
    :cond_0
    return v0
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    const/4 p3, -0x1

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iput p2, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iget p3, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    .line 15
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    .line 16
    .line 17
    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move v8, p3

    .line 21
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    .line 35
    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    .line 37
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 38
    .line 39
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    .line 40
    .line 41
    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    .line 42
    .line 43
    move v8, p4

    .line 44
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    .line 15
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    .line 16
    .line 17
    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move v8, p3

    .line 21
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-gez p4, :cond_1

    .line 29
    .line 30
    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    if-ltz p2, :cond_0

    .line 37
    .line 38
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 53
    .line 54
    sub-int/2addr p4, v2

    .line 55
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 56
    .line 57
    sub-int/2addr p4, v2

    .line 58
    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 59
    .line 60
    sub-int/2addr p4, v2

    .line 61
    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 62
    .line 63
    sub-int/2addr p4, v2

    .line 64
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    :goto_0
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    if-ne p2, v1, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/high16 v0, -0x80000000

    .line 80
    .line 81
    :goto_1
    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    :goto_2
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 8
    .line 9
    sub-int/2addr p3, v0

    .line 10
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 11
    .line 12
    sub-int/2addr p3, v0

    .line 13
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr p3, p1

    .line 25
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 30
    .line 31
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 32
    .line 33
    add-int/2addr p3, v0

    .line 34
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, p3

    .line 46
    invoke-static {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    .line 24
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int/2addr p3, p1

    .line 33
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v1, v3, :cond_1

    .line 42
    .line 43
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v1, v3, :cond_1

    .line 48
    .line 49
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, p3

    .line 58
    invoke-static {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ne v1, v3, :cond_5

    .line 67
    .line 68
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ne v1, v3, :cond_5

    .line 73
    .line 74
    const/16 v1, 0xd

    .line 75
    .line 76
    aget v1, v0, v1

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    const/16 v1, 0xe

    .line 81
    .line 82
    aget v1, v0, v1

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 92
    .line 93
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return v2

    .line 101
    :cond_5
    :goto_2
    const/16 p1, 0x15

    .line 102
    .line 103
    aget p1, v0, p1

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    const/4 v2, 0x0

    .line 109
    :goto_3
    return v2
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/high16 v3, -0x80000000

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v3, :cond_0

    .line 19
    .line 20
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sub-int/2addr p3, p1

    .line 29
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq v1, v3, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne v1, v3, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr p1, p3

    .line 54
    invoke-static {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ne v1, v3, :cond_5

    .line 63
    .line 64
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ne v1, v3, :cond_5

    .line 69
    .line 70
    const/16 v1, 0xd

    .line 71
    .line 72
    aget v1, v0, v1

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    const/16 v1, 0xf

    .line 77
    .line 78
    aget v1, v0, v1

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 84
    .line 85
    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 86
    .line 87
    add-int/2addr p3, p4

    .line 88
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 89
    .line 90
    .line 91
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    add-int/2addr p1, p3

    .line 100
    invoke-static {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 105
    .line 106
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 111
    .line 112
    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 113
    .line 114
    add-int/2addr p3, p4

    .line 115
    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    add-int/2addr p1, p3

    .line 127
    invoke-static {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 128
    .line 129
    .line 130
    :goto_1
    return v2

    .line 131
    :cond_5
    :goto_2
    const/16 p1, 0xc

    .line 132
    .line 133
    aget p1, v0, p1

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    const/4 v2, 0x0

    .line 139
    :goto_3
    return v2
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 17
    .line 18
    const/16 v0, 0x12

    .line 19
    .line 20
    if-lt p1, v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_1
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 25
    .line 26
    return-void
.end method

.method private sortChildren()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-eq v1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    new-array v1, v0, [Landroid/view/View;

    .line 13
    .line 14
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    if-eq v1, v0, :cond_3

    .line 22
    .line 23
    :cond_2
    new-array v1, v0, [Landroid/view/View;

    .line 24
    .line 25
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 26
    .line 27
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 46
    .line 47
    sget-object v2, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 53
    .line 54
    sget-object v2, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return p1
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/TreeSet;

    .line 6
    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_3
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 78
    .line 79
    .line 80
    return v1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

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
    sget-boolean v0, Landroid/view/View;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8
    :cond_1
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

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

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

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    :goto_0
    if-ge p2, p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    const/16 p5, 0x8

    .line 17
    .line 18
    if-eq p4, p5, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    .line 26
    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 27
    .line 28
    .line 29
    move-result p5

    .line 30
    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 9
    .line 10
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, -0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v4, v6

    .line 34
    :goto_0
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v5, v6

    .line 38
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    .line 39
    .line 40
    if-ne v1, v7, :cond_3

    .line 41
    .line 42
    move v8, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move v8, v2

    .line 45
    :goto_2
    if-ne v3, v7, :cond_4

    .line 46
    .line 47
    move v9, v5

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    move v9, v2

    .line 50
    :goto_3
    iget v10, v0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 51
    .line 52
    const v11, 0x800007

    .line 53
    .line 54
    .line 55
    and-int/2addr v11, v10

    .line 56
    const v12, 0x800003

    .line 57
    .line 58
    .line 59
    if-eq v11, v12, :cond_5

    .line 60
    .line 61
    if-eqz v11, :cond_5

    .line 62
    .line 63
    const/4 v11, 0x1

    .line 64
    goto :goto_4

    .line 65
    :cond_5
    move v11, v2

    .line 66
    :goto_4
    and-int/lit8 v10, v10, 0x70

    .line 67
    .line 68
    const/16 v12, 0x30

    .line 69
    .line 70
    if-eq v10, v12, :cond_6

    .line 71
    .line 72
    if-eqz v10, :cond_6

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    goto :goto_5

    .line 76
    :cond_6
    move v10, v2

    .line 77
    :goto_5
    if-nez v11, :cond_7

    .line 78
    .line 79
    if-eqz v10, :cond_8

    .line 80
    .line 81
    :cond_7
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 82
    .line 83
    if-eq v14, v6, :cond_8

    .line 84
    .line 85
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    goto :goto_6

    .line 90
    :cond_8
    const/4 v14, 0x0

    .line 91
    :goto_6
    if-eq v1, v7, :cond_9

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    goto :goto_7

    .line 95
    :cond_9
    move v1, v2

    .line 96
    :goto_7
    if-eq v3, v7, :cond_a

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    goto :goto_8

    .line 100
    :cond_a
    move v3, v2

    .line 101
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-eqz v15, :cond_b

    .line 110
    .line 111
    if-ne v4, v6, :cond_b

    .line 112
    .line 113
    const/high16 v4, 0x10000

    .line 114
    .line 115
    :cond_b
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 116
    .line 117
    array-length v15, v6

    .line 118
    move/from16 v16, v2

    .line 119
    .line 120
    :goto_9
    const/16 v12, 0x8

    .line 121
    .line 122
    if-ge v2, v15, :cond_d

    .line 123
    .line 124
    aget-object v13, v6, v2

    .line 125
    .line 126
    move-object/from16 v19, v6

    .line 127
    .line 128
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eq v6, v12, :cond_c

    .line 133
    .line 134
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-direct {v0, v6, v4, v12}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v13, v6, v4, v5}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v13, v6, v4, v1}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_c

    .line 155
    .line 156
    const/16 v16, 0x1

    .line 157
    .line 158
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    move-object/from16 v6, v19

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_d
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 164
    .line 165
    array-length v6, v2

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 175
    .line 176
    const/high16 v15, -0x80000000

    .line 177
    .line 178
    const v19, 0x7fffffff

    .line 179
    .line 180
    .line 181
    move/from16 v21, v15

    .line 182
    .line 183
    move/from16 v22, v19

    .line 184
    .line 185
    move/from16 v23, v22

    .line 186
    .line 187
    const/4 v12, 0x0

    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    :goto_a
    if-ge v12, v6, :cond_1a

    .line 191
    .line 192
    move/from16 v20, v7

    .line 193
    .line 194
    aget-object v7, v2, v12

    .line 195
    .line 196
    move-object/from16 v24, v2

    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v25, v6

    .line 203
    .line 204
    const/16 v6, 0x8

    .line 205
    .line 206
    if-eq v2, v6, :cond_18

    .line 207
    .line 208
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    .line 214
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-direct {v0, v2, v5, v6}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, v7, v2, v4, v5}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v7, v2, v5, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eqz v6, :cond_e

    .line 229
    .line 230
    const/16 v19, 0x1

    .line 231
    .line 232
    :cond_e
    const/16 v6, 0x13

    .line 233
    .line 234
    if-eqz v1, :cond_12

    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 237
    .line 238
    .line 239
    move-result v26

    .line 240
    if-eqz v26, :cond_10

    .line 241
    .line 242
    if-ge v13, v6, :cond_f

    .line 243
    .line 244
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 245
    .line 246
    .line 247
    move-result v26

    .line 248
    sub-int v6, v4, v26

    .line 249
    .line 250
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    goto :goto_b

    .line 255
    :cond_f
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    sub-int v6, v4, v6

    .line 260
    .line 261
    move/from16 v26, v5

    .line 262
    .line 263
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 264
    .line 265
    add-int/2addr v6, v5

    .line 266
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    goto :goto_c

    .line 271
    :cond_10
    move/from16 v26, v5

    .line 272
    .line 273
    move v5, v6

    .line 274
    if-ge v13, v5, :cond_11

    .line 275
    .line 276
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    goto :goto_c

    .line 285
    :cond_11
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 290
    .line 291
    add-int/2addr v6, v5

    .line 292
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    goto :goto_c

    .line 297
    :cond_12
    :goto_b
    move/from16 v26, v5

    .line 298
    .line 299
    :goto_c
    if-eqz v3, :cond_14

    .line 300
    .line 301
    const/16 v5, 0x13

    .line 302
    .line 303
    if-ge v13, v5, :cond_13

    .line 304
    .line 305
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    goto :goto_d

    .line 314
    :cond_13
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 319
    .line 320
    add-int/2addr v5, v6

    .line 321
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    :cond_14
    :goto_d
    if-ne v7, v14, :cond_15

    .line 326
    .line 327
    if-eqz v10, :cond_16

    .line 328
    .line 329
    :cond_15
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 334
    .line 335
    sub-int/2addr v5, v6

    .line 336
    move/from16 v6, v23

    .line 337
    .line 338
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 339
    .line 340
    .line 341
    move-result v23

    .line 342
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 347
    .line 348
    sub-int/2addr v5, v6

    .line 349
    move/from16 v6, v22

    .line 350
    .line 351
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 352
    .line 353
    .line 354
    move-result v22

    .line 355
    :cond_16
    if-ne v7, v14, :cond_17

    .line 356
    .line 357
    if-eqz v11, :cond_19

    .line 358
    .line 359
    :cond_17
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 364
    .line 365
    add-int/2addr v5, v6

    .line 366
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 375
    .line 376
    add-int/2addr v6, v2

    .line 377
    move/from16 v2, v21

    .line 378
    .line 379
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    move/from16 v21, v2

    .line 384
    .line 385
    move v15, v5

    .line 386
    goto :goto_e

    .line 387
    :cond_18
    move/from16 v26, v5

    .line 388
    .line 389
    move/from16 v2, v21

    .line 390
    .line 391
    move/from16 v5, v22

    .line 392
    .line 393
    move/from16 v6, v23

    .line 394
    .line 395
    :cond_19
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 396
    .line 397
    move/from16 v7, v20

    .line 398
    .line 399
    move-object/from16 v2, v24

    .line 400
    .line 401
    move/from16 v6, v25

    .line 402
    .line 403
    move/from16 v5, v26

    .line 404
    .line 405
    goto/16 :goto_a

    .line 406
    .line 407
    :cond_1a
    move-object/from16 v24, v2

    .line 408
    .line 409
    move/from16 v25, v6

    .line 410
    .line 411
    move/from16 v20, v7

    .line 412
    .line 413
    move/from16 v2, v21

    .line 414
    .line 415
    move/from16 v5, v22

    .line 416
    .line 417
    move/from16 v6, v23

    .line 418
    .line 419
    move/from16 v21, v4

    .line 420
    .line 421
    move/from16 v13, v25

    .line 422
    .line 423
    const/4 v4, 0x0

    .line 424
    const/4 v7, 0x0

    .line 425
    const/4 v12, 0x0

    .line 426
    :goto_f
    if-ge v4, v13, :cond_1d

    .line 427
    .line 428
    aget-object v17, v24, v4

    .line 429
    .line 430
    move-object/from16 v22, v14

    .line 431
    .line 432
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    .line 433
    .line 434
    .line 435
    move-result v14

    .line 436
    move/from16 v18, v2

    .line 437
    .line 438
    const/16 v2, 0x8

    .line 439
    .line 440
    if-eq v14, v2, :cond_1c

    .line 441
    .line 442
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 447
    .line 448
    if-eqz v12, :cond_1b

    .line 449
    .line 450
    if-eqz v7, :cond_1b

    .line 451
    .line 452
    invoke-direct {v0, v2, v7}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 453
    .line 454
    .line 455
    move-result v14

    .line 456
    if-gez v14, :cond_1c

    .line 457
    .line 458
    :cond_1b
    move-object v7, v2

    .line 459
    move-object/from16 v12, v17

    .line 460
    .line 461
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 462
    .line 463
    move/from16 v2, v18

    .line 464
    .line 465
    move-object/from16 v14, v22

    .line 466
    .line 467
    goto :goto_f

    .line 468
    :cond_1d
    move/from16 v18, v2

    .line 469
    .line 470
    move-object/from16 v22, v14

    .line 471
    .line 472
    iput-object v12, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 473
    .line 474
    const/16 v2, 0xd

    .line 475
    .line 476
    if-eqz v1, :cond_23

    .line 477
    .line 478
    iget v1, v0, Landroid/view/View;->mPaddingRight:I

    .line 479
    .line 480
    add-int/2addr v8, v1

    .line 481
    iget-object v1, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 482
    .line 483
    if-eqz v1, :cond_1e

    .line 484
    .line 485
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 486
    .line 487
    if-ltz v1, :cond_1e

    .line 488
    .line 489
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    move/from16 v4, p1

    .line 502
    .line 503
    invoke-static {v1, v4}, Landroid/view/View;->resolveSize(II)I

    .line 504
    .line 505
    .line 506
    move-result v8

    .line 507
    if-eqz v16, :cond_23

    .line 508
    .line 509
    const/4 v1, 0x0

    .line 510
    :goto_10
    if-ge v1, v13, :cond_23

    .line 511
    .line 512
    aget-object v4, v24, v1

    .line 513
    .line 514
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    const/16 v12, 0x8

    .line 519
    .line 520
    if-eq v7, v12, :cond_21

    .line 521
    .line 522
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 527
    .line 528
    move/from16 v12, v20

    .line 529
    .line 530
    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    .line 531
    .line 532
    .line 533
    move-result-object v14

    .line 534
    aget v16, v14, v2

    .line 535
    .line 536
    if-nez v16, :cond_20

    .line 537
    .line 538
    const/16 v16, 0xe

    .line 539
    .line 540
    aget v16, v14, v16

    .line 541
    .line 542
    if-eqz v16, :cond_1f

    .line 543
    .line 544
    goto :goto_11

    .line 545
    :cond_1f
    const/16 v16, 0xb

    .line 546
    .line 547
    aget v14, v14, v16

    .line 548
    .line 549
    if-eqz v14, :cond_22

    .line 550
    .line 551
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    iget v14, v0, Landroid/view/View;->mPaddingRight:I

    .line 556
    .line 557
    sub-int v14, v8, v14

    .line 558
    .line 559
    sub-int/2addr v14, v4

    .line 560
    invoke-static {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 561
    .line 562
    .line 563
    invoke-static {v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 564
    .line 565
    .line 566
    move-result v14

    .line 567
    add-int/2addr v14, v4

    .line 568
    invoke-static {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 569
    .line 570
    .line 571
    goto :goto_12

    .line 572
    :cond_20
    :goto_11
    invoke-static {v4, v7, v8}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 573
    .line 574
    .line 575
    goto :goto_12

    .line 576
    :cond_21
    move/from16 v12, v20

    .line 577
    .line 578
    :cond_22
    :goto_12
    add-int/lit8 v1, v1, 0x1

    .line 579
    .line 580
    move/from16 v20, v12

    .line 581
    .line 582
    goto :goto_10

    .line 583
    :cond_23
    move/from16 v12, v20

    .line 584
    .line 585
    if-eqz v3, :cond_28

    .line 586
    .line 587
    iget v1, v0, Landroid/view/View;->mPaddingBottom:I

    .line 588
    .line 589
    add-int/2addr v9, v1

    .line 590
    iget-object v1, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 591
    .line 592
    if-eqz v1, :cond_24

    .line 593
    .line 594
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 595
    .line 596
    if-ltz v1, :cond_24

    .line 597
    .line 598
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 599
    .line 600
    .line 601
    move-result v9

    .line 602
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    move/from16 v3, p2

    .line 611
    .line 612
    invoke-static {v1, v3}, Landroid/view/View;->resolveSize(II)I

    .line 613
    .line 614
    .line 615
    move-result v9

    .line 616
    if-eqz v19, :cond_28

    .line 617
    .line 618
    const/4 v1, 0x0

    .line 619
    :goto_13
    if-ge v1, v13, :cond_28

    .line 620
    .line 621
    aget-object v3, v24, v1

    .line 622
    .line 623
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    const/16 v7, 0x8

    .line 628
    .line 629
    if-eq v4, v7, :cond_27

    .line 630
    .line 631
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 636
    .line 637
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    aget v14, v7, v2

    .line 642
    .line 643
    if-nez v14, :cond_26

    .line 644
    .line 645
    const/16 v14, 0xf

    .line 646
    .line 647
    aget v14, v7, v14

    .line 648
    .line 649
    if-eqz v14, :cond_25

    .line 650
    .line 651
    goto :goto_14

    .line 652
    :cond_25
    const/16 v14, 0xc

    .line 653
    .line 654
    aget v7, v7, v14

    .line 655
    .line 656
    if-eqz v7, :cond_27

    .line 657
    .line 658
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    iget v7, v0, Landroid/view/View;->mPaddingBottom:I

    .line 663
    .line 664
    sub-int v7, v9, v7

    .line 665
    .line 666
    sub-int/2addr v7, v3

    .line 667
    invoke-static {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 668
    .line 669
    .line 670
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    add-int/2addr v7, v3

    .line 675
    invoke-static {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 676
    .line 677
    .line 678
    goto :goto_15

    .line 679
    :cond_26
    :goto_14
    invoke-static {v3, v4, v9}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 680
    .line 681
    .line 682
    :cond_27
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 683
    .line 684
    goto :goto_13

    .line 685
    :cond_28
    if-nez v11, :cond_29

    .line 686
    .line 687
    if-eqz v10, :cond_2d

    .line 688
    .line 689
    :cond_29
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 690
    .line 691
    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    .line 692
    .line 693
    iget v3, v0, Landroid/view/View;->mPaddingTop:I

    .line 694
    .line 695
    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    .line 696
    .line 697
    sub-int v4, v8, v4

    .line 698
    .line 699
    iget v7, v0, Landroid/view/View;->mPaddingBottom:I

    .line 700
    .line 701
    sub-int v7, v9, v7

    .line 702
    .line 703
    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 704
    .line 705
    .line 706
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 707
    .line 708
    iget v3, v0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 709
    .line 710
    sub-int v16, v15, v6

    .line 711
    .line 712
    sub-int v17, v18, v5

    .line 713
    .line 714
    move v15, v3

    .line 715
    move-object/from16 v18, v1

    .line 716
    .line 717
    move-object/from16 v19, v2

    .line 718
    .line 719
    move/from16 v20, v12

    .line 720
    .line 721
    invoke-static/range {v15 .. v20}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 722
    .line 723
    .line 724
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 725
    .line 726
    sub-int/2addr v1, v6

    .line 727
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 728
    .line 729
    sub-int/2addr v2, v5

    .line 730
    if-nez v1, :cond_2a

    .line 731
    .line 732
    if-eqz v2, :cond_2d

    .line 733
    .line 734
    :cond_2a
    const/4 v3, 0x0

    .line 735
    :goto_16
    if-ge v3, v13, :cond_2d

    .line 736
    .line 737
    aget-object v4, v24, v3

    .line 738
    .line 739
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    const/16 v6, 0x8

    .line 744
    .line 745
    move-object/from16 v14, v22

    .line 746
    .line 747
    if-eq v5, v6, :cond_2c

    .line 748
    .line 749
    if-eq v4, v14, :cond_2c

    .line 750
    .line 751
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 756
    .line 757
    if-eqz v11, :cond_2b

    .line 758
    .line 759
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 760
    .line 761
    .line 762
    move-result v5

    .line 763
    add-int/2addr v5, v1

    .line 764
    invoke-static {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 765
    .line 766
    .line 767
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    add-int/2addr v5, v1

    .line 772
    invoke-static {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 773
    .line 774
    .line 775
    :cond_2b
    if-eqz v10, :cond_2c

    .line 776
    .line 777
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 778
    .line 779
    .line 780
    move-result v5

    .line 781
    add-int/2addr v5, v2

    .line 782
    invoke-static {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 783
    .line 784
    .line 785
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 786
    .line 787
    .line 788
    move-result v5

    .line 789
    add-int/2addr v5, v2

    .line 790
    invoke-static {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 791
    .line 792
    .line 793
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 794
    .line 795
    move-object/from16 v22, v14

    .line 796
    .line 797
    goto :goto_16

    .line 798
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    if-eqz v1, :cond_2f

    .line 803
    .line 804
    sub-int v4, v21, v8

    .line 805
    .line 806
    const/4 v2, 0x0

    .line 807
    :goto_17
    if-ge v2, v13, :cond_2f

    .line 808
    .line 809
    aget-object v1, v24, v2

    .line 810
    .line 811
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 812
    .line 813
    .line 814
    move-result v3

    .line 815
    const/16 v5, 0x8

    .line 816
    .line 817
    if-eq v3, v5, :cond_2e

    .line 818
    .line 819
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 824
    .line 825
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 826
    .line 827
    .line 828
    move-result v3

    .line 829
    sub-int/2addr v3, v4

    .line 830
    invoke-static {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 831
    .line 832
    .line 833
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    sub-int/2addr v3, v4

    .line 838
    invoke-static {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 839
    .line 840
    .line 841
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 842
    .line 843
    goto :goto_17

    .line 844
    :cond_2f
    invoke-virtual {v0, v8, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 845
    .line 846
    .line 847
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 6
    .line 7
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    const v0, 0x800007

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x800003

    .line 12
    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    :cond_0
    and-int/lit8 v0, p1, 0x70

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x30

    .line 20
    .line 21
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    const v0, 0x800007

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const v0, -0x800008

    .line 11
    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 2
    .line 3
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x70

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x71

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
