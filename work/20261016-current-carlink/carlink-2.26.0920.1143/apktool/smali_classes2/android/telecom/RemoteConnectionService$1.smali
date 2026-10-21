.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method public constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    .line 1
    new-instance p3, Landroid/telecom/RemoteConference;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p3, p1, v0}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 33
    .line 34
    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/telecom/RemoteConnection;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p3, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/RemoteConference;->getConnections()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    new-array p1, p1, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string p2, "addConferenceCall - skipping"

    .line 64
    .line 65
    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionProperties()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getExtras()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p3, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 98
    .line 99
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    new-instance p2, Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v0, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    .line 112
    .line 113
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Landroid/telecom/RemoteConnectionService$1$1;

    .line 120
    .line 121
    invoke-direct {p2, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p2}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 128
    .line 129
    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, p3}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .locals 6

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    iget v5, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 26
    .line 27
    new-instance p3, Landroid/telecom/RemoteConnection;

    .line 28
    .line 29
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v0, p3

    .line 36
    move-object v1, p1

    .line 37
    move-object v3, p2

    .line 38
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 42
    .line 43
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    new-instance p2, Landroid/telecom/RemoteConnectionService$1$2;

    .line 51
    .line 52
    invoke-direct {p2, p0, p1}, Landroid/telecom/RemoteConnectionService$1$2;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p2}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 59
    .line 60
    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p3}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string p4, "handleCreateConnectionSuccessful"

    .line 4
    .line 5
    invoke-static {p2, p1, p4}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$100()Landroid/telecom/RemoteConnection;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eq p1, p2, :cond_7

    .line 14
    .line 15
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_7

    .line 26
    .line 27
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 28
    .line 29
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/4 p4, 0x6

    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eq p2, p4, :cond_1

    .line 62
    .line 63
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eq p2, p4, :cond_3

    .line 85
    .line 86
    :cond_2
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-ne p2, p4, :cond_4

    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 116
    .line 117
    .line 118
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Ljava/lang/String;

    .line 142
    .line 143
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 144
    .line 145
    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 156
    .line 157
    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getState()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-ne p2, p4, :cond_7

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 186
    .line 187
    .line 188
    :cond_7
    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 14
    .line 15
    const-string v0, "onConnectionEvent"

    .line 16
    .line 17
    invoke-static {p4, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/telecom/RemoteConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "onPostDialChar"

    .line 4
    .line 5
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "onPostDialWait"

    .line 4
    .line 5
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 10
    .line 11
    const-string v0, "onRemoteRttRequest"

    .line 12
    .line 13
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->onRemoteRttRequest()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string p2, "onRemoteRttRequest called on a remote conference"

    .line 25
    .line 26
    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 10
    .line 11
    const-string v0, "onRttInitiationFailure"

    .line 12
    .line 13
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->onRttInitiationFailure(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string p2, "onRttInitiationFailure called on a remote conference"

    .line 25
    .line 26
    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 10
    .line 11
    const-string v0, "onRttInitiationSuccess"

    .line 12
    .line 13
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->onRttInitiationSuccess()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string p2, "onRttInitiationSuccess called on a remote conference"

    .line 25
    .line 26
    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 10
    .line 11
    const-string v0, "onRttSessionRemotelyTerminated"

    .line 12
    .line 13
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->onRttSessionRemotelyTerminated()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string p2, "onRttSessionRemotelyTerminated called on a remote conference"

    .line 25
    .line 26
    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const-string v0, "putExtras"

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 12
    .line 13
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 22
    .line 23
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V
    .locals 0

    return-void
.end method

.method public removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "removeCall"

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 26
    .line 27
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/telecom/RemoteConference;->setDestroyed()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const-string v0, "removeExtra"

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 12
    .line 13
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->removeExtras(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 22
    .line 23
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->removeExtras(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x4

    .line 12
    const-string v1, "setActive"

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 17
    .line 18
    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 27
    .line 28
    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setAddress"

    .line 4
    .line 5
    invoke-static {p4, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAudioRoute(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 0

    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setCallerDisplayName"

    .line 4
    .line 5
    invoke-static {p4, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 0

    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 49
    .line 50
    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const-string v0, "setConferenceableConnections"

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 59
    .line 60
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p3}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 69
    .line 70
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p3}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string v0, "setConnectionCapabilities"

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 26
    .line 27
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string v0, "setConnectionProperties"

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 26
    .line 27
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setDialing"

    .line 4
    .line 5
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x3

    .line 10
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string v0, "setDisconnected"

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 26
    .line 27
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setIsConferenced"

    .line 4
    .line 5
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$100()Landroid/telecom/RemoteConnection;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eq p1, p3, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 32
    .line 33
    invoke-static {p3, p2, v0}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$500()Landroid/telecom/RemoteConference;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-eq p2, p3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setIsVoipAudioMode"

    .line 4
    .line 5
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x5

    .line 12
    const-string v1, "setOnHold"

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 17
    .line 18
    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 27
    .line 28
    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setPulling"

    .line 4
    .line 5
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x7

    .line 10
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setRingbackRequested"

    .line 4
    .line 5
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string v0, "setRinging"

    .line 4
    .line 5
    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string/jumbo v0, "setStatusHints"

    .line 4
    .line 5
    .line 6
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    new-instance v1, Landroid/telecom/RemoteConnection$VideoProvider;

    .line 30
    .line 31
    invoke-direct {v1, p2, p3, v0}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 37
    .line 38
    const-string/jumbo p3, "setVideoProvider"

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p1, p3}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    const-string/jumbo v0, "setVideoState"

    .line 4
    .line 5
    .line 6
    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
