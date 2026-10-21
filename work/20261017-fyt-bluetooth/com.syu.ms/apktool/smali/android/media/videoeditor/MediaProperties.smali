.class public Landroid/media/videoeditor/MediaProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaProperties$MPEG4Level;,
        Landroid/media/videoeditor/MediaProperties$MPEG4Profile;,
        Landroid/media/videoeditor/MediaProperties$H263Level;,
        Landroid/media/videoeditor/MediaProperties$H263Profile;,
        Landroid/media/videoeditor/MediaProperties$H264Level;,
        Landroid/media/videoeditor/MediaProperties$H264Profile;
    }
.end annotation


# static fields
.field public static final ACODEC_AAC_LC:I = 0x2

.field public static final ACODEC_AAC_PLUS:I = 0x3

.field public static final ACODEC_AMRNB:I = 0x1

.field public static final ACODEC_AMRWB:I = 0x8

.field public static final ACODEC_ENHANCED_AAC_PLUS:I = 0x4

.field public static final ACODEC_EVRC:I = 0x6

.field public static final ACODEC_MP3:I = 0x5

.field public static final ACODEC_NO_AUDIO:I = 0x0

.field public static final ACODEC_OGG:I = 0x9

.field private static final ASPECT_RATIOS:[I

.field public static final ASPECT_RATIO_11_9:I = 0x5

.field private static final ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_16_9:I = 0x2

.field private static final ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_3_2:I = 0x1

.field private static final ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_4_3:I = 0x3

.field private static final ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_5_3:I = 0x4

.field private static final ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_UNDEFINED:I = 0x0

.field public static final AUDIO_MAX_TRACK_COUNT:I = 0x1

.field public static final AUDIO_MAX_VOLUME_PERCENT:I = 0x64

.field public static final BITRATE_128K:I = 0x1f400

.field public static final BITRATE_192K:I = 0x2ee00

.field public static final BITRATE_256K:I = 0x3e800

.field public static final BITRATE_28K:I = 0x6d60

.field public static final BITRATE_2M:I = 0x1e8480

.field public static final BITRATE_384K:I = 0x5dc00

.field public static final BITRATE_40K:I = 0x9c40

.field public static final BITRATE_512K:I = 0x7d000

.field public static final BITRATE_5M:I = 0x4c4b40

.field public static final BITRATE_64K:I = 0xfa00

.field public static final BITRATE_800K:I = 0xc3500

.field public static final BITRATE_8M:I = 0x7a1200

.field public static final BITRATE_96K:I = 0x17700

.field public static final DEFAULT_CHANNEL_COUNT:I = 0x2

.field public static final DEFAULT_SAMPLING_FREQUENCY:I = 0x7d00

.field public static final FILE_3GP:I = 0x0

.field public static final FILE_AMR:I = 0x2

.field public static final FILE_JPEG:I = 0x5

.field public static final FILE_M4V:I = 0xa

.field public static final FILE_MP3:I = 0x3

.field public static final FILE_MP4:I = 0x1

.field public static final FILE_PNG:I = 0x8

.field public static final FILE_UNSUPPORTED:I = 0xff

.field public static final HEIGHT_1080:I = 0x438

.field public static final HEIGHT_144:I = 0x90

.field public static final HEIGHT_288:I = 0x120

.field public static final HEIGHT_360:I = 0x168

.field public static final HEIGHT_480:I = 0x1e0

.field public static final HEIGHT_720:I = 0x2d0

.field public static final SAMPLES_PER_FRAME_AAC:I = 0x400

.field public static final SAMPLES_PER_FRAME_AMRNB:I = 0xa0

.field public static final SAMPLES_PER_FRAME_AMRWB:I = 0x140

.field public static final SAMPLES_PER_FRAME_MP3:I = 0x480

.field private static final SUPPORTED_ACODECS:[I

.field private static final SUPPORTED_BITRATES:[I

.field private static final SUPPORTED_VCODECS:[I

.field private static final SUPPORTED_VIDEO_FILE_FORMATS:[I

.field public static final UNDEFINED_VIDEO_PROFILE:I = 0xff

.field public static final VCODEC_H263:I = 0x1

.field public static final VCODEC_H264:I = 0x2

.field public static final VCODEC_MPEG4:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIOS:[I

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/util/Pair;

    .line 2
    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v6, 0x438

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v2, v1, v7

    sput-object v1, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;

    new-array v1, v0, [Landroid/util/Pair;

    .line 3
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x280

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x3c0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    sput-object v1, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;

    new-array v1, v7, [Landroid/util/Pair;

    .line 4
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x320

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;

    new-array v1, v0, [Landroid/util/Pair;

    .line 5
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0xb0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x90

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x160

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x120

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    sput-object v1, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/util/Pair;

    .line 6
    new-instance v8, Landroid/util/Pair;

    const/16 v9, 0x350

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v5

    new-instance v4, Landroid/util/Pair;

    const/16 v5, 0x500

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v7

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x780

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    sput-object v2, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_BITRATES:[I

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VCODECS:[I

    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_3

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_ACODECS:[I

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_4

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VIDEO_FILE_FORMATS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6d60
        0x9c40
        0xfa00
        0x17700
        0x1f400
        0x2ee00
        0x3e800
        0x5dc00
        0x7d000
        0xc3500
        0x1e8480
        0x4c4b40
        0x7a1200
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllSupportedAspectRatios()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIOS:[I

    return-object v0
.end method

.method public static getSupportedAudioCodecs()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_ACODECS:[I

    return-object v0
.end method

.method public static getSupportedAudioTrackCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getSupportedMaxVolume()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getSupportedResolutions(I)[Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;

    .line 7
    :goto_0
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8
    iget v1, v0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .line 9
    iget v0, v0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .line 10
    array-length v2, p0

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 11
    :goto_1
    array-length v6, p0

    if-ge v4, v6, :cond_6

    .line 12
    aget-object v6, p0, v4

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v1, :cond_5

    aget-object v6, p0, v4

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v0, :cond_5

    .line 13
    aget-object v6, p0, v4

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_6
    new-array p0, v5, [Landroid/util/Pair;

    .line 15
    invoke-static {v2, v3, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 16
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t get the video editor profile"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSupportedVideoBitrates()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_BITRATES:[I

    return-object v0
.end method

.method public static getSupportedVideoCodecs()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VCODECS:[I

    return-object v0
.end method

.method public static getSupportedVideoFileFormat()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VIDEO_FILE_FORMATS:[I

    return-object v0
.end method
