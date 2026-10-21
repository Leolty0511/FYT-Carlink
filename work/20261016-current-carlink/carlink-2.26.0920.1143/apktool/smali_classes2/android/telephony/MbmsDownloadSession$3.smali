.class Landroid/telephony/MbmsDownloadSession$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method public constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

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
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->access$100(Landroid/telephony/MbmsDownloadSession;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/telephony/MbmsDownloadSession;->access$200(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 25
    .line 26
    const-string v1, "Error returned during initialization"

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/telephony/MbmsDownloadSession;->access$500(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 53
    .line 54
    invoke-static {p2}, Landroid/telephony/MbmsDownloadSession;->access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    const-string v1, "Middleware lost during initialization"

    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_1
    move-exception p1

    .line 79
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$300()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "Runtime exception during initialization"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 89
    .line 90
    const/16 v1, 0x67

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, v1, p1}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_2
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$300()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "Service died before initialization"

    .line 112
    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/telephony/MbmsDownloadSession;->access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
