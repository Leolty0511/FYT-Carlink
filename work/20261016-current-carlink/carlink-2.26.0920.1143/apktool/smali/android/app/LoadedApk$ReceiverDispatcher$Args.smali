.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private mDispatched:Z

.field private final mOrdered:Z

.field private mPreviousRunStacktrace:Ljava/lang/Throwable;

.field final synthetic this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p1

    .line 3
    iput-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 4
    .line 5
    iget-boolean v1, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    :goto_0
    move v4, v1

    .line 13
    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    move-object v0, p0

    .line 24
    move v1, p3

    .line 25
    move-object v2, p4

    .line 26
    move-object/from16 v3, p5

    .line 27
    .line 28
    move/from16 v5, p6

    .line 29
    .line 30
    move/from16 v6, p7

    .line 31
    .line 32
    move/from16 v8, p8

    .line 33
    .line 34
    invoke-direct/range {v0 .. v9}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    .line 35
    .line 36
    .line 37
    move-object v0, p2

    .line 38
    iput-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 39
    .line 40
    move/from16 v0, p6

    .line 41
    .line 42
    iput-boolean v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic a(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->lambda$getRunnable$0()V

    return-void
.end method

.method private synthetic lambda$getRunnable$0()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 6
    .line 7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v5, "Null intent being dispatched, mDispatched="

    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v5, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, ": run() previously called at "

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v5, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPreviousRunStacktrace:Ljava/lang/Throwable;

    .line 33
    .line 34
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "LoadedApk"

    .line 46
    .line 47
    invoke-static {v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v4, 0x0

    .line 51
    iput-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    iput-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 55
    .line 56
    new-instance v4, Ljava/lang/Throwable;

    .line 57
    .line 58
    const-string v5, "Previous stacktrace"

    .line 59
    .line 60
    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPreviousRunStacktrace:Ljava/lang/Throwable;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 70
    .line 71
    iget-boolean v4, v4, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 72
    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v4, "broadcastReceiveReg"

    .line 77
    .line 78
    const-wide/16 v5, 0x40

    .line 79
    .line 80
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 84
    .line 85
    iget-object v4, v4, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver$PendingResult;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 108
    .line 109
    iget-object v4, v4, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v0, v4, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v4

    .line 116
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 117
    .line 118
    iget-boolean v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    .line 119
    .line 120
    if-eqz v7, :cond_2

    .line 121
    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 128
    .line 129
    iget-object v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    .line 135
    invoke-virtual {v2, v1, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_4

    .line 140
    .line 141
    :goto_0
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "Error receiving broadcast "

    .line 162
    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, " in "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 175
    .line 176
    iget-object v2, v2, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 190
    .line 191
    iget-boolean v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    if-eqz v1, :cond_6

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 198
    .line 199
    .line 200
    :cond_6
    return-void
.end method


# virtual methods
.method public final getRunnable()Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Landroid/app/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/f;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
