.class public Lcom/android/ims/ImsStreamMediaProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x4

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x5

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x6

.field public static final AUDIO_QUALITY_EVS_FB:I = 0x14

.field public static final AUDIO_QUALITY_EVS_NB:I = 0x11

.field public static final AUDIO_QUALITY_EVS_SWB:I = 0x13

.field public static final AUDIO_QUALITY_EVS_WB:I = 0x12

.field public static final AUDIO_QUALITY_G711A:I = 0xd

.field public static final AUDIO_QUALITY_G711AB:I = 0xf

.field public static final AUDIO_QUALITY_G711U:I = 0xb

.field public static final AUDIO_QUALITY_G722:I = 0xe

.field public static final AUDIO_QUALITY_G723:I = 0xc

.field public static final AUDIO_QUALITY_G729:I = 0x10

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x8

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x9

.field public static final AUDIO_QUALITY_GSM_HR:I = 0xa

.field public static final AUDIO_QUALITY_NONE:I = 0x0

.field public static final AUDIO_QUALITY_QCELP13K:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/ImsStreamMediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_INACTIVE:I = 0x0

.field public static final DIRECTION_INVALID:I = -0x1

.field public static final DIRECTION_RECEIVE:I = 0x1

.field public static final DIRECTION_SEND:I = 0x2

.field public static final DIRECTION_SEND_RECEIVE:I = 0x3

.field public static final RTT_MODE_DISABLED:I = 0x0

.field public static final RTT_MODE_FULL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsStreamMediaProfile"

.field public static final VIDEO_QUALITY_NONE:I = 0x0

.field public static final VIDEO_QUALITY_QCIF:I = 0x1

.field public static final VIDEO_QUALITY_QVGA_LANDSCAPE:I = 0x2

.field public static final VIDEO_QUALITY_QVGA_PORTRAIT:I = 0x4

.field public static final VIDEO_QUALITY_VGA_LANDSCAPE:I = 0x8

.field public static final VIDEO_QUALITY_VGA_PORTRAIT:I = 0x10


# instance fields
.field public mAudioDirection:I

.field public mAudioQuality:I

.field public mRttMode:I

.field public mVideoDirection:I

.field public mVideoQuality:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 6
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 8
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 11
    iput p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 12
    iput p3, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 13
    iput p4, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/ims/ImsStreamMediaProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 4
    .line 5
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 8
    .line 9
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 12
    .line 13
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 16
    .line 17
    iget p1, p1, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 18
    .line 19
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 20
    .line 21
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRttCall()Z
    .locals 2

    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setRttMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{ audioQuality="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", audioDirection="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", videoQuality="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", videoDirection="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", rttMode="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 50
    .line 51
    const-string v2, " }"

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
