.class public Lcom/syu/bt/ctrl/SwipeCallingView;
.super Landroid/widget/RelativeLayout;
.source "SwipeCallingView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;
    }
.end annotation


# static fields
.field static isInCycle:Z


# instance fields
.field private DialView:Landroid/widget/ImageView;

.field private DialViewMirror:Landroid/widget/ImageView;

.field GreenView:Landroid/view/View;

.field final ID_DIAL:I

.field final ID_GREEN:I

.field final ID_RED:I

.field MAXHEIGHT:I

.field MAXWITH:I

.field RedView:Landroid/view/View;

.field X:I

.field Y:I

.field anim:Landroid/view/animation/TranslateAnimation;

.field animSet:Landroid/view/animation/AnimationSet;

.field animSet2:Landroid/view/animation/AnimationSet;

.field duration:I

.field isActiveCall:Z

.field isCalling:Z

.field private ivHangup:Landroid/widget/ImageView;

.field private ivPickup:Landroid/widget/ImageView;

.field lastX:I

.field lastY:I

.field leftwitdh:I

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

.field mPaint:Landroid/graphics/Paint;

.field offsetDialIcon:I

.field page:Lcom/lsec/core/frame/ctrl/JPage;

.field posRed:I

.field red_h:I

.field red_w:I

.field rightwitdh:I

.field wmLp:Landroid/view/WindowManager$LayoutParams;

.field wmManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/ctrl/SwipeCallingView;->isInCycle:Z

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mDrawables:Ljava/util/HashMap;

    .line 30
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ID_RED:I

    .line 31
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ID_GREEN:I

    .line 32
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ID_DIAL:I

    .line 34
    iput-object v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    .line 35
    iput-object v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    .line 39
    const/16 v0, 0x258

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->duration:I

    .line 40
    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->posRed:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->offsetDialIcon:I

    .line 51
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isCalling:Z

    .line 52
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isActiveCall:Z

    .line 53
    iput-object v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    .line 156
    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->MAXWITH:I

    .line 157
    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->MAXHEIGHT:I

    .line 158
    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->leftwitdh:I

    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->rightwitdh:I

    .line 198
    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastX:I

    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastY:I

    .line 199
    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->X:I

    iput v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->Y:I

    .line 58
    invoke-direct {p0, p1}, Lcom/syu/bt/ctrl/SwipeCallingView;->init(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 59
    return-void
.end method

.method private init(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 11
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 73
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmManager:Landroid/view/WindowManager;

    .line 74
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    .line 75
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    .line 81
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    const-string v4, "red_buble"

    iget-object v5, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const/16 v3, 0xf

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    const/4 v3, 0x7

    const/16 v4, 0x7d2

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 86
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/syu/bt/ctrl/SwipeCallingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    .line 88
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    const-string v4, "green_buble"

    iget-object v5, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 93
    const/4 v3, 0x5

    const/16 v4, 0x7d2

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    const/16 v4, 0x7d1

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 95
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/syu/bt/ctrl/SwipeCallingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    .line 98
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    const-string v4, "bt_calling_dial"

    iget-object v5, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    const/16 v4, 0x7d2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 103
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/syu/bt/ctrl/SwipeCallingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    .line 106
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    const-string v4, "bt_calling_pickup"

    iget-object v5, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/syu/bt/ctrl/SwipeCallingView;->addView(Landroid/view/View;)V

    .line 108
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    .line 109
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    const-string v4, "bt_calling_hang"

    iget-object v5, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/syu/bt/ctrl/SwipeCallingView;->addView(Landroid/view/View;)V

    .line 112
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x3c510000    # -350.0f

    invoke-direct {v3, v6, v4, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->anim:Landroid/view/animation/TranslateAnimation;

    .line 116
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->anim:Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->duration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 117
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->anim:Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 118
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->anim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, v8}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 119
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->anim:Landroid/view/animation/TranslateAnimation;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 121
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x43af0000    # 350.0f

    invoke-direct {v1, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 122
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->duration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 123
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 124
    invoke-virtual {v1, v8}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 125
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 128
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->duration:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 129
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 130
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 132
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet:Landroid/view/animation/AnimationSet;

    .line 133
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->anim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet2:Landroid/view/animation/AnimationSet;

    .line 137
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Lcom/syu/bt/ctrl/SwipeCallingView$1;

    invoke-direct {v3, p0}, Lcom/syu/bt/ctrl/SwipeCallingView$1;-><init>(Lcom/syu/bt/ctrl/SwipeCallingView;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    .line 154
    :cond_0
    return-void
.end method

.method private updateDialView()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->X:I

    iget-object v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 301
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->Y:I

    iget v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->offsetDialIcon:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 302
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->MAXHEIGHT:I

    .line 163
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->MAXWITH:I

    .line 165
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 166
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    iget v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->MAXWITH:I

    iget-object v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 168
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->leftwitdh:I

    .line 169
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->rightwitdh:I

    .line 170
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 171
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fc999999999999aL    # 0.2

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->X:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->Y:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 208
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastX:I

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastY:I

    .line 210
    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastX:I

    const/16 v4, 0x1ce

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastX:I

    const/16 v4, 0x232

    if-ge v3, v4, :cond_1

    .line 211
    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastY:I

    const/16 v4, 0x2a

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastY:I

    const/16 v4, 0x8e

    if-ge v3, v4, :cond_1

    .line 212
    sput-boolean v2, Lcom/syu/bt/ctrl/SwipeCallingView;->isInCycle:Z

    .line 213
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 215
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 216
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 217
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800003

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 218
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    .line 219
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    const-string v5, "bt_calling_dial"

    iget-object v6, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-direct {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->updateDialView()V

    .line 222
    invoke-virtual {p0, v8}, Lcom/syu/bt/ctrl/SwipeCallingView;->startCalling(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->invalidate()V

    goto :goto_0

    .line 227
    :pswitch_1
    sget-boolean v3, Lcom/syu/bt/ctrl/SwipeCallingView;->isInCycle:Z

    if-eqz v3, :cond_0

    .line 228
    iget v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->X:I

    iget v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->lastX:I

    sub-int v0, v3, v4

    .line 229
    .local v0, "deltx":I
    const/4 v1, 0x0

    .line 230
    .local v1, "percent":F
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 233
    if-lez v0, :cond_3

    .line 234
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->rightwitdh:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 235
    float-to-double v4, v1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 237
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    .line 238
    iget-object v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    const-string v5, "bt_calling_pickup"

    iget-object v6, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 237
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    float-to-double v4, v1

    cmpl-double v3, v4, v10

    if-lez v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    float-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    invoke-interface {v3}, Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;->setEventRight()V

    .line 243
    iput-boolean v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isActiveCall:Z

    .line 244
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->removeDialView()V

    .line 267
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->updateDialView()V

    goto/16 :goto_0

    .line 250
    :cond_3
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->leftwitdh:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 251
    float-to-double v4, v1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    .line 253
    iget-object v4, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    const-string v5, "bt_calling_hang"

    iget-object v6, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 252
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 255
    float-to-double v4, v1

    cmpl-double v3, v4, v10

    if-lez v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    float-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 258
    iput-boolean v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isActiveCall:Z

    .line 259
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    invoke-interface {v3}, Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;->setEventLeft()V

    .line 260
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->removeDialView()V

    goto :goto_1

    .line 272
    .end local v0    # "deltx":I
    .end local v1    # "percent":F
    :pswitch_2
    iget-boolean v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isActiveCall:Z

    if-eqz v3, :cond_4

    .line 273
    iput-boolean v8, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isCalling:Z

    .line 279
    :goto_2
    iget-boolean v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isCalling:Z

    invoke-virtual {p0, v3}, Lcom/syu/bt/ctrl/SwipeCallingView;->startCalling(Z)V

    .line 281
    sput-boolean v8, Lcom/syu/bt/ctrl/SwipeCallingView;->isInCycle:Z

    .line 282
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/SwipeCallingView;->removeDialView()V

    goto/16 :goto_0

    .line 275
    :cond_4
    iput-boolean v2, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isCalling:Z

    .line 276
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivPickup:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v3, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->ivHangup:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeDialView()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->wmManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->DialViewMirror:Landroid/widget/ImageView;

    .line 297
    :cond_0
    return-void
.end method

.method public setOnSwipeEventListner(Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;)V
    .locals 0
    .param p1, "mEvent"    # Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->mEventListner:Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;

    .line 63
    return-void
.end method

.method public startCalling(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isCalling:Z

    .line 175
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isCalling:Z

    if-eqz v0, :cond_2

    .line 176
    iput-boolean v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->isActiveCall:Z

    .line 177
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    iget-object v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet2:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    iget-object v1, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->animSet2:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->RedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/syu/bt/ctrl/SwipeCallingView;->GreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
