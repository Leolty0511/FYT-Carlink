.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field private static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 17
    .line 18
    new-instance p1, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public closeConnection()V
    .locals 1

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7

    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1

    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    const-string v0, "commitContent with invalid inputContentInfo="

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/16 v2, 0x50

    .line 6
    .line 7
    if-eq v1, v2, :cond_32

    .line 8
    .line 9
    const/16 v2, 0x51

    .line 10
    .line 11
    if-eq v1, v2, :cond_2f

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const-string v0, "IInputConnectionWrapper"

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Unhandled message code: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    .line 32
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 37
    .line 38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 41
    .line 42
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lcom/android/internal/view/IInputContextCallback;

    .line 45
    .line 46
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v6, Landroid/view/inputmethod/InputContentInfo;

    .line 64
    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-interface {v5, v6, v1, v0}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-interface {v3, v0, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_0
    const-string v1, "IInputConnectionWrapper"

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-interface {v3, v2, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    :goto_1
    :try_start_1
    const-string v0, "IInputConnectionWrapper"

    .line 111
    .line 112
    const-string v1, "commitContent on inactive InputConnection"

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-interface {v3, v2, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto :goto_3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_2
    const-string v1, "IInputConnectionWrapper"

    .line 128
    .line 129
    const-string v2, "Got RemoteException calling commitContent"

    .line 130
    .line 131
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    const/4 p1, 0x1

    .line 150
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 154
    if-nez v0, :cond_5

    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter v1

    .line 159
    :try_start_4
    iput-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 160
    .line 161
    iput-boolean p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 162
    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 165
    :catchall_1
    move-exception p1

    .line 166
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    throw p1

    .line 168
    :cond_5
    :try_start_5
    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    and-int/lit8 v1, v1, 0x40

    .line 173
    .line 174
    if-nez v1, :cond_6

    .line 175
    .line 176
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 180
    .line 181
    monitor-enter v0

    .line 182
    :try_start_6
    iput-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 183
    .line 184
    iput-boolean p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 185
    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 188
    :catchall_2
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    throw p1

    .line 191
    :catchall_3
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 193
    .line 194
    monitor-enter v1

    .line 195
    :try_start_7
    iput-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 196
    .line 197
    iput-boolean p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 198
    .line 199
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 200
    throw v0

    .line 201
    :catchall_4
    move-exception p1

    .line 202
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 203
    throw p1

    .line 204
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 207
    .line 208
    :try_start_9
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 211
    .line 212
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    if-eqz v4, :cond_8

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-nez v5, :cond_7

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 228
    .line 229
    invoke-interface {v4, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    invoke-interface {v1, p1, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_8
    :goto_4
    const-string p1, "IInputConnectionWrapper"

    .line 238
    .line 239
    const-string v4, "requestCursorAnchorInfo on inactive InputConnection"

    .line 240
    .line 241
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :catchall_5
    move-exception p1

    .line 252
    goto :goto_6

    .line 253
    :catch_1
    move-exception p1

    .line 254
    :try_start_a
    const-string v1, "IInputConnectionWrapper"

    .line 255
    .line 256
    const-string v2, "Got RemoteException calling requestCursorAnchorInfo"

    .line 257
    .line 258
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 259
    .line 260
    .line 261
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_9

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 283
    .line 284
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_a
    :goto_7
    const-string p1, "IInputConnectionWrapper"

    .line 289
    .line 290
    const-string v0, "clearMetaKeyStates on inactive InputConnection"

    .line 291
    .line 292
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :sswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 299
    .line 300
    :try_start_b
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v0, Ljava/lang/String;

    .line 303
    .line 304
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v1, Landroid/os/Bundle;

    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    if-eqz v2, :cond_c

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-nez v3, :cond_b

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_b
    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_c
    :goto_8
    :try_start_c
    const-string v0, "IInputConnectionWrapper"

    .line 329
    .line 330
    const-string v1, "performPrivateCommand on inactive InputConnection"

    .line 331
    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :catchall_6
    move-exception v0

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    if-eqz p1, :cond_e

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-nez v0, :cond_d

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_d
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_e
    :goto_9
    const-string p1, "IInputConnectionWrapper"

    .line 362
    .line 363
    const-string v0, "endBatchEdit on inactive InputConnection"

    .line 364
    .line 365
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    if-eqz p1, :cond_10

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-nez v0, :cond_f

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_f
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_10
    :goto_a
    const-string p1, "IInputConnectionWrapper"

    .line 387
    .line 388
    const-string v0, "beginBatchEdit on inactive InputConnection"

    .line 389
    .line 390
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    if-eqz v0, :cond_12

    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_11

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast p1, Landroid/view/KeyEvent;

    .line 410
    .line 411
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_12
    :goto_b
    const-string p1, "IInputConnectionWrapper"

    .line 419
    .line 420
    const-string v0, "sendKeyEvent on inactive InputConnection"

    .line 421
    .line 422
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_13

    .line 431
    .line 432
    return-void

    .line 433
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    if-nez p1, :cond_14

    .line 438
    .line 439
    const-string p1, "IInputConnectionWrapper"

    .line 440
    .line 441
    const-string v0, "finishComposingText on inactive InputConnection"

    .line 442
    .line 443
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :cond_14
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    if-eqz v0, :cond_16

    .line 456
    .line 457
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-nez v1, :cond_15

    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 465
    .line 466
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 467
    .line 468
    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 469
    .line 470
    .line 471
    return-void

    .line 472
    :cond_16
    :goto_c
    const-string p1, "IInputConnectionWrapper"

    .line 473
    .line 474
    const-string v0, "setComposingRegion on inactive InputConnection"

    .line 475
    .line 476
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    if-eqz v0, :cond_18

    .line 485
    .line 486
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_17

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v1, Ljava/lang/CharSequence;

    .line 496
    .line 497
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 498
    .line 499
    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 503
    .line 504
    .line 505
    return-void

    .line 506
    :cond_18
    :goto_d
    const-string p1, "IInputConnectionWrapper"

    .line 507
    .line 508
    const-string v0, "commitText on inactive InputConnection"

    .line 509
    .line 510
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 517
    .line 518
    :try_start_d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 521
    .line 522
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 523
    .line 524
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    if-eqz v4, :cond_1a

    .line 529
    .line 530
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    if-nez v5, :cond_19

    .line 535
    .line 536
    goto :goto_e

    .line 537
    :cond_19
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast v3, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 540
    .line 541
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 542
    .line 543
    invoke-interface {v4, v3, p1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-interface {v1, p1, v2}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    .line 548
    .line 549
    .line 550
    goto :goto_f

    .line 551
    :cond_1a
    :goto_e
    const-string p1, "IInputConnectionWrapper"

    .line 552
    .line 553
    const-string v4, "getExtractedText on inactive InputConnection"

    .line 554
    .line 555
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    invoke-interface {v1, v3, v2}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 562
    .line 563
    .line 564
    return-void

    .line 565
    :catchall_7
    move-exception p1

    .line 566
    goto :goto_10

    .line 567
    :catch_2
    move-exception p1

    .line 568
    :try_start_e
    const-string v1, "IInputConnectionWrapper"

    .line 569
    .line 570
    const-string v2, "Got RemoteException calling setExtractedText"

    .line 571
    .line 572
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 573
    .line 574
    .line 575
    :goto_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 580
    .line 581
    .line 582
    throw p1

    .line 583
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 586
    .line 587
    :try_start_f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 590
    .line 591
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 592
    .line 593
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    if-eqz v4, :cond_1c

    .line 598
    .line 599
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-nez v5, :cond_1b

    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_1b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 607
    .line 608
    invoke-interface {v4, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    invoke-interface {v1, p1, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    .line 613
    .line 614
    .line 615
    goto :goto_12

    .line 616
    :cond_1c
    :goto_11
    const-string p1, "IInputConnectionWrapper"

    .line 617
    .line 618
    const-string v4, "getCursorCapsMode on inactive InputConnection"

    .line 619
    .line 620
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 627
    .line 628
    .line 629
    return-void

    .line 630
    :catchall_8
    move-exception p1

    .line 631
    goto :goto_13

    .line 632
    :catch_3
    move-exception p1

    .line 633
    :try_start_10
    const-string v1, "IInputConnectionWrapper"

    .line 634
    .line 635
    const-string v2, "Got RemoteException calling setCursorCapsMode"

    .line 636
    .line 637
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 638
    .line 639
    .line 640
    :goto_12
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 641
    .line 642
    .line 643
    return-void

    .line 644
    :goto_13
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 645
    .line 646
    .line 647
    throw p1

    .line 648
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 651
    .line 652
    :try_start_11
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 655
    .line 656
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 657
    .line 658
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    if-eqz v4, :cond_1e

    .line 663
    .line 664
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-nez v5, :cond_1d

    .line 669
    .line 670
    goto :goto_14

    .line 671
    :cond_1d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 672
    .line 673
    invoke-interface {v4, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    invoke-interface {v1, p1, v2}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    .line 678
    .line 679
    .line 680
    goto :goto_15

    .line 681
    :cond_1e
    :goto_14
    const-string p1, "IInputConnectionWrapper"

    .line 682
    .line 683
    const-string v4, "getSelectedText on inactive InputConnection"

    .line 684
    .line 685
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    invoke-interface {v1, v3, v2}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :catchall_9
    move-exception p1

    .line 696
    goto :goto_16

    .line 697
    :catch_4
    move-exception p1

    .line 698
    :try_start_12
    const-string v1, "IInputConnectionWrapper"

    .line 699
    .line 700
    const-string v2, "Got RemoteException calling setSelectedText"

    .line 701
    .line 702
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 703
    .line 704
    .line 705
    :goto_15
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 706
    .line 707
    .line 708
    return-void

    .line 709
    :goto_16
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 710
    .line 711
    .line 712
    throw p1

    .line 713
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 716
    .line 717
    :try_start_13
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 718
    .line 719
    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 720
    .line 721
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 722
    .line 723
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    if-eqz v4, :cond_20

    .line 728
    .line 729
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    if-nez v5, :cond_1f

    .line 734
    .line 735
    goto :goto_17

    .line 736
    :cond_1f
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 737
    .line 738
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 739
    .line 740
    invoke-interface {v4, v3, p1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    invoke-interface {v1, p1, v2}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    .line 745
    .line 746
    .line 747
    goto :goto_18

    .line 748
    :cond_20
    :goto_17
    const-string p1, "IInputConnectionWrapper"

    .line 749
    .line 750
    const-string v4, "getTextBeforeCursor on inactive InputConnection"

    .line 751
    .line 752
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    invoke-interface {v1, v3, v2}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 759
    .line 760
    .line 761
    return-void

    .line 762
    :catchall_a
    move-exception p1

    .line 763
    goto :goto_19

    .line 764
    :catch_5
    move-exception p1

    .line 765
    :try_start_14
    const-string v1, "IInputConnectionWrapper"

    .line 766
    .line 767
    const-string v2, "Got RemoteException calling setTextBeforeCursor"

    .line 768
    .line 769
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 770
    .line 771
    .line 772
    :goto_18
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 773
    .line 774
    .line 775
    return-void

    .line 776
    :goto_19
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 777
    .line 778
    .line 779
    throw p1

    .line 780
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 783
    .line 784
    :try_start_15
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 785
    .line 786
    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 787
    .line 788
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 789
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    if-eqz v4, :cond_22

    .line 795
    .line 796
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 797
    .line 798
    .line 799
    move-result v5

    .line 800
    if-nez v5, :cond_21

    .line 801
    .line 802
    goto :goto_1a

    .line 803
    :cond_21
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 804
    .line 805
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 806
    .line 807
    invoke-interface {v4, v3, p1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    .line 808
    .line 809
    .line 810
    move-result-object p1

    .line 811
    invoke-interface {v1, p1, v2}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    .line 812
    .line 813
    .line 814
    goto :goto_1b

    .line 815
    :cond_22
    :goto_1a
    const-string p1, "IInputConnectionWrapper"

    .line 816
    .line 817
    const-string v4, "getTextAfterCursor on inactive InputConnection"

    .line 818
    .line 819
    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    invoke-interface {v1, v3, v2}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 823
    .line 824
    .line 825
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :catchall_b
    move-exception p1

    .line 830
    goto :goto_1c

    .line 831
    :catch_6
    move-exception p1

    .line 832
    :try_start_16
    const-string v1, "IInputConnectionWrapper"

    .line 833
    .line 834
    const-string v2, "Got RemoteException calling setTextAfterCursor"

    .line 835
    .line 836
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 837
    .line 838
    .line 839
    :goto_1b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 840
    .line 841
    .line 842
    return-void

    .line 843
    :goto_1c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 844
    .line 845
    .line 846
    throw p1

    .line 847
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    if-eqz v0, :cond_24

    .line 852
    .line 853
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    if-nez v1, :cond_23

    .line 858
    .line 859
    goto :goto_1d

    .line 860
    :cond_23
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v1, Ljava/lang/CharSequence;

    .line 863
    .line 864
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 865
    .line 866
    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 867
    .line 868
    .line 869
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 870
    .line 871
    .line 872
    return-void

    .line 873
    :cond_24
    :goto_1d
    const-string p1, "IInputConnectionWrapper"

    .line 874
    .line 875
    const-string v0, "setComposingText on inactive InputConnection"

    .line 876
    .line 877
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    return-void

    .line 881
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    if-eqz v0, :cond_26

    .line 886
    .line 887
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    if-nez v1, :cond_25

    .line 892
    .line 893
    goto :goto_1e

    .line 894
    :cond_25
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 895
    .line 896
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 897
    .line 898
    .line 899
    return-void

    .line 900
    :cond_26
    :goto_1e
    const-string p1, "IInputConnectionWrapper"

    .line 901
    .line 902
    const-string v0, "performContextMenuAction on inactive InputConnection"

    .line 903
    .line 904
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    .line 906
    .line 907
    return-void

    .line 908
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    if-eqz v0, :cond_28

    .line 913
    .line 914
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    if-nez v1, :cond_27

    .line 919
    .line 920
    goto :goto_1f

    .line 921
    :cond_27
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 922
    .line 923
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 924
    .line 925
    .line 926
    return-void

    .line 927
    :cond_28
    :goto_1f
    const-string p1, "IInputConnectionWrapper"

    .line 928
    .line 929
    const-string v0, "performEditorAction on inactive InputConnection"

    .line 930
    .line 931
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    if-eqz v0, :cond_2a

    .line 940
    .line 941
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-nez v1, :cond_29

    .line 946
    .line 947
    goto :goto_20

    .line 948
    :cond_29
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 949
    .line 950
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 951
    .line 952
    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 953
    .line 954
    .line 955
    return-void

    .line 956
    :cond_2a
    :goto_20
    const-string p1, "IInputConnectionWrapper"

    .line 957
    .line 958
    const-string v0, "setSelection on inactive InputConnection"

    .line 959
    .line 960
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .line 962
    .line 963
    return-void

    .line 964
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    if-eqz v0, :cond_2c

    .line 969
    .line 970
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 971
    .line 972
    .line 973
    move-result v1

    .line 974
    if-nez v1, :cond_2b

    .line 975
    .line 976
    goto :goto_21

    .line 977
    :cond_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast p1, Landroid/view/inputmethod/CorrectionInfo;

    .line 980
    .line 981
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 982
    .line 983
    .line 984
    return-void

    .line 985
    :cond_2c
    :goto_21
    const-string p1, "IInputConnectionWrapper"

    .line 986
    .line 987
    const-string v0, "commitCorrection on inactive InputConnection"

    .line 988
    .line 989
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .line 991
    .line 992
    return-void

    .line 993
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    if-eqz v0, :cond_2e

    .line 998
    .line 999
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    if-nez v1, :cond_2d

    .line 1004
    .line 1005
    goto :goto_22

    .line 1006
    :cond_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast p1, Landroid/view/inputmethod/CompletionInfo;

    .line 1009
    .line 1010
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1011
    .line 1012
    .line 1013
    return-void

    .line 1014
    :cond_2e
    :goto_22
    const-string p1, "IInputConnectionWrapper"

    .line 1015
    .line 1016
    const-string v0, "commitCompletion on inactive InputConnection"

    .line 1017
    .line 1018
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .line 1020
    .line 1021
    return-void

    .line 1022
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    if-eqz v0, :cond_31

    .line 1027
    .line 1028
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v1

    .line 1032
    if-nez v1, :cond_30

    .line 1033
    .line 1034
    goto :goto_23

    .line 1035
    :cond_30
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1036
    .line 1037
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1038
    .line 1039
    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    .line 1040
    .line 1041
    .line 1042
    return-void

    .line 1043
    :cond_31
    :goto_23
    const-string p1, "IInputConnectionWrapper"

    .line 1044
    .line 1045
    const-string v0, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    .line 1046
    .line 1047
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .line 1049
    .line 1050
    return-void

    .line 1051
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    if-eqz v0, :cond_34

    .line 1056
    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v1

    .line 1061
    if-nez v1, :cond_33

    .line 1062
    .line 1063
    goto :goto_24

    .line 1064
    :cond_33
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1065
    .line 1066
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1067
    .line 1068
    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1069
    .line 1070
    .line 1071
    return-void

    .line 1072
    :cond_34
    :goto_24
    const-string p1, "IInputConnectionWrapper"

    .line 1073
    .line 1074
    const-string v0, "deleteSurroundingText on inactive InputConnection"

    .line 1075
    .line 1076
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    return-void

    .line 1080
    nop

    .line 1081
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3f -> :sswitch_9
        0x41 -> :sswitch_8
        0x46 -> :sswitch_7
        0x5a -> :sswitch_6
        0x5f -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8c -> :sswitch_2
        0x96 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch

    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finishComposingText()V
    .locals 1

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public abstract isActive()Z
.end method

.method public isFinished()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageII(III)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 6
    .line 7
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 8
    .line 9
    iget-object p4, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 10
    .line 11
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 8
    .line 9
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 10
    .line 11
    iget-object p3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 8
    .line 9
    iget-object p3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performEditorAction(I)V
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
