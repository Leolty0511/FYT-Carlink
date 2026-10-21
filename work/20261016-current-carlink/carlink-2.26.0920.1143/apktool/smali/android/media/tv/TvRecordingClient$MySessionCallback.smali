.class Landroid/media/tv/TvRecordingClient$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvRecordingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySessionCallback"
.end annotation


# instance fields
.field mChannelUri:Landroid/net/Uri;

.field mConnectionParams:Landroid/os/Bundle;

.field final mInputId:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/tv/TvRecordingClient;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$000(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvRecordingClient"

    .line 10
    .line 11
    const-string/jumbo p2, "onError - session not created"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onError(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$000(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvRecordingClient"

    .line 10
    .line 11
    const-string/jumbo p2, "onRecordingStopped - session not created"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$502(Landroid/media/tv/TvRecordingClient;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onRecordingStopped(Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->access$000(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const-string v0, "TvRecordingClient"

    .line 10
    .line 11
    const-string/jumbo v1, "onSessionCreated - session already created"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/media/tv/TvRecordingClient;->access$102(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$200(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/util/Pair;

    .line 51
    .line 52
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 53
    .line 54
    invoke-static {v1}, Landroid/media/tv/TvRecordingClient;->access$100(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 71
    .line 72
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$200(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 80
    .line 81
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$100(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 86
    .line 87
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$002(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 100
    .line 101
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 108
    .line 109
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onConnectionFailed(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_1
    return-void
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$000(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvRecordingClient"

    .line 10
    .line 11
    const-string/jumbo p2, "onSessionEvent - session not created"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$000(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvRecordingClient"

    .line 10
    .line 11
    const-string/jumbo v0, "onSessionReleased - session not created"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$402(Landroid/media/tv/TvRecordingClient;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$502(Landroid/media/tv/TvRecordingClient;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$002(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$102(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 49
    .line 50
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onDisconnected(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$000(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvRecordingClient"

    .line 10
    .line 11
    const-string/jumbo p2, "onTuned - session not created"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->access$402(Landroid/media/tv/TvRecordingClient;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->access$300(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onTuned(Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
