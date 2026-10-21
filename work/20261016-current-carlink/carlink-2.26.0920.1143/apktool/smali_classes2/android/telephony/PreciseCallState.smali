.class public Landroid/telephony/PreciseCallState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PreciseCallState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x1

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x4

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x3

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x7

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x8

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x2

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x0

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x5

.field public static final PRECISE_CALL_STATE_NOT_VALID:I = -0x1

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x6


# instance fields
.field private mBackgroundCallState:I

.field private mDisconnectCause:I

.field private mForegroundCallState:I

.field private mPreciseDisconnectCause:I

.field private mRingingCallState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/PreciseCallState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseCallState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 10
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 11
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 12
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 13
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 4
    iput p2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 5
    iput p3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 6
    iput p4, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 7
    iput p5, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 16
    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 17
    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 18
    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 19
    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseCallState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/PreciseCallState;-><init>(Landroid/os/Parcel;)V

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
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/telephony/PreciseCallState;

    .line 21
    .line 22
    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 23
    .line 24
    iget v3, p1, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 25
    .line 26
    if-eq v2, v3, :cond_3

    .line 27
    .line 28
    iget v2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 29
    .line 30
    iget v3, p1, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    iget v2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 35
    .line 36
    iget v3, p1, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_3

    .line 39
    .line 40
    iget v2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 41
    .line 42
    iget v3, p1, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 43
    .line 44
    if-eq v2, v3, :cond_3

    .line 45
    .line 46
    iget v2, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 47
    .line 48
    iget p1, p1, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 49
    .line 50
    if-eq v2, p1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v0, v1

    .line 54
    :goto_0
    return v0
.end method

.method public getBackgroundCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    return v0
.end method

.method public getDisconnectCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    return v0
.end method

.method public getForegroundCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    return v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return v0
.end method

.method public getRingingCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget v2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 8
    .line 9
    add-int/2addr v0, v2

    .line 10
    mul-int/2addr v0, v1

    .line 11
    iget v2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    mul-int/2addr v0, v1

    .line 15
    iget v2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 16
    .line 17
    add-int/2addr v0, v2

    .line 18
    mul-int/2addr v0, v1

    .line 19
    iget v1, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Ringing call state: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, ", Foreground call state: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, ", Background call state: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, ", Disconnect cause: "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, ", Precise disconnect cause: "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v2, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
