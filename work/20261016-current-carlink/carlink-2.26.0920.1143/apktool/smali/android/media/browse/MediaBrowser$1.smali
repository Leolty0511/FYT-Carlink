.class Landroid/media/browse/MediaBrowser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$000(Landroid/media/browse/MediaBrowser;)I

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
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$002(Landroid/media/browse/MediaBrowser;I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v1, "android.media.browse.MediaBrowserService"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 40
    .line 41
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$300(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 49
    .line 50
    new-instance v2, Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-direct {v2, v1, v3}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$1;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/media/browse/MediaBrowser;->access$402(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 57
    .line 58
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 60
    .line 61
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$600(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 66
    .line 67
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$400(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    .line 74
    .line 75
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "Failed binding to service "

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 85
    .line 86
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$300(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "MediaBrowser"

    .line 98
    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    :goto_0
    if-nez v0, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 106
    .line 107
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$700(Landroid/media/browse/MediaBrowser;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 111
    .line 112
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$800(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    .line 117
    .line 118
    .line 119
    :cond_1
    return-void

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string/jumbo v2, "mServiceCallbacks should be null. Instead it is "

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 131
    .line 132
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string/jumbo v2, "mServiceBinder should be null. Instead it is "

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    .line 158
    .line 159
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method
