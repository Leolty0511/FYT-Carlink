.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final USE_CACHE:Z = false

.field private static sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private mDisplayIdCache:[I

.field private final mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDm:Landroid/hardware/display/IDisplayManager;

.field private final mLock:Ljava/lang/Object;

.field private mWifiDisplayScanNestCount:I


# direct methods
.method private constructor <init>(Landroid/hardware/display/IDisplayManager;)V
    .locals 1

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
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    .line 24
    .line 25
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$100(Landroid/hardware/display/DisplayManagerGlobal;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V

    return-void
.end method

.method private findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 17
    .line 18
    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 19
    .line 20
    if-ne v2, p1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public static getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .locals 3

    .line 1
    const-class v0, Landroid/hardware/display/DisplayManagerGlobal;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "display"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 26
    .line 27
    :cond_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method private handleDisplayEvent(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 20
    .line 21
    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(II)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method private registerCallbackIfNeededLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroid/hardware/display/IDisplayManager;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    throw v0

    .line 25
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "deviceAddress must not be null"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p3

    .line 3
    .line 4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_4

    .line 9
    .line 10
    if-lez p4, :cond_3

    .line 11
    .line 12
    if-lez p5, :cond_3

    .line 13
    .line 14
    if-lez p6, :cond_3

    .line 15
    .line 16
    new-instance v13, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    .line 17
    .line 18
    move-object/from16 v2, p9

    .line 19
    .line 20
    move-object/from16 v3, p10

    .line 21
    .line 22
    invoke-direct {v13, v2, v3}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v4, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v4, v14

    .line 35
    :goto_0
    :try_start_0
    iget-object v2, v1, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v3, v13

    .line 42
    move-object/from16 v6, p3

    .line 43
    .line 44
    move/from16 v7, p4

    .line 45
    .line 46
    move/from16 v8, p5

    .line 47
    .line 48
    move/from16 v9, p6

    .line 49
    .line 50
    move-object/from16 v10, p7

    .line 51
    .line 52
    move/from16 v11, p8

    .line 53
    .line 54
    move-object/from16 v12, p11

    .line 55
    .line 56
    invoke-interface/range {v2 .. v12}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    const-string v3, "DisplayManager"

    .line 61
    .line 62
    if-gez v2, :cond_1

    .line 63
    .line 64
    const-string v2, "Could not create virtual display: "

    .line 65
    .line 66
    invoke-static {v2, v0, v3}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v14

    .line 70
    :cond_1
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v4, "Could not obtain display info for newly created virtual display: "

    .line 79
    .line 80
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :try_start_1
    iget-object v0, v1, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 94
    .line 95
    invoke-interface {v0, v13}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    return-object v14

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    throw v0

    .line 105
    :cond_2
    new-instance v0, Landroid/hardware/display/VirtualDisplay;

    .line 106
    .line 107
    move-object/from16 v3, p7

    .line 108
    .line 109
    invoke-direct {v0, p0, v2, v13, v3}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    throw v0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string/jumbo v2, "width, height, and densityDpi must be greater than 0"

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string/jumbo v2, "name must be non-null and non-empty"

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "deviceAddress must not be null"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method public getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    return-object v1
.end method

.method public getDisplayIds()[I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getDisplayIds()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    throw v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    throw p1
.end method

.method public getRealDisplay(I)Landroid/view/Display;
    .locals 1

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public pauseWifiDisplay()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 15
    .line 16
    invoke-direct {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 23
    .line 24
    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string/jumbo p2, "listener must not be null"

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p2, "deviceAddress must not be null"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public requestColorMode(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestColorMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method

.method public resumeWifiDisplay()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method

.method public startWifiDisplayScan()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 16
    .line 17
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    throw v1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw v1
.end method

.method public stopWifiDisplayScan()V
    .locals 4

    .line 1
    const-string v0, "Wifi display scan nest count became negative: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    iput v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    throw v0

    .line 26
    :cond_0
    if-gez v2, :cond_1

    .line 27
    .line 28
    const-string v2, "DisplayManager"

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 49
    .line 50
    :cond_1
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string/jumbo v0, "listener must not be null"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
