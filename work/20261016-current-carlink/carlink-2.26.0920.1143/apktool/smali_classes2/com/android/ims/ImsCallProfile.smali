.class public Lcom/android/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final CALL_TYPE_VOICE:I = 0x2

.field public static final CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final CALL_TYPE_VS:I = 0x8

.field public static final CALL_TYPE_VS_RX:I = 0xa

.field public static final CALL_TYPE_VS_TX:I = 0x9

.field public static final CALL_TYPE_VT:I = 0x4

.field public static final CALL_TYPE_VT_NODIR:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x6

.field public static final CALL_TYPE_VT_TX:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALSTRING_NORMAL:I = 0x0

.field public static final DIALSTRING_SS_CONF:I = 0x1

.field public static final DIALSTRING_USSD:I = 0x2

.field public static final EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final EXTRA_CALL_RAT_TYPE:Ljava/lang/String; = "CallRadioTech"

.field public static final EXTRA_CALL_RAT_TYPE_ALT:Ljava/lang/String; = "callRadioTech"

.field public static final EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRA_CONFERENCE:Ljava/lang/String; = "conference"

.field public static final EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final EXTRA_E_CALL:Ljava/lang/String; = "e_call"

.field public static final EXTRA_IS_CALL_PULL:Ljava/lang/String; = "CallPull"

.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "OemCallExtras"

.field public static final EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final SERVICE_TYPE_NONE:I = 0x0

.field public static final SERVICE_TYPE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsCallProfile"


# instance fields
.field public mCallExtras:Landroid/os/Bundle;

.field public mCallType:I

.field public mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

.field public mRestrictCause:I

.field public mServiceType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/ImsCallProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 7
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 9
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 12
    iput p1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 13
    iput p2, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 14
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 15
    new-instance p1, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {p1}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static OIRToPresentation(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static getCallTypeFromVideoState(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {p0, v1}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x4

    .line 12
    invoke-static {p0, v3}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x7

    .line 19
    return p0

    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x5

    .line 25
    return p0

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x6

    .line 31
    return p0

    .line 32
    :cond_2
    if-eqz v0, :cond_3

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    return v1
.end method

.method public static getVideoStateFromCallType(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :cond_3
    :goto_0
    return v0
.end method

.method public static getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/ims/ImsCallProfile;->isVideoPaused()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    or-int/lit8 p0, v0, 0x4

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    and-int/lit8 p0, v0, -0x5

    .line 23
    .line 24
    :goto_0
    return p0
.end method

.method private static isVideoStateSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static presentationToOIR(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/ims/ImsStreamMediaProfile;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCallExtraInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isVideoCall()Z
    .locals 1

    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public isVideoPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v0, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{ serviceType="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", callType="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", restrictCause="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", mediaProfile="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " }"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public updateCallExtras(Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/os/Bundle;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method

.method public updateCallType(Lcom/android/ims/ImsCallProfile;)V
    .locals 0

    iget p1, p1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    iput p1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
