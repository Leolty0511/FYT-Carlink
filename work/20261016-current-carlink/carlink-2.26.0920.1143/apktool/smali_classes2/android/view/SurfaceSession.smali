.class public final Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeClient:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/SurfaceSession;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeCreateScoped(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateScoped(J)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeKill(J)V
.end method


# virtual methods
.method public finalize()V
    .locals 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

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
    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public kill()V
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeKill(J)V

    return-void
.end method
