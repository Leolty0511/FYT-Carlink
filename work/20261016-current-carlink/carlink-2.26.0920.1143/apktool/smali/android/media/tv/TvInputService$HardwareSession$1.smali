.class Landroid/media/tv/TvInputService$HardwareSession$1;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$HardwareSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$HardwareSession;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputService$HardwareSession;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1502(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1600(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->getToken()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 71
    .line 72
    invoke-static {p1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1800(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1500(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoAvailable()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1500(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoUnavailable(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
