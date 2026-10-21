.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$SurfaceCallback;,
        Landroid/app/ActivityView$StateCallback;
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mInputForwarder:Landroid/app/IInputForwarder;

.field private mOpened:Z

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    .line 5
    new-instance p3, Landroid/view/SurfaceView;

    invoke-direct {p3, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 6
    new-instance p1, Landroid/app/ActivityView$SurfaceCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V

    iput-object p1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    .line 7
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroid/app/ActivityView;->mOpened:Z

    const-string/jumbo p1, "release"

    .line 10
    invoke-virtual {p2, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/app/ActivityView;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityView;->initVirtualDisplay()V

    return-void
.end method

.method public static synthetic access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/app/ActivityView;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result p0

    return p0
.end method

.method private getBaseDisplayDensity()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/view/WindowManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 10
    .line 11
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    .line 22
    .line 23
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 24
    .line 25
    return v0
.end method

.method private initVirtualDisplay()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "ActivityViewVirtualDisplay@"

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object v6, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    const-string v0, "ActivityView"

    .line 62
    .line 63
    const-string v1, "Failed to initialize ActivityView"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v1, "Trying to initialize for the second time."

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IInputForwarder;->forwardEvent(Landroid/view/InputEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method private performRelease()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v2

    .line 37
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 45
    .line 46
    :cond_3
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewDestroyed(Landroid/app/ActivityView;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    .line 56
    .line 57
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 58
    .line 59
    .line 60
    iput-boolean v2, p0, Landroid/app/ActivityView;->mOpened:Z

    .line 61
    .line 62
    return-void
.end method

.method private prepareActivityOptions()Landroid/app/ActivityOptions;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Trying to start activity before ActivityView is ready."

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Trying to release container that is not initialized."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public setCallback(Landroid/app/ActivityView$StateCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p1

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
