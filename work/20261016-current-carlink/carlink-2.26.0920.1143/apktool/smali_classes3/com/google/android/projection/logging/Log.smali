.class public Lcom/google/android/projection/logging/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/logging/Log$LogEntry;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/projection/logging/Log;

.field private static final MAX_ERROR_LOGS_ENTRIES:I = 0xa

.field static final MAX_LOGS_ENTRIES:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final errLogBuffer:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/projection/logging/Log$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final stdLogBuffer:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/projection/logging/Log$LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/logging/Log;

    invoke-direct {v0}, Lcom/google/android/projection/logging/Log;-><init>()V

    sput-object v0, Lcom/google/android/projection/logging/Log;->INSTANCE:Lcom/google/android/projection/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/google/android/projection/logging/Log;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/logging/Log;->stdLogBuffer:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/projection/logging/Log;->errLogBuffer:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    return-void
.end method

.method private static addLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/google/android/projection/logging/Log;->getInstance()Lcom/google/android/projection/logging/Log;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/projection/logging/Log$LogEntry;->create(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/projection/logging/Log$LogEntry;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/projection/logging/Log;->addLogEntry(Lcom/google/android/projection/logging/Log$LogEntry;)V

    return-void
.end method

.method private addLogEntry(Lcom/google/android/projection/logging/Log$LogEntry;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/projection/logging/Log;->toLogcat(Lcom/google/android/projection/logging/Log$LogEntry;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/logging/Log;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/logging/Log;->stdLogBuffer:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/google/android/projection/logging/Log;->addLogEntryToRingBuffer(Lcom/google/android/projection/logging/Log$LogEntry;Ljava/util/ArrayDeque;I)V

    .line 12
    .line 13
    .line 14
    iget v1, p1, Lcom/google/android/projection/logging/Log$LogEntry;->severity:I

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/projection/logging/Log;->errLogBuffer:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    const/16 v2, 0xa

    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Lcom/google/android/projection/logging/Log;->addLogEntryToRingBuffer(Lcom/google/android/projection/logging/Log$LogEntry;Ljava/util/ArrayDeque;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method private static addLogEntryToRingBuffer(Lcom/google/android/projection/logging/Log$LogEntry;Ljava/util/ArrayDeque;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/projection/logging/Log$LogEntry;",
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/projection/logging/Log$LogEntry;",
            ">;I)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dumpRecentLogs(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/logging/Log;->getInstance()Lcom/google/android/projection/logging/Log;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/google/android/projection/logging/Log;->internalDumpRecentLogs(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getInstance()Lcom/google/android/projection/logging/Log;
    .locals 1

    sget-object v0, Lcom/google/android/projection/logging/Log;->INSTANCE:Lcom/google/android/projection/logging/Log;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private internalDumpRecentLogs(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/logging/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/logging/Log;->stdLogBuffer:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/projection/logging/Log;->errLogBuffer:Ljava/util/ArrayDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "*** Recent Logs: warnings and errors ***"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-static {p1, v2}, Lcom/google/android/projection/logging/Log;->internalDumpRecentLogs(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "*** Recent Logs: all ***"

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v1}, Lcom/google/android/projection/logging/Log;->internalDumpRecentLogs(Ljava/io/PrintWriter;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static internalDumpRecentLogs(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/google/android/projection/logging/Log$LogEntry;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/logging/Log$LogEntry;

    .line 13
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM:dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/google/android/projection/logging/Log$LogEntry;->timestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-boolean v2, v0, Lcom/google/android/projection/logging/Log$LogEntry;->mainThread:Z

    const-string v3, " "

    if-eqz v2, :cond_0

    const-string v2, " main"

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/google/android/projection/logging/Log$LogEntry;->threadId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    :goto_1
    iget v4, v0, Lcom/google/android/projection/logging/Log$LogEntry;->severity:I

    invoke-static {v4}, Lcom/google/android/projection/logging/Log;->severityToString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    iget-object v5, v0, Lcom/google/android/projection/logging/Log$LogEntry;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 18
    iget-object v5, v0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/projection/logging/Log$LogEntry;->exception:Ljava/lang/Throwable;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static severityToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    const-string p0, "E"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "Unexpected severity: "

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    const-string p0, "W"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string p0, "I"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string p0, "D"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_4
    const-string p0, "V"

    .line 41
    .line 42
    return-object p0
.end method

.method private static toLogcat(Lcom/google/android/projection/logging/Log$LogEntry;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->severity:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->exception:Ljava/lang/Throwable;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Unexpected severity: "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->severity:I

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->exception:Ljava/lang/Throwable;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->tag:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/google/android/projection/logging/Log$LogEntry;->message:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/projection/logging/Log;->addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
