.class Landroid/media/MediaDrm$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaDrm:Landroid/media/MediaDrm;

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaDrm;->access$000(Landroid/media/MediaDrm;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const-string v1, "MediaDrm"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p1, "MediaDrm went away with unhandled events"

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unknown message type "

    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    invoke-static {v0, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    instance-of v0, p1, Landroid/os/Parcel;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast p1, Landroid/os/Parcel;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    array-length v2, v0

    .line 62
    if-lez v2, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 65
    .line 66
    invoke-static {v2, p1}, Landroid/media/MediaDrm;->access$300(Landroid/media/MediaDrm;Landroid/os/Parcel;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 p1, 0x0

    .line 79
    :goto_0
    const-string v3, "Drm key status changed"

    .line 80
    .line 81
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 85
    .line 86
    invoke-static {v1}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v3, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 91
    .line 92
    invoke-interface {v1, v3, v0, v2, p1}, Landroid/media/MediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void

    .line 96
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    instance-of v0, p1, Landroid/os/Parcel;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    check-cast p1, Landroid/os/Parcel;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    array-length v2, v0

    .line 119
    if-lez v2, :cond_3

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v4, "Drm key expiration update: "

    .line 128
    .line 129
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 143
    .line 144
    invoke-static {p1}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 149
    .line 150
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/media/MediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    .line 151
    .line 152
    .line 153
    :cond_3
    return-void

    .line 154
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 155
    .line 156
    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    instance-of v2, v0, Landroid/os/Parcel;

    .line 167
    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    check-cast v0, Landroid/os/Parcel;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    array-length v3, v2

    .line 177
    const/4 v4, 0x0

    .line 178
    if-nez v3, :cond_4

    .line 179
    .line 180
    move-object v7, v4

    .line 181
    goto :goto_1

    .line 182
    :cond_4
    move-object v7, v2

    .line 183
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    array-length v2, v0

    .line 188
    if-nez v2, :cond_5

    .line 189
    .line 190
    move-object v10, v4

    .line 191
    goto :goto_2

    .line 192
    :cond_5
    move-object v10, v0

    .line 193
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v2, "Drm event ("

    .line 196
    .line 197
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, ","

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v2, ")"

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 228
    .line 229
    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    iget-object v6, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 234
    .line 235
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 236
    .line 237
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 238
    .line 239
    invoke-interface/range {v5 .. v10}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    .line 240
    .line 241
    .line 242
    :cond_6
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
