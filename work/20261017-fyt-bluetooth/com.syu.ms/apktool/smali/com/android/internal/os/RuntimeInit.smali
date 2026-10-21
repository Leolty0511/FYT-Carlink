.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    return-void
.end method

.method public static final a()Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public static final b(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->a:Landroid/os/IBinder;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/RuntimeInit;->a:Landroid/os/IBinder;

    new-instance v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v2, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, p0, v2}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/16 p0, 0xa

    .line 3
    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "AndroidRuntime"

    const-string v1, "Error reporting WTF"

    .line 4
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "Original WTF:"

    .line 5
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
