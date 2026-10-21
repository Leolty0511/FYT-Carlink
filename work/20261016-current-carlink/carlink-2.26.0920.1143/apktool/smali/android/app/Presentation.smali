.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 1

    .line 2
    invoke-static {p1, p2, p3}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 3
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/app/Presentation;->mToken:Landroid/os/IBinder;

    .line 4
    new-instance p3, Landroid/app/Presentation$2;

    invoke-direct {p3, p0}, Landroid/app/Presentation$2;-><init>(Landroid/app/Presentation;)V

    iput-object p3, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 5
    new-instance p3, Landroid/app/Presentation$3;

    invoke-direct {p3, p0}, Landroid/app/Presentation$3;-><init>(Landroid/app/Presentation;)V

    iput-object p3, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "display"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 10
    iput-object p1, p3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 p1, 0x77

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/Window;->setGravity(I)V

    const/16 p1, 0x7f5

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/Window;->setType(I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static synthetic access$000(Landroid/app/Presentation;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method public static synthetic access$200(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Landroid/util/TypedValue;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x10103c0

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    .line 26
    .line 27
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 28
    .line 29
    :cond_0
    const-string/jumbo v0, "window"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/view/WindowManagerImpl;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Landroid/app/Presentation$1;

    .line 43
    .line 44
    invoke-direct {v0, p1, p2, p0}, Landroid/app/Presentation$1;-><init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "display must not be null"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string/jumbo p1, "outerContext must not be null"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method private handleDisplayChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Presentation"

    .line 11
    .line 12
    const-string v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private handleDisplayRemoved()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private isConfigurationStillValid()Z
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayChanged()V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "Presentation"

    .line 20
    .line 21
    const-string v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
