.class public abstract Landroid/service/media/CameraPrewarmService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_PREWARM:Ljava/lang/String; = "android.service.media.CameraPrewarmService.ACTION_PREWARM"

.field public static final MSG_CAMERA_FIRED:I = 0x1


# instance fields
.field private mCameraIntentFired:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/service/media/CameraPrewarmService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/service/media/CameraPrewarmService$1;-><init>(Landroid/service/media/CameraPrewarmService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$002(Landroid/service/media/CameraPrewarmService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/service/media/CameraPrewarmService;->onPrewarm()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/os/Messenger;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public abstract onCooldown(Z)V
.end method

.method public abstract onPrewarm()V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/service/media/CameraPrewarmService;->onCooldown(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method
