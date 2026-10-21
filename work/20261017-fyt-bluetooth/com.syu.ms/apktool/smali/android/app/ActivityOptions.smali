.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:animExitRes"

.field public static final KEY_ANIM_START_HEIGHT:Ljava/lang/String; = "android:animStartHeight"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:animStartListener"

.field public static final KEY_ANIM_START_WIDTH:Ljava/lang/String; = "android:animStartWidth"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:animType"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:packageName"


# instance fields
.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mPackageName:Ljava/lang/String;

.field private mStartHeight:I

.field private mStartWidth:I

.field private mStartX:I

.field private mStartY:I

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v1, "android:packageName"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const-string v1, "android:animType"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const-string v2, "android:animStartListener"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "android:animEnterRes"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v1, "android:animExitRes"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const-string v4, "android:animStartY"

    const-string v5, "android:animStartX"

    if-ne v1, v3, :cond_1

    .line 10
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 11
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    const-string v1, "android:animStartWidth"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    const-string v1, "android:animStartHeight"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    :cond_2
    const-string v1, "android:animThumbnail"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 16
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 17
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    :cond_3
    :goto_0
    return-void
.end method

.method public static abort(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_0
    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 1

    .line 2
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/4 p0, 0x1

    .line 4
    iput p0, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 5
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 6
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 7
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    new-array v1, v1, [I

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 5
    aget p0, v1, p0

    add-int/2addr p0, p1

    iput p0, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 p0, 0x1

    .line 6
    aget p0, v1, p0

    add-int/2addr p0, p2

    iput p0, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 7
    iput p3, v0, Landroid/app/ActivityOptions;->mStartWidth:I

    .line 8
    iput p4, v0, Landroid/app/ActivityOptions;->mStartHeight:I

    return-object v0
.end method

.method private static makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/4 p5, 0x3

    goto :goto_0

    :cond_0
    const/4 p5, 0x4

    .line 3
    :goto_0
    iput p5, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 4
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p5, 0x0

    .line 6
    aget p5, p1, p5

    add-int/2addr p5, p2

    iput p5, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 p2, 0x1

    .line 7
    aget p1, p1, p2

    add-int/2addr p1, p3

    iput p1, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p0, p4}, Landroid/app/ActivityOptions;->setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getAnimationType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    return v0
.end method

.method public getStartWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "android:packageName"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android:animStartListener"

    const-string v5, "android:animType"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const-string v6, "android:animStartY"

    const-string v7, "android:animStartX"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    const-string v2, "android:animThumbnail"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget v1, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    const-string v2, "android:animStartWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget v1, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    const-string v2, "android:animStartHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v2, "android:animEnterRes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string v2, "android:animExitRes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_5
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_0
    return-object v0
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 3
    :cond_0
    iget v0, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 5
    iget-object v0, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 6
    iget v0, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 7
    iget v0, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 8
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_2

    .line 9
    :try_start_0
    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_2
    iget-object p1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 11
    :cond_3
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 12
    iget v0, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 13
    iget v0, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 14
    iget v0, p1, Landroid/app/ActivityOptions;->mStartWidth:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    .line 15
    iget v0, p1, Landroid/app/ActivityOptions;->mStartHeight:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    .line 16
    iget-object p1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz p1, :cond_4

    .line 17
    :try_start_1
    invoke-interface {p1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :catch_1
    :cond_4
    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 19
    :cond_5
    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 20
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 21
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 22
    iput-object v2, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 23
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_6

    .line 24
    :try_start_2
    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 25
    :catch_2
    :cond_6
    iget-object p1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    :goto_0
    return-void
.end method
