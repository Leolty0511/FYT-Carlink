.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/service/vr/VrListenerService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    .line 10
    .line 11
    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    const-class v0, Landroid/app/ActivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    return-object p1
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    return-void
.end method
