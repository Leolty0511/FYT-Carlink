.class public Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mActivatePopup:Z

.field private final mEmergencyUserAlert:Z

.field private final mPrimary:Z

.field private final mWarningSecurityInformation:[B

.field private final mWarningType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 3
    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 4
    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 5
    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 6
    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryNotificationSignature()[B
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/16 v2, 0x32

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x7

    .line 12
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getPrimaryNotificationTimestamp()J
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x7

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    aget-byte v0, v0, v1

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aget-byte v1, v1, v2

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    aget-byte v3, v3, v4

    .line 30
    .line 31
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    aget-byte v4, v4, v5

    .line 39
    .line 40
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    aget-byte v5, v5, v6

    .line 48
    .line 49
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    iget-object v6, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    aget-byte v6, v6, v7

    .line 57
    .line 58
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v7, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 63
    .line 64
    const/4 v8, 0x6

    .line 65
    aget-byte v7, v7, v8

    .line 66
    .line 67
    and-int/lit8 v8, v7, -0x9

    .line 68
    .line 69
    int-to-byte v8, v8

    .line 70
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    and-int/lit8 v7, v7, 0x8

    .line 75
    .line 76
    if-nez v7, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    neg-int v8, v8

    .line 80
    :goto_0
    new-instance v7, Landroid/text/format/Time;

    .line 81
    .line 82
    const-string v9, "UTC"

    .line 83
    .line 84
    invoke-direct {v7, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    add-int/lit16 v0, v0, 0x7d0

    .line 88
    .line 89
    iput v0, v7, Landroid/text/format/Time;->year:I

    .line 90
    .line 91
    sub-int/2addr v1, v2

    .line 92
    iput v1, v7, Landroid/text/format/Time;->month:I

    .line 93
    .line 94
    iput v3, v7, Landroid/text/format/Time;->monthDay:I

    .line 95
    .line 96
    iput v4, v7, Landroid/text/format/Time;->hour:I

    .line 97
    .line 98
    iput v5, v7, Landroid/text/format/Time;->minute:I

    .line 99
    .line 100
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 101
    .line 102
    invoke-virtual {v7, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    mul-int/lit8 v8, v8, 0xf

    .line 107
    .line 108
    mul-int/lit8 v8, v8, 0x3c

    .line 109
    .line 110
    mul-int/lit16 v8, v8, 0x3e8

    .line 111
    .line 112
    int-to-long v2, v8

    .line 113
    sub-long/2addr v0, v2

    .line 114
    return-wide v0

    .line 115
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    .line 116
    .line 117
    return-wide v0
.end method

.method public getWarningType()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    return v0
.end method

.method public isEmergencyUserAlert()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    return v0
.end method

.method public isPopupAlert()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsCbEtwsInfo{warningType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activatePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
