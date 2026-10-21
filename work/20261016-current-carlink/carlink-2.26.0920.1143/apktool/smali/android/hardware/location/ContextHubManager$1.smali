.class Landroid/hardware/location/ContextHubManager$1;
.super Landroid/hardware/location/IContextHubCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubManager;


# direct methods
.method public constructor <init>(Landroid/hardware/location/ContextHubManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$000(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$000(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$100(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->access$200(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$100(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    new-instance v7, Landroid/hardware/location/ContextHubManager$1$1;

    .line 43
    .line 44
    move-object v1, v7

    .line 45
    move-object v2, p0

    .line 46
    move v4, p1

    .line 47
    move v5, p2

    .line 48
    move-object v6, p3

    .line 49
    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$1$1;-><init>(Landroid/hardware/location/ContextHubManager$1;Landroid/hardware/location/ContextHubManager$Callback;IILandroid/hardware/location/ContextHubMessage;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1

    .line 60
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 61
    .line 62
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$300(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->access$300(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$ICallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    throw p1

    .line 83
    :cond_2
    const-string p1, "ContextHubManager"

    .line 84
    .line 85
    const-string p2, "Context hub manager client callback is NULL"

    .line 86
    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method
