.class Landroid/media/tv/TvView$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySessionCallback"
.end annotation


# instance fields
.field mChannelUri:Landroid/net/Uri;

.field final mInputId:Ljava/lang/String;

.field mRecordedProgramUri:Landroid/net/Uri;

.field mTuneParams:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 5
    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 6
    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 4
    iput-object p4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onChannelRetuned - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo v0, "onContentAllowed - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onContentAllowed(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onContentBlocked - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onLayoutSurface - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/media/tv/TvView;->access$2102(Landroid/media/tv/TvView;I)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 24
    .line 25
    invoke-static {p1, p3}, Landroid/media/tv/TvView;->access$2202(Landroid/media/tv/TvView;I)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 29
    .line 30
    invoke-static {p1, p4}, Landroid/media/tv/TvView;->access$2302(Landroid/media/tv/TvView;I)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 34
    .line 35
    invoke-static {p1, p5}, Landroid/media/tv/TvView;->access$2402(Landroid/media/tv/TvView;I)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-static {p1, p2}, Landroid/media/tv/TvView;->access$2502(Landroid/media/tv/TvView;Z)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const-string v0, "TvView"

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
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/media/tv/TvView;->access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_8

    .line 29
    .line 30
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;

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
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 53
    .line 54
    invoke-static {v1}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 71
    .line 72
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/media/tv/TvView;->access$1100()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    monitor-enter p1

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 93
    .line 94
    invoke-static {}, Landroid/media/tv/TvView;->access$1200()Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-ne v0, v1, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 105
    .line 106
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1300(Landroid/media/tv/TvView;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 113
    .line 114
    invoke-static {v0}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 119
    .line 120
    .line 121
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 123
    .line 124
    invoke-static {p1}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 131
    .line 132
    invoke-static {p1}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 140
    .line 141
    invoke-static {p1}, Landroid/media/tv/TvView;->access$300(Landroid/media/tv/TvView;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 148
    .line 149
    invoke-static {p1}, Landroid/media/tv/TvView;->access$000(Landroid/media/tv/TvView;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 154
    .line 155
    invoke-static {v1}, Landroid/media/tv/TvView;->access$100(Landroid/media/tv/TvView;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 160
    .line 161
    invoke-static {v2}, Landroid/media/tv/TvView;->access$200(Landroid/media/tv/TvView;)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-static {p1, v0, v1, v2}, Landroid/media/tv/TvView;->access$400(Landroid/media/tv/TvView;III)V

    .line 166
    .line 167
    .line 168
    :cond_4
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 169
    .line 170
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1400(Landroid/media/tv/TvView;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 174
    .line 175
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1500(Landroid/media/tv/TvView;)Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 182
    .line 183
    invoke-static {p1}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 188
    .line 189
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1500(Landroid/media/tv/TvView;)Ljava/lang/Float;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 201
    .line 202
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1600(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-eqz p1, :cond_6

    .line 207
    .line 208
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 209
    .line 210
    invoke-static {p1}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 215
    .line 216
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1600(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    .line 225
    .line 226
    .line 227
    :cond_6
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 228
    .line 229
    if-eqz p1, :cond_7

    .line 230
    .line 231
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 232
    .line 233
    invoke-static {p1}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 238
    .line 239
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    .line 240
    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_7
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 246
    .line 247
    invoke-static {p1}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPlay(Landroid/net/Uri;)V

    .line 254
    .line 255
    .line 256
    :goto_1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 257
    .line 258
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    throw v0

    .line 265
    :cond_8
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 272
    .line 273
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_9

    .line 278
    .line 279
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 280
    .line 281
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onConnectionFailed(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_9
    :goto_2
    return-void
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$1902(Landroid/media/tv/TvView;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$2002(Landroid/media/tv/TvView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/media/tv/TvView;->access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 49
    .line 50
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onDisconnected(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onTimeShiftCurrentPositionChanged - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onTimeShiftStartPositionChanged - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onTimeShiftStatusChanged - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onTrackSelected - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onTracksChanged - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTracksChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo v0, "onVideoAvailable - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onVideoAvailable(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onVideoSizeChanged - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onVideoSizeChanged(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TvView"

    .line 10
    .line 11
    const-string/jumbo p2, "onVideoUnavailable - session not created"

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
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onVideoUnavailable(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
