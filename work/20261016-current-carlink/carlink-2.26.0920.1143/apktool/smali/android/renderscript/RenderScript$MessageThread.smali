.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageThread"
.end annotation


# static fields
.field static final RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field mAuxData:[I

.field mRS:Landroid/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    const-string v0, "RSMessageThread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 13
    .line 14
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nContextInitToClient(J)V

    .line 10
    .line 11
    .line 12
    :catch_0
    :goto_0
    iget-boolean v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 13
    .line 14
    if-eqz v1, :cond_a

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput v1, v0, v1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 20
    .line 21
    iget-wide v3, v2, Landroid/renderscript/RenderScript;->mContext:J

    .line 22
    .line 23
    iget-object v5, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aget v5, v3, v4

    .line 33
    .line 34
    aget v3, v3, v1

    .line 35
    .line 36
    const-string v6, "Error processing message from RenderScript."

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    if-ne v2, v7, :cond_3

    .line 40
    .line 41
    shr-int/lit8 v1, v5, 0x2

    .line 42
    .line 43
    array-length v2, v0

    .line 44
    if-lt v1, v2, :cond_0

    .line 45
    .line 46
    add-int/lit8 v0, v5, 0x3

    .line 47
    .line 48
    shr-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    new-array v0, v0, [I

    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 53
    .line 54
    iget-wide v8, v1, Landroid/renderscript/RenderScript;->mContext:J

    .line 55
    .line 56
    invoke-virtual {v1, v8, v9, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ne v1, v7, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iput-object v0, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 69
    .line 70
    iput v3, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 71
    .line 72
    iput v5, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 79
    .line 80
    const-string v1, "Received a message from the script with no message handler installed."

    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_2
    new-instance v0, Landroid/renderscript/RSDriverException;

    .line 87
    .line 88
    invoke-direct {v0, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_3
    const/4 v5, 0x3

    .line 93
    if-ne v2, v5, :cond_7

    .line 94
    .line 95
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 96
    .line 97
    iget-wide v4, v1, Landroid/renderscript/RenderScript;->mContext:J

    .line 98
    .line 99
    invoke-virtual {v1, v4, v5}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/16 v2, 0x1000

    .line 104
    .line 105
    if-ge v3, v2, :cond_6

    .line 106
    .line 107
    const/16 v2, 0x800

    .line 108
    .line 109
    if-lt v3, v2, :cond_4

    .line 110
    .line 111
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 112
    .line 113
    iget-object v4, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 114
    .line 115
    sget-object v5, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    .line 116
    .line 117
    if-ne v4, v5, :cond_6

    .line 118
    .line 119
    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    :cond_4
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 124
    .line 125
    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 126
    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    iput-object v1, v2, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 130
    .line 131
    iput v3, v2, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    const-string/jumbo v2, "non fatal RS error, "

    .line 138
    .line 139
    .line 140
    const-string v3, "RenderScript_jni"

    .line 141
    .line 142
    invoke-static {v2, v1, v3}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_6
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v4, "Fatal error "

    .line 152
    .line 153
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, ", details: "

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_7
    const/4 v3, 0x5

    .line 176
    if-ne v2, v3, :cond_9

    .line 177
    .line 178
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 179
    .line 180
    iget-wide v7, v2, Landroid/renderscript/RenderScript;->mContext:J

    .line 181
    .line 182
    invoke-virtual {v2, v7, v8, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-ne v2, v3, :cond_8

    .line 187
    .line 188
    aget v2, v0, v4

    .line 189
    .line 190
    int-to-long v2, v2

    .line 191
    const/16 v4, 0x20

    .line 192
    .line 193
    shl-long/2addr v2, v4

    .line 194
    aget v1, v0, v1

    .line 195
    .line 196
    int-to-long v4, v1

    .line 197
    const-wide v6, 0xffffffffL

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    and-long/2addr v4, v6

    .line 203
    add-long/2addr v2, v4

    .line 204
    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->sendBufferNotification(J)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_8
    new-instance v0, Landroid/renderscript/RSDriverException;

    .line 210
    .line 211
    invoke-direct {v0, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :cond_9
    const-wide/16 v2, 0x1

    .line 216
    .line 217
    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_a
    return-void
.end method
