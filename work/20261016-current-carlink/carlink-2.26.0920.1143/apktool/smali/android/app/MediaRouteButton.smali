.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const v2, 0x10100a0

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 9
    .line 10
    sput-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    const v1, 0x10102fe

    .line 15
    .line 16
    .line 17
    aput v1, v0, v3

    .line 18
    .line 19
    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103ad

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string/jumbo v0, "media_router"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 6
    new-instance v0, Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$1;)V

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    const/4 p2, 0x2

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    .line 14
    invoke-virtual {p0, p2}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    return-void
.end method

.method public static synthetic access$100(Landroid/app/MediaRouteButton;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "The MediaRouteButton\'s Context is not an Activity."

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method private refreshRoute()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move v0, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v2

    .line 37
    :goto_1
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 38
    .line 39
    if-eq v4, v1, :cond_2

    .line 40
    .line 41
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 42
    .line 43
    move v2, v3

    .line 44
    :cond_2
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 45
    .line 46
    if-eq v4, v0, :cond_3

    .line 47
    .line 48
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 49
    .line 50
    move v2, v3

    .line 51
    :cond_3
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 61
    .line 62
    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 63
    .line 64
    invoke-virtual {v4, v5, v3}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    if-eqz v4, :cond_9

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    .line 81
    if-eqz v4, :cond_9

    .line 82
    .line 83
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 90
    .line 91
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 92
    .line 93
    if-eqz v5, :cond_7

    .line 94
    .line 95
    if-nez v2, :cond_6

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    if-eqz v1, :cond_9

    .line 110
    .line 111
    if-nez v0, :cond_9

    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 120
    .line 121
    .line 122
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    sub-int/2addr v0, v3

    .line 127
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_2
    return-void
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v1

    .line 38
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public getRouteTypes()I
    .locals 1

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 6
    .line 7
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 3
    .line 4
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    sub-int/2addr v3, v4

    .line 35
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    sub-int/2addr v1, v0

    .line 48
    sub-int/2addr v1, v4

    .line 49
    div-int/lit8 v1, v1, 0x2

    .line 50
    .line 51
    add-int/2addr v1, v0

    .line 52
    sub-int/2addr v3, v2

    .line 53
    sub-int/2addr v3, v5

    .line 54
    div-int/lit8 v3, v3, 0x2

    .line 55
    .line 56
    add-int/2addr v3, v2

    .line 57
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    add-int/2addr v4, v1

    .line 60
    add-int/2addr v5, v3

    .line 61
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    .line 18
    .line 19
    iget-object v3, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    add-int/2addr v5, v3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    add-int/2addr v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, v4

    .line 40
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget v3, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    .line 45
    .line 46
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    add-int/2addr v5, v4

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    add-int/2addr v4, v5

    .line 64
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    .line 70
    const/high16 v5, -0x80000000

    .line 71
    .line 72
    if-eq p1, v5, :cond_2

    .line 73
    .line 74
    if-eq p1, v4, :cond_3

    .line 75
    .line 76
    move v0, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    .line 83
    .line 84
    if-eq p2, v4, :cond_5

    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

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
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    :cond_2
    return v1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 19
    .line 20
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 27
    .line 28
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public showDialog()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    return-void
.end method

.method public showDialogInternal()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v2, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 12
    .line 13
    iget-object v3, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    invoke-static {v0, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

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
