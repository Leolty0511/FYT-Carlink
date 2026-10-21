.class Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;
.super Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/InputOutputThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/InputOutputThreads;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 2
    .line 3
    const-string v0, "WriterThread"

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;-><init>(Lcom/google/android/projection/protocol/InputOutputThreads;Ljava/lang/String;Lcom/google/android/projection/protocol/Transport;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public doIo()V
    .locals 8

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    .line 2
    .line 3
    const v1, 0x10008

    .line 4
    .line 5
    .line 6
    new-array v1, v1, [B

    .line 7
    .line 8
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    const-string v2, "writerThread"

    .line 17
    .line 18
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$400(Lcom/google/android/projection/protocol/InputOutputThreads;)Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2, v1}, Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;->dequeueOutgoingFrame([B)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string v1, "Writer thread shutting down."

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    const-string v3, "write"

    .line 40
    .line 41
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    :goto_1
    const/16 v5, 0xa

    .line 47
    .line 48
    if-ge v4, v5, :cond_1

    .line 49
    .line 50
    iget-object v6, p0, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 51
    .line 52
    invoke-static {v6}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z

    .line 53
    .line 54
    .line 55
    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    if-nez v6, :cond_1

    .line 57
    .line 58
    :try_start_1
    iget-object v6, p0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->mTransport:Lcom/google/android/projection/protocol/Transport;

    .line 59
    .line 60
    invoke-virtual {v6, v1, v3, v2}, Lcom/google/android/projection/protocol/Transport;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception v5

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v7, "IOException while writing, retryCount: "

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v7, " "

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    :goto_2
    if-ge v4, v5, :cond_2

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 106
    .line 107
    const-string v2, "max retry reached"

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    :catch_1
    move-exception v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "Caught exception on write. Exiting."

    .line 117
    .line 118
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads$WriterThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 132
    .line 133
    sget-object v1, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/InputOutputThreads;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_3
    return-void
.end method
