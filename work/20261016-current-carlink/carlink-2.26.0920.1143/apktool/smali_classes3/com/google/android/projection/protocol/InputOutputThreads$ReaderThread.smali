.class Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;
.super Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/InputOutputThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReaderThread"
.end annotation


# static fields
.field private static final HEADER_READ_LENGTH:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/InputOutputThreads;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 2
    .line 3
    const-string v0, "ReaderThread"

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;-><init>(Lcom/google/android/projection/protocol/InputOutputThreads;Ljava/lang/String;Lcom/google/android/projection/protocol/Transport;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private read([BII)I
    .locals 4

    .line 1
    const-string v0, "read"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :cond_0
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->mTransport:Lcom/google/android/projection/protocol/Transport;

    .line 18
    .line 19
    add-int v2, p2, v0

    .line 20
    .line 21
    sub-int v3, p3, v0

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/projection/protocol/Transport;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p3, "Caught exception on read. Exiting."

    .line 35
    .line 36
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "AHU.GAL_RECEIVER"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 60
    .line 61
    sget-object p2, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/InputOutputThreads;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    return v0
.end method


# virtual methods
.method public doIo()V
    .locals 5

    .line 1
    const v0, 0x10008

    .line 2
    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    const-string v1, "readerThread"

    .line 15
    .line 16
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->read([BII)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v3, "read returned "

    .line 26
    .line 27
    const-string v4, "AHU.GAL_RECEIVER"

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    const-string v0, " while expecting 4"

    .line 32
    .line 33
    invoke-static {v3, v1, v0, v4}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$400(Lcom/google/android/projection/protocol/InputOutputThreads;)Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, v0, v2}, Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;->getFrameSizeToRead([BI)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->read([BII)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eq v2, v1, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, " while expecting "

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$300(Lcom/google/android/projection/protocol/InputOutputThreads;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    iget-object v2, p0, Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$400(Lcom/google/android/projection/protocol/InputOutputThreads;)Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    add-int/lit8 v1, v1, 0x4

    .line 92
    .line 93
    invoke-interface {v2, v0, v1}, Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;->enqueueIncomingFrame([BI)V

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    :goto_1
    return-void
.end method
