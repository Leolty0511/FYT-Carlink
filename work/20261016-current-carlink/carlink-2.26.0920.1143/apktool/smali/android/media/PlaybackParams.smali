.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlaybackParams$AudioStretchMode;,
        Landroid/media/PlaybackParams$AudioFallbackMode;
    }
.end annotation


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final SET_PITCH:I = 0x2

.field private static final SET_SPEED:I = 0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mAudioStretchMode:I

.field private mPitch:F

.field private mSet:I

.field private mSpeed:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/PlaybackParams$1;

    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 4
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 5
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 7
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 10
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 11
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 13
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 18
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/PlaybackParams;
    .locals 1

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "audio fallback mode not set"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getAudioStretchMode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "audio stretch mode not set"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getPitch()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string/jumbo v1, "pitch not set"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getSpeed()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string/jumbo v1, "speed not set"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 2
    .line 3
    iget p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    iput p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 8
    .line 9
    return-object p0
.end method

.method public setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 2
    .line 3
    iget p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    iput p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 8
    .line 9
    return-object p0
.end method

.method public setPitch(F)Landroid/media/PlaybackParams;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 7
    .line 8
    iget p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    iput p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string/jumbo v0, "pitch must not be negative"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setSpeed(F)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 2
    .line 3
    iget p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 8
    .line 9
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
