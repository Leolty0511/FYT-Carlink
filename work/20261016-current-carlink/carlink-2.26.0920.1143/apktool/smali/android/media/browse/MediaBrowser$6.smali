.class Landroid/media/browse/MediaBrowser$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$6;->val$root:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$6;->val$session:Landroid/media/session/MediaSession$Token;

    iput-object p5, p0, Landroid/media/browse/MediaBrowser$6;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 4
    .line 5
    const-string/jumbo v2, "onConnect"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Landroid/media/browse/MediaBrowser;->access$900(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$000(Landroid/media/browse/MediaBrowser;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    const-string v2, "MediaBrowser"

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "onConnect from service while mState="

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$000(Landroid/media/browse/MediaBrowser;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$1000(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "... ignoring"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 61
    .line 62
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$root:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$1102(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 68
    .line 69
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$session:Landroid/media/session/MediaSession$Token;

    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$1202(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 75
    .line 76
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$extra:Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$1302(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 82
    .line 83
    const/4 v1, 0x3

    .line 84
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$002(Landroid/media/browse/MediaBrowser;I)I

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 88
    .line 89
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$800(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnected()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$1400(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroid/media/browse/MediaBrowser$Subscription;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/4 v5, 0x0

    .line 143
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-ge v5, v6, :cond_2

    .line 148
    .line 149
    :try_start_0
    iget-object v6, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 150
    .line 151
    invoke-static {v6}, Landroid/media/browse/MediaBrowser;->access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 160
    .line 161
    iget-object v7, v7, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    .line 162
    .line 163
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    check-cast v8, Landroid/os/Bundle;

    .line 168
    .line 169
    iget-object v9, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 170
    .line 171
    invoke-static {v9}, Landroid/media/browse/MediaBrowser;->access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-interface {v6, v3, v7, v8, v9}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v7, "addSubscription failed with RemoteException parentId="

    .line 182
    .line 183
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_3
    return-void
.end method
