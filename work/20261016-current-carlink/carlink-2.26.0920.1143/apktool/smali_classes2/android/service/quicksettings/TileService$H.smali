.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_SUCCESS:I = 0x7

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_TILE_ADDED:I = 0x3

.field private static final MSG_TILE_CLICKED:I = 0x5

.field private static final MSG_TILE_REMOVED:I = 0x4

.field private static final MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$100(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$000(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$500(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$500(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 44
    .line 45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Landroid/os/IBinder;

    .line 48
    .line 49
    invoke-static {v0, p1}, Landroid/service/quicksettings/TileService;->access$402(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_3
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 59
    .line 60
    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$300(Landroid/service/quicksettings/TileService;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 67
    .line 68
    invoke-static {p1, v1}, Landroid/service/quicksettings/TileService;->access$302(Landroid/service/quicksettings/TileService;Z)Z

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_4
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_5
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 89
    .line 90
    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$300(Landroid/service/quicksettings/TileService;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 97
    .line 98
    invoke-static {p1, v1}, Landroid/service/quicksettings/TileService;->access$302(Landroid/service/quicksettings/TileService;Z)Z

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_6
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 108
    .line 109
    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$300(Landroid/service/quicksettings/TileService;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_1

    .line 114
    .line 115
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    invoke-static {p1, v0}, Landroid/service/quicksettings/TileService;->access$302(Landroid/service/quicksettings/TileService;Z)Z

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 124
    .line 125
    .line 126
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
