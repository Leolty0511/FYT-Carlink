.class public abstract Landroid/service/chooser/ChooserTargetService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
    }
.end annotation


# static fields
.field public static final BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_CHOOSER_TARGET_SERVICE"

.field private static final DEBUG:Z = false

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.service.chooser.chooser_target_service"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.chooser.ChooserTargetService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "ChooserTargetService["

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x5d

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "android.service.chooser.ChooserTargetService"

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
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object p1, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 20
    .line 21
    invoke-direct {p1, p0, v0}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$1;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 27
    .line 28
    return-object p1
.end method

.method public abstract onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end method
