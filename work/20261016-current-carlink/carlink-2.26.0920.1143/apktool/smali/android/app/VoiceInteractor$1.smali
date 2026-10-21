.class Landroid/app/VoiceInteractor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VoiceInteractor;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor;)V
    .locals 0

    iput-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4
    .line 5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :pswitch_0
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->onCancel()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v2

    .line 41
    :goto_0
    iget-object v4, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    .line 42
    .line 43
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 46
    .line 47
    invoke-virtual {v4, v5, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    check-cast v5, Landroid/app/VoiceInteractor$CommandRequest;

    .line 55
    .line 56
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    move v2, v3

    .line 61
    :cond_1
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v5, v2, p1}, Landroid/app/VoiceInteractor$CommandRequest;->onCommandResult(ZLandroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :pswitch_2
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 80
    .line 81
    invoke-virtual {p1, v1, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    move-object v1, p1

    .line 88
    check-cast v1, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/app/VoiceInteractor$AbortVoiceRequest;->onAbortResult(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 106
    .line 107
    invoke-virtual {p1, v1, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    move-object v1, p1

    .line 114
    check-cast v1, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->onCompleteResult(Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 128
    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    move v2, v3

    .line 132
    :cond_2
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 137
    .line 138
    invoke-virtual {p1, v1, v2}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    move-object v1, p1

    .line 145
    check-cast v1, Landroid/app/VoiceInteractor$PickOptionRequest;

    .line 146
    .line 147
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Landroid/os/Bundle;

    .line 154
    .line 155
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_5
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    .line 165
    .line 166
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v4, Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 169
    .line 170
    invoke-virtual {v1, v4, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    move-object v4, v1

    .line 177
    check-cast v4, Landroid/app/VoiceInteractor$ConfirmationRequest;

    .line 178
    .line 179
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 180
    .line 181
    if-eqz p1, :cond_3

    .line 182
    .line 183
    move v2, v3

    .line 184
    :cond_3
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p1, Landroid/os/Bundle;

    .line 187
    .line 188
    invoke-virtual {v4, v2, p1}, Landroid/app/VoiceInteractor$ConfirmationRequest;->onConfirmationResult(ZLandroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_1
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
