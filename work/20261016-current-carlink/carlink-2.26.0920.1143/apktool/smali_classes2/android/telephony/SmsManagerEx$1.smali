.class Landroid/telephony/SmsManagerEx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManagerEx;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManagerEx;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SmsManagerEx$1;->this$0:Landroid/telephony/SmsManagerEx;

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
    const-string p1, "SmsManagerEx"

    .line 2
    .line 3
    const-string v0, "MmsNetwork connected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p1, p0, Landroid/telephony/SmsManagerEx$1;->this$0:Landroid/telephony/SmsManagerEx;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/internal/telephony/IMmsNetwork$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMmsNetwork;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Landroid/telephony/SmsManagerEx;->access$302(Landroid/telephony/SmsManagerEx;Lcom/android/internal/telephony/IMmsNetwork;)Lcom/android/internal/telephony/IMmsNetwork;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "SmsManagerEx"

    .line 2
    .line 3
    const-string v0, "MmsNetwork unexpectedly disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p1, p0, Landroid/telephony/SmsManagerEx$1;->this$0:Landroid/telephony/SmsManagerEx;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Landroid/telephony/SmsManagerEx;->access$302(Landroid/telephony/SmsManagerEx;Lcom/android/internal/telephony/IMmsNetwork;)Lcom/android/internal/telephony/IMmsNetwork;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method
