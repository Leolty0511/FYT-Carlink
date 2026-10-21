.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroid/inputmethodservice/SoftInputWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    packed-switch v0, :pswitch_data_1

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :pswitch_0
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :pswitch_1
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 30
    .line 31
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Landroid/os/Bundle;

    .line 36
    .line 37
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 38
    .line 39
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 42
    .line 43
    invoke-virtual {v0, v2, p1, v3}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_3
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 49
    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Landroid/graphics/Bitmap;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v1, p1

    .line 62
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 63
    .line 64
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 65
    .line 66
    if-nez v7, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 69
    .line 70
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Landroid/os/Bundle;

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Landroid/app/assist/AssistStructure;

    .line 77
    .line 78
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Ljava/lang/Throwable;

    .line 81
    .line 82
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Landroid/app/assist/AssistContent;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 92
    .line 93
    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 94
    .line 95
    move-object v3, p1

    .line 96
    check-cast v3, Landroid/os/Bundle;

    .line 97
    .line 98
    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 99
    .line 100
    move-object v4, p1

    .line 101
    check-cast v4, Landroid/app/assist/AssistStructure;

    .line 102
    .line 103
    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 104
    .line 105
    move-object v5, p1

    .line 106
    check-cast v5, Ljava/lang/Throwable;

    .line 107
    .line 108
    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 109
    .line 110
    move-object v6, p1

    .line 111
    check-cast v6, Landroid/app/assist/AssistContent;

    .line 112
    .line 113
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 114
    .line 115
    invoke-virtual/range {v2 .. v8}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :pswitch_5
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :pswitch_6
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_7
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 134
    .line 135
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Landroid/content/Intent;

    .line 138
    .line 139
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 140
    .line 141
    invoke-virtual {v0, v2, p1}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_8
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 146
    .line 147
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Landroid/content/Intent;

    .line 150
    .line 151
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 152
    .line 153
    invoke-virtual {v0, v2, p1}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 158
    .line 159
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 170
    .line 171
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 172
    .line 173
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v2, [Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->complete()V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :pswitch_b
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 188
    .line 189
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :pswitch_c
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 198
    .line 199
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    .line 202
    .line 203
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :pswitch_d
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 208
    .line 209
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :pswitch_e
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 218
    .line 219
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_f
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 228
    .line 229
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    .line 232
    .line 233
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    .line 234
    .line 235
    .line 236
    :goto_0
    if-eqz v1, :cond_1

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 239
    .line 240
    .line 241
    :cond_1
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_1
    .packed-switch 0x64
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

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    return-void
.end method
