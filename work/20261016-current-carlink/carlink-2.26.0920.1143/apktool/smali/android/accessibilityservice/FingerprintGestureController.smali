.class public final Landroid/accessibilityservice/FingerprintGestureController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_GESTURE_SWIPE_DOWN:I = 0x8

.field public static final FINGERPRINT_GESTURE_SWIPE_LEFT:I = 0x2

.field public static final FINGERPRINT_GESTURE_SWIPE_RIGHT:I = 0x1

.field public static final FINGERPRINT_GESTURE_SWIPE_UP:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureController"


# instance fields
.field private final mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private final mCallbackHandlerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 18
    .line 19
    iput-object p1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->lambda$onGesture$1(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V

    return-void
.end method

.method public static synthetic b(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->lambda$onGestureDetectionActiveChanged$0(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V

    return-void
.end method

.method private static synthetic lambda$onGesture$1(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    return-void
.end method

.method private static synthetic lambda$onGestureDetectionActiveChanged$0(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public isGestureDetectionAvailable()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isFingerprintGestureDetectionAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "FingerprintGestureController"

    .line 10
    .line 11
    const-string v2, "Failed to check if fingerprint gestures are active"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public onGesture(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    iget-object v2, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroid/os/Handler;

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    new-instance v6, Landroid/accessibilityservice/e;

    .line 35
    .line 36
    invoke-direct {v6, v4, p1, v2}, Landroid/accessibilityservice/e;-><init>(Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v4, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method

.method public onGestureDetectionActiveChanged(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    iget-object v2, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroid/os/Handler;

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    new-instance v6, Landroid/accessibilityservice/d;

    .line 35
    .line 36
    invoke-direct {v6, v2, p1, v4}, Landroid/accessibilityservice/d;-><init>(IZLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v4, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method

.method public registerFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public unregisterFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
