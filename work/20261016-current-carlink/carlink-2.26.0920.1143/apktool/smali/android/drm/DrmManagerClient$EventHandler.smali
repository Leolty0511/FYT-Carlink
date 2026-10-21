.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

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
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/16 v2, 0x3e9

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x3ea

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Unknown message type "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p1, p1, Landroid/os/Message;->what:I

    .line 25
    .line 26
    const-string v1, "DrmManagerClient"

    .line 27
    .line 28
    invoke-static {v0, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroid/drm/DrmInfo;

    .line 35
    .line 36
    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 37
    .line 38
    iget v2, v1, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 39
    .line 40
    invoke-static {v1, v2, p1}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "drm_info_status_object"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v2, "drm_info_object"

    .line 50
    .line 51
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget v2, v1, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-ne v4, v2, :cond_1

    .line 60
    .line 61
    new-instance p1, Landroid/drm/DrmEvent;

    .line 62
    .line 63
    iget-object v2, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 64
    .line 65
    iget v4, v2, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 66
    .line 67
    iget v1, v1, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 68
    .line 69
    invoke-static {v2, v1}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-direct {p1, v4, v1, v3, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget p1, v1, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->getInfoType()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    :goto_0
    new-instance v1, Landroid/drm/DrmErrorEvent;

    .line 87
    .line 88
    iget-object v2, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 89
    .line 90
    iget v4, v2, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 91
    .line 92
    invoke-static {v2, p1}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-direct {v1, v4, p1, v3, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 97
    .line 98
    .line 99
    move-object p1, v1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 102
    .line 103
    iget v0, p1, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 104
    .line 105
    invoke-static {p1, v0}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    new-instance p1, Landroid/drm/DrmEvent;

    .line 112
    .line 113
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 114
    .line 115
    iget v0, v0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 116
    .line 117
    invoke-direct {p1, v0, v2, v3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    move-object v5, v3

    .line 121
    move-object v3, p1

    .line 122
    move-object p1, v5

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-instance p1, Landroid/drm/DrmErrorEvent;

    .line 125
    .line 126
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 127
    .line 128
    iget v0, v0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 129
    .line 130
    const/16 v1, 0x7d7

    .line 131
    .line 132
    invoke-direct {p1, v0, v1, v3}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 136
    .line 137
    invoke-static {v0}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    if-eqz v3, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 146
    .line 147
    invoke-static {v0}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 152
    .line 153
    invoke-interface {v0, v1, v3}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 157
    .line 158
    invoke-static {v0}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_6

    .line 163
    .line 164
    if-eqz p1, :cond_6

    .line 165
    .line 166
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 167
    .line 168
    invoke-static {v0}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 173
    .line 174
    invoke-interface {v0, v1, p1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    return-void
.end method
