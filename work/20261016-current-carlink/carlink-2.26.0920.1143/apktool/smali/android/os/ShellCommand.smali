.class public abstract Landroid/os/ShellCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mErr:Ljava/io/FileDescriptor;

.field private mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mFileErr:Ljava/io/FileOutputStream;

.field private mFileIn:Ljava/io/FileInputStream;

.field private mFileOut:Ljava/io/FileOutputStream;

.field private mIn:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private mOut:Ljava/io/FileDescriptor;

.field private mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mShellCallback:Landroid/os/ShellCallback;

.field private mTarget:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v0, p5

    .line 3
    .line 4
    const-string v10, "Security exception: "

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v11, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    aget-object v1, v0, v1

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    move-object v12, v1

    .line 17
    move v8, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v8, v1

    .line 20
    move-object v12, v11

    .line 21
    :goto_0
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object/from16 v4, p3

    .line 25
    .line 26
    move-object/from16 v5, p4

    .line 27
    .line 28
    move-object/from16 v6, p5

    .line 29
    .line 30
    move-object/from16 v7, p6

    .line 31
    .line 32
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;I)V

    .line 33
    .line 34
    .line 35
    iput-object v12, v9, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v0, p7

    .line 38
    .line 39
    iput-object v0, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    :try_start_0
    invoke-virtual {p0, v12}, Landroid/os/ShellCommand;->onCommand(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v11}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object v2, v0

    .line 68
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 73
    .line 74
    .line 75
    const-string v3, "Exception occurred while executing:"

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    move-object v2, v0

    .line 97
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .line 125
    .line 126
    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 134
    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_2
    return v1

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    iget-object v2, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 141
    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 145
    .line 146
    .line 147
    :cond_5
    iget-object v2, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 148
    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object v2, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 155
    .line 156
    invoke-virtual {v2, v1, v11}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    throw v0
.end method

.method public getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    .line 17
    .line 18
    return-object v0
.end method

.method public getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawErrorStream()Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 26
    .line 27
    return-object v0
.end method

.method public getNextArg()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 10
    .line 11
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v0, v3, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 19
    .line 20
    aget-object v0, v2, v0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    return-object v1
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    aget-object v0, v0, v1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v2, "Argument expected after \""

    .line 19
    .line 20
    const-string v3, "\""

    .line 21
    .line 22
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1
.end method

.method public getNextOption()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 7
    .line 8
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-lt v0, v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    aget-object v0, v2, v0

    .line 16
    .line 17
    const-string v2, "-"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    return-object v4

    .line 26
    :cond_1
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 27
    .line 28
    add-int/2addr v2, v1

    .line 29
    iput v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 30
    .line 31
    const-string v2, "--"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    return-object v4

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-le v2, v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/16 v2, 0x2d

    .line 51
    .line 52
    if-eq v1, v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x2

    .line 59
    if-le v1, v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_3
    iput-object v4, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    iput-object v4, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 80
    .line 81
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 82
    .line 83
    sub-int/2addr v2, v1

    .line 84
    aget-object v0, v0, v2

    .line 85
    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string v2, "No argument expected after \""

    .line 89
    .line 90
    const-string v3, "\""

    .line 91
    .line 92
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1
.end method

.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 17
    .line 18
    return-object v0
.end method

.method public getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    .line 15
    .line 16
    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/FileInputStream;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    .line 15
    .line 16
    return-object v0
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    .line 15
    .line 16
    return-object v0
.end method

.method public getShellCallback()Landroid/os/ShellCallback;
    .locals 1

    iget-object v0, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    return-object v0
.end method

.method public handleDefaultCommands(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "dump"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    .line 15
    .line 16
    array-length v2, p1

    .line 17
    sub-int/2addr v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const-string/jumbo v0, "help"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const-string v0, "-h"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "Unknown command: "

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->onHelp()V

    .line 69
    .line 70
    .line 71
    :goto_1
    const/4 p1, -0x1

    .line 72
    return p1
.end method

.method public init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    .line 4
    .line 5
    iput-object p3, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    .line 6
    .line 7
    iput-object p4, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    iput-object p5, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 15
    .line 16
    iput-object p1, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    .line 17
    .line 18
    iput p7, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 19
    .line 20
    iput-object p1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    .line 23
    .line 24
    iput-object p1, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    .line 25
    .line 26
    iput-object p1, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    .line 27
    .line 28
    iput-object p1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 29
    .line 30
    iput-object p1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 31
    .line 32
    iput-object p1, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    .line 33
    .line 34
    return-void
.end method

.method public abstract onCommand(Ljava/lang/String;)I
.end method

.method public abstract onHelp()V
.end method

.method public openOutputFileForSystem(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "u:r:system_server:s0"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/os/ShellCallback;->openOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Failure opening file: "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Error: Unable to open file: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "Consider using a file under /data/local/tmp/"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return-object p1
.end method

.method public peekNextArg()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    .line 13
    aget-object v0, v1, v0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method
