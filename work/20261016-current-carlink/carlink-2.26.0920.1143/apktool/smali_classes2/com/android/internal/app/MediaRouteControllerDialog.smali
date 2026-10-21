.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mControlView:Landroid/view/View;

.field private mCreated:Z

.field private mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteConnectingState:[I

.field private mMediaRouteOnState:[I

.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final mRouter:Landroid/media/MediaRouter;

.field private mVolumeControlEnabled:Z

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeSlider:Landroid/widget/SeekBar;

.field private mVolumeSliderTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    new-array v0, p2, [I

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingState:[I

    .line 11
    .line 12
    new-array p2, p2, [I

    .line 13
    .line 14
    fill-array-data p2, :array_1

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnState:[I

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 21
    .line 22
    const-string p2, "media_router"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/media/MediaRouter;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 31
    .line 32
    new-instance p2, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {p2, p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$1;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method

.method public static synthetic access$100(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result p0

    return p0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingState:[I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnState:[I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method private isVolumeControlAvailable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x10103ad

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    return-object v0

    .line 26
    :cond_0
    new-array v2, v4, [I

    .line 27
    .line 28
    const v3, 0x1110030

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    aput v3, v2, v4

    .line 33
    .line 34
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method private update()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sub-int/2addr v0, v2

    .line 74
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return v2

    .line 92
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    return v0
.end method

.method private updateVolume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMediaControlView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method public getRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x104033b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, -0x2

    .line 31
    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const v1, 0x1090084

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v3, p0

    .line 51
    move-object v4, v0

    .line 52
    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v2, 0x102020d

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x0

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    const v1, 0x10202f4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    const v1, 0x10202f5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/SeekBar;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 96
    .line 97
    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialog$2;

    .line 98
    .line 99
    invoke-direct {v3, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    .line 125
    .line 126
    const p1, 0x10202f1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/FrameLayout;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    .line 136
    .line 137
    if-eqz v0, :cond_1

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    const/16 v0, 0x8

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 10
    .line 11
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move p1, v1

    .line 23
    :goto_1
    invoke-virtual {p2, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
