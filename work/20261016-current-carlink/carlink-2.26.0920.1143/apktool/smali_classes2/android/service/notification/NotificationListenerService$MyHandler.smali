.class final Landroid/service/notification/NotificationListenerService$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_INTERRUPTION_FILTER_CHANGED:I = 0x6

.field public static final MSG_ON_LISTENER_CONNECTED:I = 0x3

.field public static final MSG_ON_LISTENER_HINTS_CHANGED:I = 0x5

.field public static final MSG_ON_NOTIFICATION_CHANNEL_GROUP_MODIFIED:I = 0x8

.field public static final MSG_ON_NOTIFICATION_CHANNEL_MODIFIED:I = 0x7

.field public static final MSG_ON_NOTIFICATION_POSTED:I = 0x1

.field public static final MSG_ON_NOTIFICATION_RANKING_UPDATE:I = 0x4

.field public static final MSG_ON_NOTIFICATION_REMOVED:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method public constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroid/os/UserHandle;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 42
    .line 43
    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroid/os/UserHandle;

    .line 58
    .line 59
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Landroid/app/NotificationChannel;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 72
    .line 73
    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 78
    .line 79
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 96
    .line 97
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_5
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 112
    .line 113
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 116
    .line 117
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 120
    .line 121
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 141
    .line 142
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 145
    .line 146
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
