.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final WEBVIEW_ZYGOTE_SERVICE_32:Ljava/lang/String; = "webview_zygote32"

.field private static final WEBVIEW_ZYGOTE_SERVICE_64:Ljava/lang/String; = "webview_zygote64"

.field private static final WEBVIEW_ZYGOTE_SOCKET:Ljava/lang/String; = "webview_zygote"

.field private static final sLock:Ljava/lang/Object;

.field private static sMultiprocessEnabled:Z = false
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackage:Landroid/content/pm/PackageInfo; = null
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackageCacheKey:Ljava/lang/String; = null
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sStartedService:Z = false
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sZygote:Landroid/os/ZygoteProcess;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectToZygoteIfNeededLocked()V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .line 1
    const-string/jumbo v0, "webview_zygote"

    .line 2
    .line 3
    .line 4
    const-string v1, "Preloading package "

    .line 5
    .line 6
    sget-object v2, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    const-string v3, "WebViewZygote"

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string v0, "Cannot connect to zygote, no package specified"

    .line 18
    .line 19
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " is not running"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const/4 v4, 0x0

    .line 55
    :try_start_0
    new-instance v5, Landroid/os/ZygoteProcess;

    .line 56
    .line 57
    invoke-direct {v5, v0, v4}, Landroid/os/ZygoteProcess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v5, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 61
    .line 62
    new-instance v5, Ljava/util/ArrayList;

    .line 63
    .line 64
    const/16 v6, 0xa

    .line 65
    .line 66
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v7, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    sget-object v6, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 75
    .line 76
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-static {v4, v8, v6, v5, v7}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const/4 v10, 0x1

    .line 93
    if-ne v9, v10, :cond_3

    .line 94
    .line 95
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :goto_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, " "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 133
    .line 134
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackageCacheKey:Ljava/lang/String;

    .line 135
    .line 136
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 137
    .line 138
    aget-object v6, v6, v8

    .line 139
    .line 140
    invoke-virtual {v0, v5, v7, v1, v6}, Landroid/os/ZygoteProcess;->preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v5, "Error connecting to "

    .line 148
    .line 149
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    sput-object v4, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 163
    .line 164
    :goto_1
    return-void
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method public static getProcess()Landroid/os/ZygoteProcess;
    .locals 2

    .line 1
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->waitForServiceStartAndConnect()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method private static getServiceNameLocked()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .line 1
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string/jumbo v0, "webview_zygote64"

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    const-string/jumbo v0, "webview_zygote32"

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static isMultiprocessEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    sput-object p1, Landroid/webkit/WebViewZygote;->sPackageCacheKey:Ljava/lang/String;

    .line 7
    .line 8
    sget-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x0

    .line 19
    sput-object p1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 20
    .line 21
    invoke-static {p0}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p0}, Landroid/os/SystemService;->restart(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public static setMultiprocessEnabled(Z)V
    .locals 2

    .line 1
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 5
    .line 6
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    sget-boolean p0, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 17
    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    sput-object p0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 35
    .line 36
    :cond_2
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method private static waitForServiceStartAndConnect()V
    .locals 5

    .line 1
    sget-boolean v0, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    sget-object v2, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    .line 14
    .line 15
    const-wide/16 v3, 0x1388

    .line 16
    .line 17
    invoke-static {v1, v2, v3, v4}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_2
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw v1

    .line 29
    :catch_0
    const-string v0, "WebViewZygote"

    .line 30
    .line 31
    const-string v2, "Timed out waiting for "

    .line 32
    .line 33
    invoke-static {v2, v1, v0}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    throw v1

    .line 40
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 41
    .line 42
    const-string v1, "Tried waiting for the WebView Zygote Service to start running without first starting the service."

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
