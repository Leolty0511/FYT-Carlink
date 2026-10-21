.class Landroid/service/media/MediaBrowserService$ServiceBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method public constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    iput p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 8
    .line 9
    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 21
    .line 22
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v1, v2, v3}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    .line 33
    .line 34
    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 35
    .line 36
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 37
    .line 38
    iput-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 39
    .line 40
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 41
    .line 42
    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 43
    .line 44
    iget v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    .line 45
    .line 46
    invoke-virtual {v4, v2, v5, v3}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 51
    .line 52
    const-string v3, "MediaBrowserService"

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "No root for client "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " from service "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 92
    .line 93
    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0, v1, v3}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 111
    .line 112
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 113
    .line 114
    invoke-static {v2}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 126
    .line 127
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 128
    .line 129
    iget-object v2, v2, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    .line 130
    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 134
    .line 135
    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 142
    .line 143
    iget-object v5, v5, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 144
    .line 145
    iget-object v5, v5, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    .line 146
    .line 147
    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v2, v4, v5, v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v2, "Calling onConnect() failed. Dropping client. pkg="

    .line 160
    .line 161
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 170
    .line 171
    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 172
    .line 173
    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_1
    :goto_0
    return-void
.end method
