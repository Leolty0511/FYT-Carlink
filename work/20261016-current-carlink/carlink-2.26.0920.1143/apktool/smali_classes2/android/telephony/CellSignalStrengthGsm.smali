.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final GSM_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final GSM_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final GSM_SIGNAL_STRENGTH_MODERATE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->initialize(II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "CellSignalStrengthGsm"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    .line 2
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method public copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 2
    .line 3
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 4
    .line 5
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 6
    .line 7
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 8
    .line 9
    iget p1, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 10
    .line 11
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 12
    .line 13
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    move-object v1, p1

    .line 3
    check-cast v1, Landroid/telephony/CellSignalStrengthGsm;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 9
    .line 10
    iget v2, v1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 15
    .line 16
    iget v2, v1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    iget p1, v1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 21
    .line 22
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :catch_0
    :cond_1
    return v0
.end method

.method public getAsuLevel()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    return v0
.end method

.method public getDbm()I
    .locals 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    const/16 v1, 0x63

    const v2, 0x7fffffff

    if-ne v0, v1, :cond_0

    move v0, v2

    :cond_0
    if-eq v0, v2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x71

    :cond_1
    return v2
.end method

.method public getLevel()I
    .locals 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    if-lt v0, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    if-lt v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public getTimingAdvance()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public initialize(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 2
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    const p1, 0x7fffffff

    .line 3
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return-void
.end method

.method public initialize(III)V
    .locals 0

    .line 4
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 5
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 6
    iput p3, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 5
    .line 6
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 7
    .line 8
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthGsm: ss="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
