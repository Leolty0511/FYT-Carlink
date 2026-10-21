.class public Landroid/media/videoeditor/WaveformData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFrameDurationMs:I

.field private final mFramesCount:I

.field private final mGains:[S


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    .line 3
    iput v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x4

    :try_start_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    shl-int/lit8 v4, v4, 0x8

    .line 9
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput v4, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    new-array v1, v0, [B

    .line 11
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    shl-int/lit8 v4, v4, 0x8

    .line 12
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iput v4, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    .line 14
    new-array v0, v4, [S

    iput-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    .line 15
    :goto_2
    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    if-ge v2, v0, :cond_2

    .line 16
    iget-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    invoke-virtual {p1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WaveformData : filename is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFrameDuration()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    return v0
.end method

.method public getFrameGains()[S
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    return-object v0
.end method

.method public getFramesCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    return v0
.end method
