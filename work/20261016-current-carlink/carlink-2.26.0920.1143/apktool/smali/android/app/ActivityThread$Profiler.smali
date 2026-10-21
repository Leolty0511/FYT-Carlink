.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z

.field samplingInterval:I

.field streamingOutput:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProfiler(Landroid/app/ProfilerInfo;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    .line 20
    :catch_1
    :cond_2
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 27
    .line 28
    iput v0, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 29
    .line 30
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 33
    .line 34
    iget-boolean p1, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 37
    .line 38
    return-void
.end method

.method public startProfiling()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "debug.traceview-buffer-size-mb"

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    mul-int/lit16 v0, v0, 0x400

    .line 27
    .line 28
    mul-int/lit16 v3, v0, 0x400

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    iget v6, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    move v5, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_0
    iget-boolean v7, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 40
    .line 41
    invoke-static/range {v1 .. v7}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 42
    .line 43
    .line 44
    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "Profiling failed on path "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "ActivityThread"

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    const-string v2, "Failure closing profile fd"

    .line 79
    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    return-void
.end method
