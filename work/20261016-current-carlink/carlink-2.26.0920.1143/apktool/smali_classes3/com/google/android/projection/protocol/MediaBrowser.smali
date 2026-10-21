.class public Lcom/google/android/projection/protocol/MediaBrowser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/MediaBrowserCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;,
        Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;,
        Lcom/google/android/projection/protocol/MediaBrowser$MediaList;,
        Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AHU.MEDIA_BROWSER"


# instance fields
.field private final mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

.field private mNativeMediaBrowser:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 5
    .line 6
    return-void
.end method

.method private native nativeGetNode(Ljava/lang/String;IZ)I
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeReportAction(Ljava/lang/String;I)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/MediaBrowser;->nativeInit(IJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/MediaBrowser;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mNativeMediaBrowser:J

    return-wide v0
.end method

.method public getNode(Ljava/lang/String;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/MediaBrowser;->nativeGetNode(Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method public input(Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/MediaBrowser;->nativeReportAction(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public listNodeCallback(Ljava/lang/String;Ljava/lang/String;[BIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    if-eqz p7, :cond_3

    if-eqz p8, :cond_3

    if-eqz p9, :cond_3

    if-eqz p10, :cond_3

    .line 1
    array-length v0, p7

    array-length v1, p8

    if-ne v0, v1, :cond_3

    array-length v0, p7

    array-length v1, p9

    if-ne v0, v1, :cond_3

    array-length v0, p7

    array-length v1, p10

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    if-eqz v0, :cond_2

    .line 3
    array-length v0, p7

    new-array v0, v0, [Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p7

    if-ge v1, v2, :cond_1

    .line 5
    new-instance v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;

    invoke-direct {v2, p0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;-><init>(Lcom/google/android/projection/protocol/MediaBrowser;)V

    aput-object v2, v0, v1

    .line 6
    aget-object v3, p7, v1

    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->path:Ljava/lang/String;

    .line 7
    aget-object v3, p8, v1

    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->name:Ljava/lang/String;

    .line 8
    aget-object v3, p10, v1

    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->album:Ljava/lang/String;

    .line 9
    aget-object v3, p9, v1

    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->artist:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p7, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;

    invoke-direct {p7, p0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;-><init>(Lcom/google/android/projection/protocol/MediaBrowser;)V

    .line 11
    iput-object p1, p7, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->path:Ljava/lang/String;

    .line 12
    iput-object p2, p7, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->name:Ljava/lang/String;

    .line 13
    iput-object p3, p7, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->albumArt:[B

    .line 14
    iput p4, p7, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->type:I

    .line 15
    iget-object p1, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    invoke-interface {p1, p7, p5, p6, v0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;->onMediaListNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaList;II[Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;)V

    .line 16
    :cond_2
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    move-result p1

    return p1

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    move-result p1

    return p1
.end method

.method public rootNodeCallback(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[B)I
    .locals 4

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    if-eqz p3, :cond_4

    .line 4
    .line 5
    array-length v0, p2

    .line 6
    array-length v1, p3

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    array-length v0, p2

    .line 15
    new-array v0, v0, [Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p2

    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;-><init>(Lcom/google/android/projection/protocol/MediaBrowser;)V

    .line 24
    .line 25
    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    aget-object v3, p2, v1

    .line 29
    .line 30
    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->path:Ljava/lang/String;

    .line 31
    .line 32
    aget-object v3, p3, v1

    .line 33
    .line 34
    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->name:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    array-length v3, p4

    .line 39
    if-ge v1, v3, :cond_1

    .line 40
    .line 41
    aget-object v3, p4, v1

    .line 42
    .line 43
    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->albumArt:[B

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p2, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 49
    .line 50
    invoke-interface {p2, p1, v0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;->onMediaRootNode(Ljava/lang/String;[Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_4
    :goto_1
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method public songNodeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;-><init>(Lcom/google/android/projection/protocol/MediaBrowser;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->path:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, v0, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->name:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, v0, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->album:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, v0, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->artist:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 19
    .line 20
    invoke-interface {p1, v0, p5, p6}, Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;->onMediaSongNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;[BI)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public sourceNodeCallback(Ljava/lang/String;Ljava/lang/String;[BII[Ljava/lang/String;[Ljava/lang/String;[[B[I)I
    .locals 4

    .line 1
    if-eqz p6, :cond_4

    .line 2
    .line 3
    if-eqz p7, :cond_4

    .line 4
    .line 5
    if-eqz p9, :cond_4

    .line 6
    .line 7
    array-length v0, p6

    .line 8
    array-length v1, p7

    .line 9
    if-ne v0, v1, :cond_4

    .line 10
    .line 11
    array-length v0, p6

    .line 12
    array-length v1, p9

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    array-length v0, p6

    .line 21
    new-array v0, v0, [Lcom/google/android/projection/protocol/MediaBrowser$MediaList;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, p6

    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    new-instance v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;-><init>(Lcom/google/android/projection/protocol/MediaBrowser;)V

    .line 30
    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    aget-object v3, p6, v1

    .line 35
    .line 36
    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->path:Ljava/lang/String;

    .line 37
    .line 38
    aget-object v3, p7, v1

    .line 39
    .line 40
    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->name:Ljava/lang/String;

    .line 41
    .line 42
    aget v3, p9, v1

    .line 43
    .line 44
    iput v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->type:I

    .line 45
    .line 46
    if-eqz p8, :cond_1

    .line 47
    .line 48
    array-length v3, p8

    .line 49
    if-ge v1, v3, :cond_1

    .line 50
    .line 51
    aget-object v3, p8, v1

    .line 52
    .line 53
    iput-object v3, v2, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->albumArt:[B

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance p6, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;

    .line 59
    .line 60
    invoke-direct {p6, p0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;-><init>(Lcom/google/android/projection/protocol/MediaBrowser;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p6, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->name:Ljava/lang/String;

    .line 64
    .line 65
    iput-object p1, p6, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->path:Ljava/lang/String;

    .line 66
    .line 67
    iput-object p3, p6, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->albumArt:[B

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/projection/protocol/MediaBrowser;->mListener:Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;

    .line 70
    .line 71
    invoke-interface {p1, p6, p4, p5, v0}, Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;->onMediaSourceNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;II[Lcom/google/android/projection/protocol/MediaBrowser$MediaList;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    :cond_4
    :goto_1
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    return p1
.end method
