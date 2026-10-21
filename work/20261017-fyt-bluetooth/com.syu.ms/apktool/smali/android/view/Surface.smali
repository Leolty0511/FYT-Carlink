.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"

.field private static final USE_LCDC_COMPOSER:Z


# instance fields
.field private changewh:Z

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field public final mLock:Ljava/lang/Object;

.field private mLockedObject:I

.field private mName:Ljava/lang/String;

.field public mNativeObject:I

.field private mRotation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    sget-boolean v0, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    sput-boolean v0, Landroid/view/Surface;->USE_LCDC_COMPOSER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/view/Surface;->changewh:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/view/Surface;->mRotation:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 21
    new-instance v1, Landroid/view/Surface$CompatibleCanvas;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Landroid/view/Surface;->changewh:Z

    const/4 v1, -0x1

    .line 23
    iput v1, p0, Landroid/view/Surface;->mRotation:I

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v1, Landroid/view/Surface$CompatibleCanvas;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroid/view/Surface;->changewh:Z

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroid/view/Surface;->mRotation:I

    if-eqz p1, :cond_0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "surfaceTexture must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private static native changeWH(II)V
.end method

.method private checkNotReleasedLocked()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCreateFromSurfaceControl(I)I
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)I
.end method

.method private static native nativeIsConsumerRunningBehind(I)Z
.end method

.method private static native nativeIsValid(I)Z
.end method

.method private static native nativeLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)I
.end method

.method private static native nativeReadFromParcel(ILandroid/os/Parcel;)I
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ROATATION_270"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ROATATION_180"

    return-object p0

    :cond_2
    const-string p0, "ROATATION_90"

    return-object p0

    :cond_3
    const-string p0, "ROTATION_0"

    return-object p0
.end method

.method private setNativeObjectLocked(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eq v0, p1, :cond_2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 3
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 4
    :cond_1
    :goto_0
    iput p1, p0, Landroid/view/Surface;->mNativeObject:I

    .line 5
    iget p1, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/Surface;->mGenerationId:I

    :cond_2
    return-void
.end method


# virtual methods
.method public ChangeWH(I)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/view/Surface;->USE_LCDC_COMPOSER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/Surface;->changewh:Z

    .line 3
    iput p1, p0, Landroid/view/Surface;->mRotation:I

    :cond_0
    return-void
.end method

.method public copyFrom(Landroid/view/SurfaceControl;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget p1, p1, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Landroid/view/Surface;->nativeRelease(I)V

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "SurfaceControl native object is null. Are you using a released SurfaceControl?"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGenerationId()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConsumerRunningBehind()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 3
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v1}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3
    :cond_0
    invoke-static {v1}, Landroid/view/Surface;->nativeIsValid(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 3
    iget v1, p0, Landroid/view/Surface;->mLockedObject:I

    if-nez v1, :cond_1

    .line 4
    sget-boolean v1, Landroid/view/Surface;->USE_LCDC_COMPOSER:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/view/Surface;->changewh:Z

    if-eqz v1, :cond_0

    .line 5
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    iget v2, p0, Landroid/view/Surface;->mRotation:I

    invoke-static {v1, v2}, Landroid/view/Surface;->changeWH(II)V

    .line 6
    :cond_0
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    iget-object v2, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)I

    move-result p1

    iput p1, p0, Landroid/view/Surface;->mLockedObject:I

    .line 7
    iget-object p1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    monitor-exit v0

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was already locked"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 3
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v1, p1}, Landroid/view/Surface;->nativeReadFromParcel(ILandroid/os/Parcel;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Landroid/view/Surface;->nativeRelease(I)V

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")/@0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    .line 1
    iget-object v0, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p1, Landroid/view/Surface;->mNativeObject:I

    const/4 v2, 0x0

    .line 3
    invoke-direct {p1, v2}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object p1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v0}, Landroid/view/Surface;->nativeRelease(I)V

    .line 8
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 9
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 4
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    iget v2, p0, Landroid/view/Surface;->mLockedObject:I

    if-eq v1, v2, :cond_0

    const-string v1, "Surface"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") != mLockedObject (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/Surface;->mLockedObject:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget v1, p0, Landroid/view/Surface;->mLockedObject:I

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V

    .line 8
    iget p1, p0, Landroid/view/Surface;->mLockedObject:I

    invoke-static {p1}, Landroid/view/Surface;->nativeRelease(I)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/view/Surface;->mLockedObject:I

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was not locked"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v1, p1}, Landroid/view/Surface;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
