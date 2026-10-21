.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_SUBTITLE:I = 0x2

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private final mAudioChannelCount:I

.field private final mAudioSampleRate:I

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mExtra:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mType:I

.field private final mVideoActiveFormatDescription:B

.field private final mVideoFrameRate:F

.field private final mVideoHeight:I

.field private final mVideoPixelAspectRatio:F

.field private final mVideoWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 5
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 8
    iput p5, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 9
    iput p6, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 10
    iput p7, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 11
    iput p8, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 12
    iput p9, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 13
    iput p10, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 14
    iput-byte p11, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 15
    iput-object p12, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvTrackInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/media/tv/TvTrackInfo;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 24
    .line 25
    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 26
    .line 27
    if-ne v1, v3, :cond_3

    .line 28
    .line 29
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 40
    .line 41
    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 50
    .line 51
    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 64
    .line 65
    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 66
    .line 67
    if-ne v1, v3, :cond_3

    .line 68
    .line 69
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 70
    .line 71
    iget p1, p1, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 72
    .line 73
    if-ne v1, p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-ne v1, v0, :cond_4

    .line 77
    .line 78
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 79
    .line 80
    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 81
    .line 82
    if-ne v1, v3, :cond_3

    .line 83
    .line 84
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 85
    .line 86
    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 87
    .line 88
    if-ne v1, v3, :cond_3

    .line 89
    .line 90
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 91
    .line 92
    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 93
    .line 94
    cmpl-float v1, v1, v3

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 99
    .line 100
    iget p1, p1, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 101
    .line 102
    cmpl-float p1, v1, p1

    .line 103
    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move v0, v2

    .line 108
    :cond_4
    :goto_0
    return v0
.end method

.method public final getAudioChannelCount()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Not an audio track"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getAudioSampleRate()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Not an audio track"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return v0
.end method

.method public final getVideoActiveFormatDescription()B
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Not a video track"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final getVideoFrameRate()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Not a video track"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final getVideoHeight()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Not a video track"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final getVideoPixelAspectRatio()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Not a video track"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final getVideoWidth()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Not a video track"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 57
    .line 58
    .line 59
    iget-byte p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
