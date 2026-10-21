.class Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceptionHandler"
.end annotation


# static fields
.field private static final DO_RECEIVE:I = 0x1

.field private static final DO_START:I = 0x2

.field private static final DO_STOP:I = 0x3


# instance fields
.field private mStarted:Z

.field final synthetic this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->mStarted:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_5

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, p1, :cond_4

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "--------------------------------->>   handleMessage() "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "  mStarted: "

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->mStarted:Z

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "AHU.AUDIO"

    .line 48
    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->mStarted:Z

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->mStarted:Z

    .line 58
    .line 59
    const-string p1, "audioStop"

    .line 60
    .line 61
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 67
    .line 68
    invoke-static {p1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1500(Lcom/google/android/projection/sink/audio/AudioPlayer;Z)V

    .line 69
    .line 70
    .line 71
    const-string p1, "--------------------------------->> 0"

    .line 72
    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "stream stopped, received:"

    .line 79
    .line 80
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$2100(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " type:"

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1600(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$2100(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eq p1, v1, :cond_2

    .line 134
    .line 135
    const-string v1, "Total received "

    .line 136
    .line 137
    const-string v2, " while played only "

    .line 138
    .line 139
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$2100(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {p1, v1, v0}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1700(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/util/Pair;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_3

    .line 161
    .line 162
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 175
    .line 176
    iget-object v1, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 177
    .line 178
    invoke-static {v1, v0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1800(Lcom/google/android/projection/sink/audio/AudioPlayer;ILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_3
    const-string p1, "no first session"

    .line 183
    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->mStarted:Z

    .line 192
    .line 193
    const-string p1, "audioStart"

    .line 194
    .line 195
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 199
    .line 200
    invoke-static {p1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$2102(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;I)I

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 206
    .line 207
    invoke-static {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$2200(Lcom/google/android/projection/sink/audio/AudioPlayer;)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    const-string v0, "audioData"

    .line 215
    .line 216
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 220
    .line 221
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 222
    .line 223
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;

    .line 226
    .line 227
    invoke-static {v0, v1, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$2000(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;ILcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;)V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 231
    .line 232
    .line 233
    :goto_1
    return-void
.end method
