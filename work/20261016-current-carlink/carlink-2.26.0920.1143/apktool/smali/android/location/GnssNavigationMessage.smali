.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    .line 5
    .line 6
    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "<Invalid:"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 19
    .line 20
    const-string v2, ">"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    const-string v0, "ParityRebuilt"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const-string v0, "ParityPassed"

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    const-string v0, "Unknown"

    .line 34
    .line 35
    return-object v0
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/16 v1, 0x301

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0x501

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x502

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0x601

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x602

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "<Invalid:"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 36
    .line 37
    const-string v2, ">"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :pswitch_0
    const-string v0, "GPS CNAV2"

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_1
    const-string v0, "GPS L5-CNAV"

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_2
    const-string v0, "GPS L2-CNAV"

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_3
    const-string v0, "GPS L1 C/A"

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_0
    const-string v0, "Galileo F"

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    const-string v0, "Galileo I"

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    const-string v0, "Beidou D2"

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    const-string v0, "Beidou D1"

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    const-string v0, "Glonass L1 C/A"

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_5
    const-string v0, "Unknown"

    .line 72
    .line 73
    return-object v0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 3
    .line 4
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 8
    .line 9
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 10
    .line 11
    sget-object v1, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    .line 12
    .line 13
    iput-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 14
    .line 15
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public getSubmessageId()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    .line 2
    .line 3
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 4
    .line 5
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 6
    .line 7
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 8
    .line 9
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 10
    .line 11
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 12
    .line 13
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 14
    .line 15
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 16
    .line 17
    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 18
    .line 19
    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 20
    .line 21
    iget p1, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 22
    .line 23
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 24
    .line 25
    return-void
.end method

.method public setData([B)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    .line 7
    .line 8
    const-string v0, "Data must be a non-null array"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setMessageId(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setSubmessageId(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return-void
.end method

.method public setSvid(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GnssNavigationMessage:\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "Type"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 22
    .line 23
    const-string v3, "   %-15s = %s\n"

    .line 24
    .line 25
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v6, "Svid"

    .line 35
    .line 36
    aput-object v6, v2, v4

    .line 37
    .line 38
    iget v6, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 39
    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    aput-object v6, v2, v5

    .line 45
    .line 46
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-array v2, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v6, "Status"

    .line 56
    .line 57
    aput-object v6, v2, v4

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    aput-object v6, v2, v5

    .line 64
    .line 65
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-array v2, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string v6, "MessageId"

    .line 75
    .line 76
    aput-object v6, v2, v4

    .line 77
    .line 78
    iget v6, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    aput-object v6, v2, v5

    .line 85
    .line 86
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-array v2, v1, [Ljava/lang/Object;

    .line 94
    .line 95
    const-string v6, "SubmessageId"

    .line 96
    .line 97
    aput-object v6, v2, v4

    .line 98
    .line 99
    iget v6, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 100
    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    aput-object v6, v2, v5

    .line 106
    .line 107
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    .line 116
    const-string v2, "Data"

    .line 117
    .line 118
    aput-object v2, v1, v4

    .line 119
    .line 120
    const-string/jumbo v2, "{"

    .line 121
    .line 122
    .line 123
    aput-object v2, v1, v5

    .line 124
    .line 125
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 133
    .line 134
    array-length v2, v1

    .line 135
    const-string v3, "        "

    .line 136
    .line 137
    :goto_0
    if-ge v4, v2, :cond_0

    .line 138
    .line 139
    aget-byte v5, v1, v4

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    const-string v3, ", "

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_0
    const-string v1, " }"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 22
    .line 23
    array-length p2, p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 30
    .line 31
    .line 32
    iget p2, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
