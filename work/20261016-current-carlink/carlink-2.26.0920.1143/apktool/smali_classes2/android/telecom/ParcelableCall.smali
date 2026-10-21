.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilities:I

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTimeMillis:J

.field private final mCreationTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mId:Ljava/lang/String;

.field private final mIntentExtras:Landroid/os/Bundle;

.field private final mIsRttCallChanged:Z

.field private final mIsVideoCallProviderChanged:Z

.field private final mParentCallId:Ljava/lang/String;

.field private final mProperties:I

.field private final mRttCall:Landroid/telecom/ParcelableRttCall;

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mSupportedAudioRoutes:I

.field private mVideoCall:Landroid/telecom/VideoCallImpl;

.field private final mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;ZLandroid/telecom/ParcelableRttCall;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Z",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Z",
            "Landroid/telecom/ParcelableRttCall;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    move v1, p2

    .line 3
    iput v1, v0, Landroid/telecom/ParcelableCall;->mState:I

    move-object v1, p3

    .line 4
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    move v1, p5

    .line 6
    iput v1, v0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    move v1, p6

    .line 7
    iput v1, v0, Landroid/telecom/ParcelableCall;->mProperties:I

    move v1, p7

    .line 8
    iput v1, v0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    move-wide v1, p8

    .line 9
    iput-wide v1, v0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    move-object v1, p10

    .line 10
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    move v1, p11

    .line 11
    iput v1, v0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    move-object v1, p12

    .line 12
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    move/from16 v1, p13

    .line 13
    iput v1, v0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    move/from16 v1, p16

    .line 16
    iput-boolean v1, v0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    move/from16 v1, p18

    .line 18
    iput-boolean v1, v0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 21
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    move/from16 v1, p23

    .line 23
    iput v1, v0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 24
    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    move-wide/from16 v1, p27

    .line 27
    iput-wide v1, v0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConferenceableCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getCreationTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIsRttCallChanged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return v0
.end method

.method public getParcelableRttCall()Landroid/telecom/ParcelableRttCall;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object v0
.end method

.method public getParentCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getSupportedAudioRoutes()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return v0
.end method

.method public getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Landroid/telecom/VideoCallImpl;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1, p2}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :catch_0
    :cond_0
    iget-object p1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    .line 17
    .line 18
    return-object p1
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return v0
.end method

.method public isVideoCallProviderChanged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const-string v1, "[%s, parent:%s, children:%s]"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    .line 41
    .line 42
    iget p2, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    .line 66
    .line 67
    iget-boolean p2, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    .line 68
    .line 69
    int-to-byte p2, p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 74
    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 p2, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 97
    .line 98
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    .line 100
    .line 101
    iget p2, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    iget p2, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    .line 125
    .line 126
    iget-boolean p2, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    .line 127
    .line 128
    int-to-byte p2, p2

    .line 129
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    .line 133
    .line 134
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    .line 136
    .line 137
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
