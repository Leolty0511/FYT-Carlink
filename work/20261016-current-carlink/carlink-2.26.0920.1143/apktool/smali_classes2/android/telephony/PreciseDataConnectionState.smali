.class public Landroid/telephony/PreciseDataConnectionState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPN:Ljava/lang/String;

.field private mAPNType:Ljava/lang/String;

.field private mFailCause:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkType:I

.field private mReason:Ljava/lang/String;

.field private mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/PreciseDataConnectionState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    const-string v0, ""

    .line 13
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 17
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 4
    iput p2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 5
    iput-object p3, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 9
    iput-object p7, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    const-string v0, ""

    .line 21
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 25
    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseDataConnectionState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/PreciseDataConnectionState;-><init>(Landroid/os/Parcel;)V

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
    check-cast p1, Landroid/telephony/PreciseDataConnectionState;

    .line 21
    .line 22
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    iget-object v2, p1, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    iget-object v2, p1, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v2, :cond_6

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_6

    .line 56
    .line 57
    return v1

    .line 58
    :cond_6
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v2, :cond_7

    .line 61
    .line 62
    iget-object v2, p1, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v2, :cond_8

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_8

    .line 74
    .line 75
    return v1

    .line 76
    :cond_8
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 77
    .line 78
    if-nez v2, :cond_9

    .line 79
    .line 80
    iget-object v2, p1, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 81
    .line 82
    if-eqz v2, :cond_a

    .line 83
    .line 84
    return v1

    .line 85
    :cond_9
    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_a

    .line 92
    .line 93
    return v1

    .line 94
    :cond_a
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 95
    .line 96
    iget v3, p1, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 97
    .line 98
    if-eq v2, v3, :cond_b

    .line 99
    .line 100
    return v1

    .line 101
    :cond_b
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v2, :cond_c

    .line 104
    .line 105
    iget-object v2, p1, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v2, :cond_d

    .line 108
    .line 109
    return v1

    .line 110
    :cond_c
    iget-object v3, p1, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_d

    .line 117
    .line 118
    return v1

    .line 119
    :cond_d
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 120
    .line 121
    iget p1, p1, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 122
    .line 123
    if-eq v2, p1, :cond_e

    .line 124
    .line 125
    return v1

    .line 126
    :cond_e
    return v0
.end method

.method public getDataConnectionAPN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionAPNType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionChangeReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionFailCause()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public getDataConnectionNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    return v0
.end method

.method public getDataConnectionState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 8
    .line 9
    add-int/2addr v0, v2

    .line 10
    mul-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :goto_0
    add-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    move v2, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_1
    add-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    mul-int/2addr v0, v1

    .line 48
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    move v2, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_3
    add-int/2addr v0, v2

    .line 59
    mul-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    :goto_4
    add-int/2addr v0, v3

    .line 70
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Data Connection state: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 14
    .line 15
    const-string v3, ", Network type: "

    .line 16
    .line 17
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 22
    .line 23
    const-string v3, ", APN type: "

    .line 24
    .line 25
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, ", APN: "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, ", Change reason: "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, ", Link properties: "

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, ", Fail cause: "

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
