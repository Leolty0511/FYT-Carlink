.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = 0x1


# instance fields
.field private mAcceptAllTouches:Z

.field private mAppName:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mEntireHeaderClickable:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandOnlyOnButton:Z

.field private mExpanded:Z

.field private mHeaderBackgroundHeight:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mIconColor:I

.field private mInfo:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mShowExpandButtonAtEnd:Z

.field private mShowWorkBadgeAtEnd:Z

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {p1, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 6
    new-instance p1, Landroid/view/NotificationHeaderView$1;

    invoke-direct {p1, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105011a

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    const p2, 0x1050104

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    const p2, 0x1050110

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    const p2, 0x1120083

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    return-void
.end method

.method public static synthetic access$000(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/view/NotificationHeaderView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    return p0
.end method

.method public static synthetic access$200(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return p0
.end method

.method public static synthetic access$600(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return p0
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object p0
.end method

.method private updateExpandButton()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x1080323

    .line 6
    .line 7
    .line 8
    const v1, 0x10401d9

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v0, 0x108035b

    .line 13
    .line 14
    .line 15
    const v1, 0x10401d8

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 32
    .line 33
    iget v2, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 39
    .line 40
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private updateTouchListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return v0
.end method

.method public getOriginalNotificationColor()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchRect(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

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
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->access$700(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x10201ad

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x1020281

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    .line 21
    .line 22
    const v0, 0x1020237

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 32
    .line 33
    const v0, 0x1020006

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    .line 41
    .line 42
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 43
    .line 44
    const v0, 0x102037c

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    .line 52
    .line 53
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result p5

    .line 21
    sub-int/2addr p4, p5

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result p5

    .line 26
    sub-int/2addr p4, p5

    .line 27
    const/4 p5, 0x0

    .line 28
    :goto_0
    if-ge p5, p3, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr v3, p1

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    add-int/2addr p1, v3

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    int-to-float v4, v4

    .line 69
    sub-int v5, p4, v1

    .line 70
    .line 71
    int-to-float v5, v5

    .line 72
    const/high16 v6, 0x40000000    # 2.0f

    .line 73
    .line 74
    div-float/2addr v5, v6

    .line 75
    add-float/2addr v5, v4

    .line 76
    float-to-int v4, v5

    .line 77
    add-int/2addr v1, v4

    .line 78
    iget-object v5, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 79
    .line 80
    if-ne v0, v5, :cond_1

    .line 81
    .line 82
    iget-boolean v5, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    .line 83
    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    iget v3, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 87
    .line 88
    sub-int/2addr p2, v3

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sub-int v3, p2, v3

    .line 94
    .line 95
    move v5, v3

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v5, v3

    .line 98
    move v3, p2

    .line 99
    move p2, p1

    .line 100
    :goto_1
    iget-object v6, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    .line 101
    .line 102
    if-ne v0, v6, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iget-boolean v5, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    .line 109
    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    iget p2, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 113
    .line 114
    :cond_2
    sub-int p2, v3, p2

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    sub-int v3, p2, v3

    .line 121
    .line 122
    move v5, v3

    .line 123
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    const/4 v7, 0x1

    .line 128
    if-ne v6, v7, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    sub-int/2addr v6, p2

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    sub-int/2addr p2, v5

    .line 140
    move v5, v6

    .line 141
    :cond_4
    invoke-virtual {v0, v5, v4, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    add-int/2addr p2, p1

    .line 149
    move p1, p2

    .line 150
    move p2, v3

    .line 151
    :goto_2
    add-int/lit8 p5, p5, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public onMeasure(II)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/high16 v0, -0x80000000

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/2addr v4, v3

    .line 28
    const/4 v3, 0x0

    .line 29
    move v5, v3

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/16 v7, 0x8

    .line 35
    .line 36
    if-ge v5, v6, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ne v8, v7, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .line 55
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    .line 57
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 58
    .line 59
    add-int/2addr v8, v9

    .line 60
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    .line 62
    invoke-static {v1, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 67
    .line 68
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 69
    .line 70
    add-int/2addr v9, v10

    .line 71
    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    .line 73
    invoke-static {v2, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    .line 78
    .line 79
    .line 80
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 81
    .line 82
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 83
    .line 84
    add-int/2addr v8, v7

    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    add-int/2addr v6, v8

    .line 90
    add-int/2addr v6, v4

    .line 91
    move v4, v6

    .line 92
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    if-le v4, p1, :cond_3

    .line 96
    .line 97
    sub-int/2addr v4, p1

    .line 98
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-lez v4, :cond_2

    .line 105
    .line 106
    iget-object v5, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eq v5, v7, :cond_2

    .line 113
    .line 114
    iget v5, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    .line 115
    .line 116
    if-le v1, v5, :cond_2

    .line 117
    .line 118
    sub-int v5, v1, v5

    .line 119
    .line 120
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    sub-int v5, v1, v5

    .line 125
    .line 126
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    iget-object v8, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v8, v6, v2}, Landroid/view/View;->measure(II)V

    .line 133
    .line 134
    .line 135
    sub-int/2addr v1, v5

    .line 136
    sub-int/2addr v4, v1

    .line 137
    :cond_2
    if-lez v4, :cond_3

    .line 138
    .line 139
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eq v1, v7, :cond_3

    .line 146
    .line 147
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    sub-int/2addr v1, v4

    .line 154
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public setAcceptAllTouches(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return-void
.end method

.method public setExpandOnlyOnButton(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setOriginalIconColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return-void
.end method

.method public setShowExpandButtonAtEnd(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
