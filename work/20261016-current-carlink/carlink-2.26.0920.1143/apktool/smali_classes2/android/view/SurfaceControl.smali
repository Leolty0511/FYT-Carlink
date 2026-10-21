.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field public static final WINDOW_TYPE_DONT_SCREENSHOT:I = 0x6bd83


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 14
    iget-object v1, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 15
    iget-wide v1, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 16
    iget-object v1, p1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-string p1, "release"

    .line 18
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIII)V
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V
    .locals 14

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v1, p7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v11

    iput-object v11, v0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    and-int/lit8 v3, p6, 0x4

    if-nez v3, :cond_0

    const-string v3, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "SurfaceControl"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    iput-object v2, v0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_1

    .line 7
    iget-wide v3, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v12

    :goto_0
    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJII)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_2

    const-string v1, "release"

    .line 8
    invoke-virtual {v11, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    new-instance v1, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v1, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "session must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkNotReleased()V
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearAnimationFrameStats()Z
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static closeTransaction()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeCloseTransaction(Z)V

    return-void
.end method

.method public static closeTransactionSync()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeCloseTransaction(Z)V

    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "name must not be null"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "displayToken must not be null"

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public static getActiveColorMode(Landroid/os/IBinder;)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveColorMode(Landroid/os/IBinder;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result p0

    return p0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayColorModes(Landroid/os/IBinder;)[I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayColorModes(Landroid/os/IBinder;)[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCloseTransaction(Z)V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJII)J
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeDeferTransactionUntil(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeDeferTransactionUntilSurface(JJJ)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetActiveColorMode(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayColorModes(Landroid/os/IBinder;)[I
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeGetHandle(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
.end method

.method private static native nativeGetTransformToDisplayInverse(J)Z
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeReparentChildren(JLandroid/os/IBinder;)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeScreenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JF)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(Landroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;J)V
.end method

.method private static native nativeSetFinalCrop(JIIII)V
.end method

.method private static native nativeSetFlags(JII)V
.end method

.method private static native nativeSetGeometryAppliesWithResize(J)V
.end method

.method private static native nativeSetLayer(JI)V
.end method

.method private static native nativeSetLayerStack(JI)V
.end method

.method private static native nativeSetMatrix(JFFFF)V
.end method

.method private static native nativeSetOverrideScalingMode(JI)V
.end method

.method private static native nativeSetPosition(JFF)V
.end method

.method private static native nativeSetRelativeLayer(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetSize(JII)V
.end method

.method private static native nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JIIII)V
.end method

.method private static native nativeSeverChildren(J)V
.end method

.method public static openTransaction()V
    .locals 0

    invoke-static {}, Landroid/view/SurfaceControl;->nativeOpenTransaction()V

    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p0

    move v4, p1

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    move/from16 v9, p6

    .line 5
    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 9

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 9

    .line 2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 9

    .line 1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "consumer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move v8, p5

    .line 13
    move/from16 v9, p6

    .line 14
    .line 15
    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/GraphicBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "displayToken must not be null"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static setAnimationTransaction()V
    .locals 0

    invoke-static {}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction()V

    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string p1, "displayToken must not be null"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string p1, "displayToken must not be null"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    iget v6, p3, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v7, p3, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget v8, p3, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    move v1, p1

    .line 25
    invoke-static/range {v0 .. v9}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "displayRect must not be null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "layerStackRect must not be null"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p1, "displayToken must not be null"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(Landroid/os/IBinder;II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string/jumbo p1, "width and height must be positive"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, "displayToken must not be null"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-wide v1, p1, Landroid/view/Surface;->mNativeObject:J

    .line 9
    .line 10
    invoke-static {p0, v1, v2}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0

    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "displayToken must not be null"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JLandroid/os/IBinder;J)V

    :cond_0
    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 2
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/Surface;->mNativeObject:J

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntilSurface(JJJ)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDestroy(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 15
    .line 16
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public detachChildren()V
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeSeverChildren(J)V

    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getHandle()Landroid/os/IBinder;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetHandle(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v2}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 15
    .line 16
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public reparentChildren(Landroid/os/IBinder;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeReparentChildren(JLandroid/os/IBinder;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetAlpha(JF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 7
    .line 8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JIIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JIIII)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public setGeometryAppliesWithResize()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeSetGeometryAppliesWithResize(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLayer(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayer(JI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLayerStack(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetMatrix(JFFFF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOpaque(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 8
    .line 9
    invoke-static {v1, v2, v0, v0}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {v1, v2, p1, v0}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setOverrideScalingMode(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPosition(FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetPosition(JFF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRelativeLayer(Landroid/os/IBinder;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JLandroid/os/IBinder;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSecure(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x80

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 9
    .line 10
    invoke-static {v1, v2, v0, v0}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {v1, v2, p1, v0}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetSize(JII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 7
    .line 8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Surface(name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
