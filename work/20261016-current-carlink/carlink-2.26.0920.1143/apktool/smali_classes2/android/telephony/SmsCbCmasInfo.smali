.class public Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final CMAS_CATEGORY_ENV:I = 0x7

.field public static final CMAS_CATEGORY_FIRE:I = 0x5

.field public static final CMAS_CATEGORY_GEO:I = 0x0

.field public static final CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final CMAS_CATEGORY_INFRA:I = 0x9

.field public static final CMAS_CATEGORY_MET:I = 0x1

.field public static final CMAS_CATEGORY_OTHER:I = 0xb

.field public static final CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategory:I

.field private final mCertainty:I

.field private final mMessageClass:I

.field private final mResponseType:I

.field private final mSeverity:I

.field private final mUrgency:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 3
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 4
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 5
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 6
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 7
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return v0
.end method

.method public getMessageClass()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    return v0
.end method

.method public getResponseType()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmsCbCmasInfo{messageClass="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", category="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", responseType="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", severity="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", urgency="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", certainty="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 59
    .line 60
    const/16 v2, 0x7d

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
