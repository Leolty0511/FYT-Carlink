.class public Landroid/app/PerformanceManagerInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Landroid/app/PerformanceManagerInternal;

.field private static sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/PerformanceManagerInternal;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p1, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string/jumbo p1, "performance_fw"

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/app/IPerformanceManagerInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IPerformanceManagerInternal;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sput-object p1, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public static getDefault()Landroid/app/PerformanceManagerInternal;
    .locals 2

    .line 1
    sget-object v0, Landroid/app/PerformanceManagerInternal;->sInstance:Landroid/app/PerformanceManagerInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/app/PerformanceManagerInternal;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/app/PerformanceManagerInternal;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/app/PerformanceManagerInternal;->sInstance:Landroid/app/PerformanceManagerInternal;

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public getService()Landroid/app/IPerformanceManagerInternal;
    .locals 1

    sget-object v0, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskThumbnail(Landroid/content/Intent;)Landroid/app/TaskThumbnail;
    .locals 1

    .line 1
    sget-object v0, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IPerformanceManagerInternal;->getTaskThumbnail(Landroid/content/Intent;)Landroid/app/TaskThumbnail;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method public pkgSupportRecentThumbnail(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IPerformanceManagerInternal;->pkgSupportRecentThumbnail(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public removeApplcationSnapShot(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IPerformanceManagerInternal;->removeApplcationSnapShot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public removePendingUpdateThumbTask()V
    .locals 1

    .line 1
    sget-object v0, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/app/IPerformanceManagerInternal;->removePendingUpdateThumbTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public windowReallyDrawnDone(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/app/PerformanceManagerInternal;->sPerformanceManagerService:Landroid/app/IPerformanceManagerInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IPerformanceManagerInternal;->windowReallyDrawnDone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method
