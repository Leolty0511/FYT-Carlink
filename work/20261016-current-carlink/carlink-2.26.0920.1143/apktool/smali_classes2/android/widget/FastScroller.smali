.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 7
    .line 8
    new-instance v0, Landroid/widget/FastScroller$3;

    .line 9
    .line 10
    const-string v1, "left"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 16
    .line 17
    new-instance v0, Landroid/widget/FastScroller$4;

    .line 18
    .line 19
    const-string/jumbo v1, "top"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 26
    .line 27
    new-instance v0, Landroid/widget/FastScroller$5;

    .line 28
    .line 29
    const-string v1, "right"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 35
    .line 36
    new-instance v0, Landroid/widget/FastScroller$6;

    .line 37
    .line 38
    const-string v1, "bottom"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 32
    .line 33
    iput v0, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 34
    .line 35
    const-wide/16 v0, -0x1

    .line 36
    .line 37
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 38
    .line 39
    new-instance v0, Landroid/widget/FastScroller$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 45
    .line 46
    new-instance v0, Landroid/widget/FastScroller$2;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 52
    .line 53
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 89
    .line 90
    iput v1, p0, Landroid/widget/FastScroller;->mState:I

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 97
    .line 98
    const/16 v3, 0xb

    .line 99
    .line 100
    if-lt v2, v3, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 104
    :goto_0
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 105
    .line 106
    new-instance v1, Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 112
    .line 113
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Landroid/view/View;

    .line 129
    .line 130
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iput-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 134
    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iput-object v4, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const v6, 0x1050084

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    iput v5, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 163
    .line 164
    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    iput-object p2, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 172
    .line 173
    invoke-virtual {p2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 189
    .line 190
    .line 191
    iget p2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 192
    .line 193
    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 194
    .line 195
    invoke-direct {p0, p2, v0}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getVerticalScrollbarPosition()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/FastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/FastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p0
.end method

.method public static synthetic access$102(Landroid/widget/FastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 7

    .line 1
    sget-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput v3, v2, v4

    .line 10
    .line 11
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v2, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 16
    .line 17
    new-array v3, v1, [I

    .line 18
    .line 19
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    aput v5, v3, v4

    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 28
    .line 29
    new-array v5, v1, [I

    .line 30
    .line 31
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    aput v6, v5, v4

    .line 34
    .line 35
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget-object v5, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    .line 40
    .line 41
    new-array v6, v1, [I

    .line 42
    .line 43
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    aput p1, v6, v4

    .line 46
    .line 47
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v5, 0x4

    .line 52
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 53
    .line 54
    aput-object v0, v5, v4

    .line 55
    .line 56
    aput-object v2, v5, v1

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    aput-object v3, v5, v0

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    aput-object p1, v5, v0

    .line 63
    .line 64
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 6
    .line 7
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    sub-int/2addr v0, p2

    .line 21
    int-to-float p2, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private beginDrag()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private cancelFling()V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x11

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 10
    .line 11
    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_f

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    goto/16 :goto_8

    .line 18
    .line 19
    :cond_2
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v4, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    array-length v4, v4

    .line 28
    if-lez v4, :cond_3

    .line 29
    .line 30
    move v4, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    move v4, v2

    .line 33
    :goto_0
    if-eqz v4, :cond_d

    .line 34
    .line 35
    iget-boolean v4, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 36
    .line 37
    if-nez v4, :cond_4

    .line 38
    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_4
    iget v4, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 42
    .line 43
    sub-int/2addr p1, v4

    .line 44
    if-gez p1, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    sub-int/2addr p3, v4

    .line 48
    iget-object v4, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 49
    .line 50
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_6

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_6
    iget-object v4, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    sub-int/2addr v4, v5

    .line 74
    int-to-float v4, v4

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    int-to-float v2, v2

    .line 80
    div-float/2addr v4, v2

    .line 81
    goto :goto_2

    .line 82
    :cond_7
    :goto_1
    move v4, v1

    .line 83
    :goto_2
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    iget-object v6, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 92
    .line 93
    array-length v6, v6

    .line 94
    add-int/lit8 v7, v6, -0x1

    .line 95
    .line 96
    if-ge v2, v7, :cond_9

    .line 97
    .line 98
    add-int/lit8 v7, v2, 0x1

    .line 99
    .line 100
    if-ge v7, v6, :cond_8

    .line 101
    .line 102
    invoke-interface {v0, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    goto :goto_3

    .line 107
    :cond_8
    add-int/lit8 v0, p3, -0x1

    .line 108
    .line 109
    :goto_3
    sub-int/2addr v0, v5

    .line 110
    goto :goto_4

    .line 111
    :cond_9
    sub-int v0, p3, v5

    .line 112
    .line 113
    :goto_4
    if-nez v0, :cond_a

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_a
    int-to-float v1, p1

    .line 117
    add-float/2addr v1, v4

    .line 118
    int-to-float v4, v5

    .line 119
    sub-float/2addr v1, v4

    .line 120
    int-to-float v0, v0

    .line 121
    div-float/2addr v1, v0

    .line 122
    :goto_5
    int-to-float v0, v2

    .line 123
    add-float/2addr v0, v1

    .line 124
    int-to-float v1, v6

    .line 125
    div-float/2addr v0, v1

    .line 126
    if-lez p1, :cond_c

    .line 127
    .line 128
    add-int/2addr p1, p2

    .line 129
    if-ne p1, p3, :cond_c

    .line 130
    .line 131
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 132
    .line 133
    sub-int/2addr p2, v3

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    iget-object p3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 145
    .line 146
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    if-eqz p3, :cond_b

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    sub-int/2addr v1, p2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    sub-int/2addr v1, p1

    .line 168
    goto :goto_6

    .line 169
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 170
    .line 171
    .line 172
    move-result p3

    .line 173
    add-int/2addr p3, p2

    .line 174
    iget-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    sub-int v1, p2, p1

    .line 185
    .line 186
    :goto_6
    if-lez v1, :cond_c

    .line 187
    .line 188
    if-lez p3, :cond_c

    .line 189
    .line 190
    const/high16 p1, 0x3f800000    # 1.0f

    .line 191
    .line 192
    sub-float/2addr p1, v0

    .line 193
    int-to-float p2, v1

    .line 194
    int-to-float p3, p3

    .line 195
    div-float/2addr p2, p3

    .line 196
    mul-float/2addr p2, p1

    .line 197
    add-float/2addr v0, p2

    .line 198
    :cond_c
    return v0

    .line 199
    :cond_d
    :goto_7
    if-ne p2, p3, :cond_e

    .line 200
    .line 201
    return v1

    .line 202
    :cond_e
    int-to-float p1, p1

    .line 203
    sub-int/2addr p3, p2

    .line 204
    int-to-float p2, p3

    .line 205
    div-float/2addr p1, p2

    .line 206
    return p1

    .line 207
    :cond_f
    :goto_8
    return v1
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v2, v0, v1

    .line 5
    .line 6
    if-gtz v2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 10
    .line 11
    sub-float/2addr p1, v2

    .line 12
    div-float/2addr p1, v0

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 3
    .line 4
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v0, v1

    .line 31
    check-cast v0, Landroid/widget/ExpandableListConnector;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    check-cast v0, Landroid/widget/SectionIndexer;

    .line 42
    .line 43
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 44
    .line 45
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 46
    .line 47
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 59
    .line 60
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 61
    .line 62
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 63
    .line 64
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 72
    .line 73
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p2

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ltz v1, :cond_1

    .line 11
    .line 12
    aget-object v4, p2, v1

    .line 13
    .line 14
    new-array v5, v2, [F

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    aput p1, v5, v6

    .line 18
    .line 19
    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPointInsideX(F)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    add-float/2addr v1, v0

    .line 15
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    add-float/2addr v2, v0

    .line 23
    iget v0, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    sub-float/2addr v2, v1

    .line 27
    sub-float/2addr v0, v2

    .line 28
    const/4 v1, 0x0

    .line 29
    cmpl-float v2, v0, v1

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v1

    .line 35
    :goto_0
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    sub-float/2addr v1, v0

    .line 49
    cmpl-float p1, p1, v1

    .line 50
    .line 51
    if-ltz p1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v2, v3

    .line 55
    :goto_1
    return v2

    .line 56
    :cond_2
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    add-float/2addr v1, v0

    .line 64
    cmpg-float p1, p1, v1

    .line 65
    .line 66
    if-gtz p1, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v2, v3

    .line 70
    :goto_2
    return v2
.end method

.method private isPointInsideY(F)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    add-float/2addr v1, v0

    .line 15
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    add-float/2addr v2, v0

    .line 23
    iget v0, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    sub-float v3, v2, v1

    .line 27
    .line 28
    sub-float/2addr v0, v3

    .line 29
    const/4 v3, 0x0

    .line 30
    cmpl-float v4, v0, v3

    .line 31
    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    const/high16 v3, 0x40000000    # 2.0f

    .line 35
    .line 36
    div-float v3, v0, v3

    .line 37
    .line 38
    :cond_0
    sub-float/2addr v1, v3

    .line 39
    cmpl-float v0, p1, v1

    .line 40
    .line 41
    if-ltz v0, :cond_1

    .line 42
    .line 43
    add-float/2addr v2, v3

    .line 44
    cmpg-float p1, p1, v2

    .line 45
    .line 46
    if-gtz p1, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    :goto_0
    return p1
.end method

.method private layoutThumb()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private layoutTrack()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/high16 v6, -0x80000000

    .line 25
    .line 26
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v3, v4, :cond_0

    .line 41
    .line 42
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    div-int/lit8 v3, v3, 0x2

    .line 52
    .line 53
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    add-int/2addr v4, v3

    .line 56
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    sub-int/2addr v2, v3

    .line 59
    move v3, v4

    .line 60
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sub-int/2addr v1, v4

    .line 73
    div-int/lit8 v1, v1, 0x2

    .line 74
    .line 75
    add-int/2addr v1, v5

    .line 76
    add-int/2addr v4, v1

    .line 77
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move p2, v0

    .line 5
    move v1, p2

    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    :goto_0
    iget-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    sub-int v1, v4, v1

    .line 29
    .line 30
    sub-int/2addr v1, p2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/high16 v1, -0x80000000

    .line 36
    .line 37
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    div-int/lit8 p2, p2, 0xa

    .line 57
    .line 58
    add-int/2addr p2, v2

    .line 59
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    add-int/2addr p2, v1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    add-int/2addr p1, p2

    .line 67
    sub-int/2addr v4, v0

    .line 68
    div-int/lit8 v4, v4, 0x2

    .line 69
    .line 70
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 71
    .line 72
    add-int/2addr v4, v1

    .line 73
    add-int/2addr v0, v4

    .line 74
    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    move p3, v0

    .line 5
    move v1, p3

    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    :goto_0
    iget-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 24
    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sub-int/2addr v4, v5

    .line 37
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    sub-int/2addr v4, v1

    .line 46
    sub-int/2addr v4, p3

    .line 47
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/high16 v6, -0x80000000

    .line 52
    .line 53
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v6, v0}, Landroid/view/View;->measure(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-boolean v4, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    if-nez p2, :cond_3

    .line 77
    .line 78
    iget p2, v3, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    :goto_2
    sub-int/2addr p2, p3

    .line 86
    sub-int p3, p2, v0

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    if-nez p2, :cond_5

    .line 90
    .line 91
    iget p2, v3, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :goto_3
    add-int p3, p2, v1

    .line 99
    .line 100
    add-int p2, p3, v0

    .line 101
    .line 102
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    add-int/2addr p1, v2

    .line 107
    invoke-virtual {p4, p3, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x5dc

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private scrollTo(F)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move v3, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v3, v2

    .line 17
    :goto_0
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_b

    .line 19
    .line 20
    if-le v3, v4, :cond_b

    .line 21
    .line 22
    int-to-float v2, v3

    .line 23
    mul-float v5, p1, v2

    .line 24
    .line 25
    float-to-int v5, v5

    .line 26
    add-int/lit8 v6, v3, -0x1

    .line 27
    .line 28
    invoke-static {v5, v0, v6}, Landroid/util/MathUtils;->constrain(III)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v7, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 33
    .line 34
    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    add-int/lit8 v8, v5, 0x1

    .line 39
    .line 40
    if-ge v5, v6, :cond_1

    .line 41
    .line 42
    iget-object v6, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 43
    .line 44
    invoke-interface {v6, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v6, v1

    .line 50
    :goto_1
    move v9, v5

    .line 51
    if-ne v6, v7, :cond_5

    .line 52
    .line 53
    move v10, v7

    .line 54
    :cond_2
    if-lez v9, :cond_4

    .line 55
    .line 56
    add-int/lit8 v9, v9, -0x1

    .line 57
    .line 58
    iget-object v10, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 59
    .line 60
    invoke-interface {v10, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eq v10, v7, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-nez v9, :cond_2

    .line 68
    .line 69
    move v9, v5

    .line 70
    move v7, v10

    .line 71
    move v10, v0

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move v9, v5

    .line 74
    :goto_2
    move v7, v10

    .line 75
    :cond_5
    move v10, v9

    .line 76
    :goto_3
    add-int/lit8 v11, v8, 0x1

    .line 77
    .line 78
    :goto_4
    if-ge v11, v3, :cond_6

    .line 79
    .line 80
    iget-object v12, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 81
    .line 82
    invoke-interface {v12, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-ne v12, v6, :cond_6

    .line 87
    .line 88
    add-int/lit8 v11, v11, 0x1

    .line 89
    .line 90
    add-int/lit8 v8, v8, 0x1

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    int-to-float v3, v9

    .line 94
    div-float/2addr v3, v2

    .line 95
    int-to-float v8, v8

    .line 96
    div-float/2addr v8, v2

    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    const/high16 v2, 0x3e000000    # 0.125f

    .line 104
    .line 105
    int-to-float v11, v1

    .line 106
    div-float/2addr v2, v11

    .line 107
    :goto_5
    if-ne v9, v5, :cond_8

    .line 108
    .line 109
    sub-float v5, p1, v3

    .line 110
    .line 111
    cmpg-float v2, v5, v2

    .line 112
    .line 113
    if-gez v2, :cond_8

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_8
    sub-int/2addr v6, v7

    .line 117
    int-to-float v2, v6

    .line 118
    sub-float/2addr p1, v3

    .line 119
    mul-float/2addr p1, v2

    .line 120
    sub-float/2addr v8, v3

    .line 121
    div-float/2addr p1, v8

    .line 122
    float-to-int p1, p1

    .line 123
    add-int/2addr v7, p1

    .line 124
    :goto_6
    sub-int/2addr v1, v4

    .line 125
    invoke-static {v7, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 130
    .line 131
    instance-of v2, v1, Landroid/widget/ExpandableListView;

    .line 132
    .line 133
    if-eqz v2, :cond_9

    .line 134
    .line 135
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 136
    .line 137
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 138
    .line 139
    add-int/2addr p1, v2

    .line 140
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_9
    instance-of v2, v1, Landroid/widget/ListView;

    .line 153
    .line 154
    if-eqz v2, :cond_a

    .line 155
    .line 156
    check-cast v1, Landroid/widget/ListView;

    .line 157
    .line 158
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 159
    .line 160
    add-int/2addr p1, v2

    .line 161
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 162
    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_a
    iget v0, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 166
    .line 167
    add-int/2addr p1, v0

    .line 168
    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_b
    int-to-float v2, v1

    .line 173
    mul-float/2addr p1, v2

    .line 174
    float-to-int p1, p1

    .line 175
    sub-int/2addr v1, v4

    .line 176
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 181
    .line 182
    instance-of v2, v1, Landroid/widget/ExpandableListView;

    .line 183
    .line 184
    if-eqz v2, :cond_c

    .line 185
    .line 186
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 187
    .line 188
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 189
    .line 190
    add-int/2addr p1, v2

    .line 191
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_c
    instance-of v2, v1, Landroid/widget/ListView;

    .line 204
    .line 205
    if-eqz v2, :cond_d

    .line 206
    .line 207
    check-cast v1, Landroid/widget/ListView;

    .line 208
    .line 209
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 210
    .line 211
    add-int/2addr p1, v2

    .line 212
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_d
    iget v0, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 217
    .line 218
    add-int/2addr p1, v0

    .line 219
    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 220
    .line 221
    .line 222
    :goto_7
    const/4 v10, -0x1

    .line 223
    :goto_8
    iget p1, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 224
    .line 225
    if-eq p1, v10, :cond_f

    .line 226
    .line 227
    iput v10, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 228
    .line 229
    invoke-direct {p0, v10}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 234
    .line 235
    if-nez v0, :cond_e

    .line 236
    .line 237
    if-eqz p1, :cond_e

    .line 238
    .line 239
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    .line 240
    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_e
    if-eqz v0, :cond_f

    .line 244
    .line 245
    if-nez p1, :cond_f

    .line 246
    .line 247
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 248
    .line 249
    .line 250
    :cond_f
    :goto_9
    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move p1, v1

    .line 16
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    if-eqz p1, :cond_5

    .line 22
    .line 23
    if-eq p1, v1, :cond_4

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 30
    .line 31
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 53
    .line 54
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private setThumbPos(F)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 5
    .line 6
    add-float/2addr p1, v0

    .line 7
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v1, v2

    .line 17
    sub-float v1, p1, v1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    div-float/2addr v1, v2

    .line 30
    iget v2, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sub-float/2addr p1, v1

    .line 41
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    add-float/2addr v3, v1

    .line 49
    int-to-float v2, v2

    .line 50
    sub-float/2addr v2, v1

    .line 51
    invoke-static {p1, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sub-float/2addr p1, v1

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 23
    .line 24
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v3, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v3, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 51
    .line 52
    .line 53
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-static {v3, v4}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-wide/16 v6, 0x32

    .line 60
    .line 61
    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-static {v2, v8}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iget-object v7, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    .line 78
    .line 79
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    sub-int/2addr v7, v8

    .line 86
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    sub-int/2addr v7, v8

    .line 95
    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    add-int/2addr v8, v7

    .line 104
    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    add-int/2addr v8, v7

    .line 113
    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 114
    .line 115
    invoke-static {v1, v0}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-wide/16 v7, 0x64

    .line 120
    .line 121
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 122
    .line 123
    .line 124
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 125
    .line 126
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v9, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 130
    .line 131
    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    sub-int/2addr v0, v6

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    sub-int/2addr v0, v1

    .line 156
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-le v1, v0, :cond_3

    .line 161
    .line 162
    int-to-float v0, v0

    .line 163
    int-to-float v6, v1

    .line 164
    div-float/2addr v0, v6

    .line 165
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 166
    .line 167
    .line 168
    invoke-static {v3, v4}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 181
    .line 182
    .line 183
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-le v0, v1, :cond_4

    .line 188
    .line 189
    int-to-float v1, v1

    .line 190
    int-to-float v0, v0

    .line 191
    div-float/2addr v1, v0

    .line 192
    invoke-static {v2, v1}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 201
    .line 202
    .line 203
    :cond_4
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    xor-int/lit8 p1, p1, 0x1

    .line 213
    .line 214
    return p1
.end method

.method private transitionToDragging()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    aput-object v2, v1, v4

    .line 22
    .line 23
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    aput-object v2, v1, v5

    .line 27
    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v1, 0x96

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 41
    .line 42
    new-array v7, v5, [Landroid/view/View;

    .line 43
    .line 44
    iget-object v8, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 45
    .line 46
    aput-object v8, v7, v3

    .line 47
    .line 48
    iget-object v8, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 49
    .line 50
    aput-object v8, v7, v4

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-static {v6, v8, v7}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 67
    .line 68
    new-array v5, v5, [Landroid/animation/Animator;

    .line 69
    .line 70
    aput-object v0, v5, v3

    .line 71
    .line 72
    aput-object v1, v5, v4

    .line 73
    .line 74
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    .line 81
    .line 82
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 83
    .line 84
    return-void
.end method

.method private transitionToHidden()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    new-array v1, v1, [Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    aput-object v2, v1, v4

    .line 22
    .line 23
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    aput-object v2, v1, v5

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    iget-object v6, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 30
    .line 31
    aput-object v6, v1, v2

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    iget-object v6, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 35
    .line 36
    aput-object v6, v1, v2

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2, v1}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-wide/16 v1, 0x12c

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    neg-int v6, v6

    .line 67
    :goto_0
    int-to-float v6, v6

    .line 68
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 69
    .line 70
    new-array v8, v5, [Landroid/view/View;

    .line 71
    .line 72
    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 73
    .line 74
    aput-object v9, v8, v3

    .line 75
    .line 76
    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 77
    .line 78
    aput-object v9, v8, v4

    .line 79
    .line 80
    invoke-static {v7, v6, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 89
    .line 90
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    new-array v5, v5, [Landroid/animation/Animator;

    .line 96
    .line 97
    aput-object v0, v5, v3

    .line 98
    .line 99
    aput-object v1, v5, v4

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 107
    .line 108
    .line 109
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 110
    .line 111
    return-void
.end method

.method private transitionToVisible()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v2, v1, [Landroid/view/View;

    .line 12
    .line 13
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 17
    .line 18
    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 22
    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-static {v0, v3, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-wide/16 v6, 0x96

    .line 30
    .line 31
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x3

    .line 36
    new-array v8, v3, [Landroid/view/View;

    .line 37
    .line 38
    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 39
    .line 40
    aput-object v9, v8, v4

    .line 41
    .line 42
    iget-object v9, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 43
    .line 44
    aput-object v9, v8, v5

    .line 45
    .line 46
    iget-object v9, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 47
    .line 48
    aput-object v9, v8, v1

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-static {v0, v9, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide/16 v10, 0x12c

    .line 56
    .line 57
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 62
    .line 63
    new-array v10, v1, [Landroid/view/View;

    .line 64
    .line 65
    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 66
    .line 67
    aput-object v11, v10, v4

    .line 68
    .line 69
    iget-object v11, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 70
    .line 71
    aput-object v11, v10, v5

    .line 72
    .line 73
    invoke-static {v8, v9, v10}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 82
    .line 83
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v7, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 87
    .line 88
    new-array v3, v3, [Landroid/animation/Animator;

    .line 89
    .line 90
    aput-object v2, v3, v4

    .line 91
    .line 92
    aput-object v0, v3, v5

    .line 93
    .line 94
    aput-object v6, v3, v1

    .line 95
    .line 96
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 102
    .line 103
    .line 104
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 105
    .line 106
    return-void
.end method

.method private updateAppearance()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 31
    .line 32
    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 38
    .line 39
    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :cond_1
    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    .line 57
    .line 58
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Landroid/widget/FastScroller;->mWidth:I

    .line 63
    .line 64
    iget v0, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 74
    .line 75
    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget v0, p0, Landroid/widget/FastScroller;->mTextSize:F

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    cmpl-float v2, v0, v2

    .line 100
    .line 101
    if-lez v2, :cond_4

    .line 102
    .line 103
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 109
    .line 110
    iget v2, p0, Landroid/widget/FastScroller;->mTextSize:F

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget v0, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 116
    .line 117
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 26
    .line 27
    const/high16 v3, 0x1000000

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    add-int/2addr v5, v4

    .line 40
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/2addr v5, v4

    .line 49
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    sub-int/2addr v4, v5

    .line 58
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-int/2addr v4, v0

    .line 67
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    if-ne v2, v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget v2, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    if-ne v2, v3, :cond_1

    .line 79
    .line 80
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    add-int/2addr v2, v0

    .line 83
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    sub-int/2addr v2, v0

    .line 89
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    div-int/2addr p2, p1

    .line 5
    const/4 p1, 0x4

    .line 6
    if-lt p2, p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    :goto_0
    iget-boolean p2, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 12
    .line 13
    if-eq p2, p1, :cond_1

    .line 14
    .line 15
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget v2, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v1, v2

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    add-float/2addr v2, v1

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    sub-float/2addr v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v2, v1

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    :goto_0
    iput v2, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 42
    .line 43
    sub-float/2addr v0, v2

    .line 44
    iput v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x7

    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-direct {p0, v0, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    if-eq v0, p1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    cmp-long v0, v2, v4

    .line 48
    .line 49
    if-ltz v0, :cond_6

    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    cmp-long v0, v2, v4

    .line 56
    .line 57
    if-gtz v0, :cond_6

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 63
    .line 64
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-direct {p0, v0, v3}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->isInScrollingContainer()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    return v2

    .line 103
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput p1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 108
    .line 109
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_0
    return v1
.end method

.method public onItemCountChanged(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_3

    .line 8
    .line 9
    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 10
    .line 11
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 12
    .line 13
    sub-int v0, p2, p1

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 1
    iget p2, p0, Landroid/widget/FastScroller;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-direct {p0, p2, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 p2, 0x3e8

    .line 30
    .line 31
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public onScroll(III)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sub-int v0, p3, p2

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    .line 22
    .line 23
    if-eq v1, v0, :cond_2

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 33
    .line 34
    iget p2, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 35
    .line 36
    if-eq p2, p1, :cond_3

    .line 37
    .line 38
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 39
    .line 40
    iget p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    if-eq v0, v2, :cond_5

    .line 20
    .line 21
    if-eq v0, v5, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    if-eq v0, p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_2
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 34
    .line 35
    cmp-long v0, v6, v3

    .line 36
    .line 37
    if-ltz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v3, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 44
    .line 45
    sub-float/2addr v0, v3

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    cmpl-float v0, v0, v3

    .line 54
    .line 55
    if-lez v0, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    .line 61
    .line 62
    if-ne v0, v5, :cond_9

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 73
    .line 74
    .line 75
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return v2

    .line 83
    :cond_5
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 84
    .line 85
    cmp-long v0, v6, v3

    .line 86
    .line 87
    if-ltz v0, :cond_6

    .line 88
    .line 89
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 107
    .line 108
    if-ne p1, v5, :cond_9

    .line 109
    .line 110
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 126
    .line 127
    .line 128
    return v2

    .line 129
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-direct {p0, v0, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->isInScrollingContainer()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_9

    .line 150
    .line 151
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 152
    .line 153
    .line 154
    return v2

    .line 155
    :cond_9
    :goto_0
    return v1
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 30
    .line 31
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x2

    .line 15
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_3

    .line 18
    .line 19
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v0, v1

    .line 26
    :goto_1
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 29
    .line 30
    aget p1, p1, v0

    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    .line 38
    .line 39
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sub-int/2addr p1, v0

    .line 46
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sub-int/2addr p1, v0

    .line 53
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    .line 68
    .line 69
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr p1, v0

    .line 76
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    sub-int/2addr p1, v0

    .line 83
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    .line 8
    .line 9
    const v2, 0x10103f7

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iput-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :pswitch_1
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iput v3, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput v3, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iput-object v3, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iput v3, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_5
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 70
    .line 71
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v5, 0x1

    .line 76
    aput v3, v4, v5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_6
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 80
    .line 81
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    aput v3, v4, v1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_7
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    iput v3, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_8
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_9
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iput v3, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_a
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_b
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iput-object v3, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_c
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    iput v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_d
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    iput v3, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    .line 136
    .line 137
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sub-int/2addr v2, v1

    .line 54
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    sub-int/2addr v1, v2

    .line 65
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    add-int/2addr v2, v1

    .line 76
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    add-int/2addr v2, v1

    .line 87
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 90
    .line 91
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 96
    .line 97
    return-void
.end method
