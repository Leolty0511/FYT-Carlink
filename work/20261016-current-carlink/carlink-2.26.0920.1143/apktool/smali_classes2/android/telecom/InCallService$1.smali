.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method public constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0, p1}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 45
    .line 46
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0, p1}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 60
    .line 61
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Landroid/os/Bundle;

    .line 72
    .line 73
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 74
    .line 75
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v0, v1, v2}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :catchall_0
    move-exception v0

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :pswitch_3
    iget-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 93
    .line 94
    invoke-static {p1}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/telecom/Phone;->internalSilenceRinger()V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :pswitch_4
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 104
    .line 105
    invoke-static {v0}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 110
    .line 111
    if-ne p1, v1, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move v1, v2

    .line 115
    :goto_0
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :pswitch_5
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 121
    .line 122
    invoke-static {v0}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    if-ne p1, v1, :cond_2

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    move v1, v2

    .line 132
    :goto_1
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 138
    .line 139
    invoke-static {v0}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Landroid/telecom/CallAudioState;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 155
    .line 156
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v1, Ljava/lang/String;

    .line 163
    .line 164
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 165
    .line 166
    invoke-static {v2}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :pswitch_8
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 183
    .line 184
    invoke-static {v0}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p1, Landroid/telecom/ParcelableCall;

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :pswitch_9
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 197
    .line 198
    invoke-static {v0}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p1, Landroid/telecom/ParcelableCall;

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :pswitch_a
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 221
    .line 222
    new-instance v2, Landroid/telecom/Phone;

    .line 223
    .line 224
    new-instance v3, Landroid/telecom/InCallAdapter;

    .line 225
    .line 226
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lcom/android/internal/telecom/IInCallAdapter;

    .line 229
    .line 230
    invoke-direct {v3, p1}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 244
    .line 245
    invoke-direct {v2, v3, v0, p1}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {v1, v2}, Landroid/telecom/InCallService;->access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 252
    .line 253
    invoke-static {p1}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 258
    .line 259
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 267
    .line 268
    invoke-static {p1}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    .line 273
    .line 274
    .line 275
    :goto_2
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
