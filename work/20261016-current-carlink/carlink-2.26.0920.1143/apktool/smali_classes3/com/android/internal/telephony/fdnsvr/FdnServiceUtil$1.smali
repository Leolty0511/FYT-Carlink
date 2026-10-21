.class final Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "FdnService"

    .line 2
    .line 3
    const-string v0, "FdnService mConnection connected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->access$000()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/IFdnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IFdnService;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->access$102(Lcom/android/internal/telephony/IFdnService;)Lcom/android/internal/telephony/IFdnService;

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    sput-boolean p2, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->isConnected:Z

    .line 22
    .line 23
    invoke-static {}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->access$000()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 28
    .line 29
    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p2

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "FdnService"

    .line 2
    .line 3
    const-string v0, "FdnService mConnection unexpectedly disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->access$000()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->access$102(Lcom/android/internal/telephony/IFdnService;)Lcom/android/internal/telephony/IFdnService;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->isConnected:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->access$000()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 25
    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0
.end method
