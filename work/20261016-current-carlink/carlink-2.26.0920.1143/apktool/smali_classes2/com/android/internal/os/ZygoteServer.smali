.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private mIsForkChild:Z

.field private mServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v1, "IOException during accept()"

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method


# virtual methods
.method public closeServerSocket()V
    .locals 3

    .line 1
    const-string v0, "ZygoteServer"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    const-string v2, "Zygote:  error closing descriptor"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception v1

    .line 30
    const-string v2, "Zygote:  error closing sockets"

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 37
    .line 38
    return-void
.end method

.method public createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1

    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public registerServerSocket(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ANDROID_SOCKET_"

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    new-instance v0, Ljava/io/FileDescriptor;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/net/LocalServerSocket;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v2, "Error binding to local socket \'"

    .line 39
    .line 40
    const-string v3, "\'"

    .line 41
    .line 42
    invoke-static {v2, p1, v3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string v2, " unset or invalid"

    .line 54
    .line 55
    invoke-static {p1, v2}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method public runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-array v3, v2, [Landroid/system/StructPollfd;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    new-instance v5, Landroid/system/StructPollfd;

    .line 34
    .line 35
    invoke-direct {v5}, Landroid/system/StructPollfd;-><init>()V

    .line 36
    .line 37
    .line 38
    aput-object v5, v3, v4

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/io/FileDescriptor;

    .line 45
    .line 46
    iput-object v6, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 47
    .line 48
    aget-object v5, v3, v4

    .line 49
    .line 50
    sget v6, Landroid/system/OsConstants;->POLLIN:I

    .line 51
    .line 52
    int-to-short v6, v6

    .line 53
    iput-short v6, v5, Landroid/system/StructPollfd;->events:S

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v4, -0x1

    .line 59
    :try_start_0
    invoke-static {v3, v4}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    :goto_1
    if-ltz v2, :cond_0

    .line 65
    .line 66
    aget-object v4, v3, v2

    .line 67
    .line 68
    iget-short v4, v4, Landroid/system/StructPollfd;->revents:S

    .line 69
    .line 70
    sget v5, Landroid/system/OsConstants;->POLLIN:I

    .line 71
    .line 72
    and-int/2addr v4, v5

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-nez v2, :cond_3

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/android/internal/os/ZygoteConnection;

    .line 98
    .line 99
    invoke-virtual {v4, p0}, Lcom/android/internal/os/ZygoteConnection;->processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 104
    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    if-eqz v5, :cond_4

    .line 108
    .line 109
    return-object v5

    .line 110
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v5, "command == null"

    .line 113
    .line 114
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v4

    .line 118
    :cond_5
    if-nez v5, :cond_6

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_7

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v5, "command != null"

    .line 139
    .line 140
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :catch_0
    move-exception v4

    .line 145
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 146
    .line 147
    const-string v6, "ZygoteServer"

    .line 148
    .line 149
    if-nez v5, :cond_8

    .line 150
    .line 151
    const-string v5, "Exception executing zygote command: "

    .line 152
    .line 153
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Lcom/android/internal/os/ZygoteConnection;

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    const-string p1, "Caught post-fork exception in child process."

    .line 172
    .line 173
    invoke-static {v6, p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    throw v4

    .line 177
    :catch_1
    move-exception p1

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    .line 179
    .line 180
    const-string v1, "poll failed"

    .line 181
    .line 182
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public setForkChild()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-void
.end method
