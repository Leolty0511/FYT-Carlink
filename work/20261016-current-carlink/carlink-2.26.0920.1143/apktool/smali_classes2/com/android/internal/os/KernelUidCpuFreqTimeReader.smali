.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelUidCpuFreqTimeReader"

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field private static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mLastTimeReadMs:J

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mNowTimeMs:J

.field private mProcFileAvailable:Z

.field private mReadErrorCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method

.method private readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " "

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 15
    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 22
    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 26
    .line 27
    add-int/lit8 v2, v0, 0x1

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    const/16 v4, 0xa

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    aput-wide v3, v1, v0

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 44
    .line 45
    invoke-interface {p2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onCpuFreqs([J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method private readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, [J

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget v3, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 18
    .line 19
    new-array v3, v3, [J

    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v4, " "

    .line 27
    .line 28
    move-object/from16 v5, p2

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    array-length v5, v4

    .line 35
    array-length v6, v3

    .line 36
    if-eq v5, v6, :cond_1

    .line 37
    .line 38
    const-string v1, "No. of readings don\'t match cpu freqs, readings: "

    .line 39
    .line 40
    const-string v2, " cpuFreqsCount: "

    .line 41
    .line 42
    invoke-static {v1, v5, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    array-length v2, v3

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "KernelUidCpuFreqTimeReader"

    .line 55
    .line 56
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    new-array v6, v5, [J

    .line 61
    .line 62
    new-array v7, v5, [J

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    move v9, v8

    .line 66
    move v10, v9

    .line 67
    :goto_0
    if-ge v9, v5, :cond_6

    .line 68
    .line 69
    aget-object v11, v4, v9

    .line 70
    .line 71
    const/16 v12, 0xa

    .line 72
    .line 73
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    const-wide/16 v13, 0xa

    .line 78
    .line 79
    mul-long/2addr v11, v13

    .line 80
    aget-wide v13, v3, v9

    .line 81
    .line 82
    sub-long v13, v11, v13

    .line 83
    .line 84
    aput-wide v13, v6, v9

    .line 85
    .line 86
    const-wide/16 v15, 0x0

    .line 87
    .line 88
    cmp-long v13, v13, v15

    .line 89
    .line 90
    if-ltz v13, :cond_5

    .line 91
    .line 92
    cmp-long v13, v11, v15

    .line 93
    .line 94
    if-gez v13, :cond_2

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    aput-wide v11, v7, v9

    .line 98
    .line 99
    if-nez v10, :cond_4

    .line 100
    .line 101
    aget-wide v10, v6, v9

    .line 102
    .line 103
    cmp-long v10, v10, v15

    .line 104
    .line 105
    if-lez v10, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move v10, v8

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    :goto_1
    const/4 v10, 0x1

    .line 111
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    :goto_3
    return-void

    .line 115
    :cond_6
    if-eqz v10, :cond_7

    .line 116
    .line 117
    invoke-static {v7, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 118
    .line 119
    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    invoke-interface {v2, v1, v6}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    .line 123
    .line 124
    .line 125
    :cond_7
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/uid_time_in_state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mNowTimeMs:J

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 5
    iget-wide v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mNowTimeMs:J

    iput-wide v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastTimeReadMs:J

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 10
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to read /proc/uid_time_in_state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KernelUidCpuFreqTimeReader"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 4

    .line 12
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 2

    .line 1
    if-ge p2, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 28
    .line 29
    sub-int/2addr p2, p1

    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
