.class Landroid/app/ActivityThread$StopInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopInfo"
.end annotation


# instance fields
.field activity:Landroid/app/ActivityThread$ActivityClientRecord;

.field description:Ljava/lang/CharSequence;

.field persistentState:Landroid/os/PersistableBundle;

.field state:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ActivityThread$StopInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6
    .line 7
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v3, p0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    .line 12
    .line 13
    iget-object v4, p0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Landroid/util/LogWriter;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    const-string v3, "ActivityThread"

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 29
    .line 30
    const-string v4, "  "

    .line 31
    .line 32
    invoke-direct {v2, v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Bundle stats:"

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "PersistableBundle stats:"

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    .line 53
    .line 54
    .line 55
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v1, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 60
    .line 61
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0x18

    .line 68
    .line 69
    if-ge v1, v2, :cond_0

    .line 70
    .line 71
    const-string v1, "App sent too much data in instance state, so it was ignored"

    .line 72
    .line 73
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    throw v0
.end method
