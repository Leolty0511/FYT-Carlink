.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"


# instance fields
.field private mCqi:I

.field private mRsrp:I

.field private mRsrq:I

.field private mRssnr:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 5
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/CellSignalStrengthLte;->initialize(IIIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    mul-int/lit8 v0, v0, -0x1

    .line 11
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v0, v1, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 13
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "CellSignalStrengthLte"

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
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 2
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method public copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 2
    .line 3
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 4
    .line 5
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 6
    .line 7
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 8
    .line 9
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 10
    .line 11
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 12
    .line 13
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 14
    .line 15
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 16
    .line 17
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 18
    .line 19
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 20
    .line 21
    iget p1, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 22
    .line 23
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 24
    .line 25
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
    check-cast v1, Landroid/telephony/CellSignalStrengthLte;
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
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 9
    .line 10
    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 15
    .line 16
    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 21
    .line 22
    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 23
    .line 24
    if-ne p1, v2, :cond_1

    .line 25
    .line 26
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 27
    .line 28
    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 29
    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 33
    .line 34
    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 35
    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 39
    .line 40
    iget v1, v1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 41
    .line 42
    if-ne p1, v1, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :catch_0
    :cond_1
    return v0
.end method

.method public getAsuLevel()I
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    :cond_0
    const/16 v1, -0x8c

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, -0x2b

    if-lt v0, v1, :cond_2

    const/16 v0, 0x61

    goto :goto_0

    :cond_2
    add-int/lit16 v0, v0, 0x8c

    :goto_0
    return v0
.end method

.method public getCqi()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return v0
.end method

.method public getDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getLevel()I
    .locals 9

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const v6, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne v0, v6, :cond_0

    .line 12
    .line 13
    move v7, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v7, -0x5f

    .line 16
    .line 17
    if-lt v0, v7, :cond_1

    .line 18
    .line 19
    move v7, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v7, -0x69

    .line 22
    .line 23
    if-lt v0, v7, :cond_2

    .line 24
    .line 25
    move v7, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/16 v7, -0x73

    .line 28
    .line 29
    if-lt v0, v7, :cond_3

    .line 30
    .line 31
    move v7, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move v7, v2

    .line 34
    :goto_0
    iget v8, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 35
    .line 36
    if-ne v8, v6, :cond_4

    .line 37
    .line 38
    move v1, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    const/16 v5, 0x2d

    .line 41
    .line 42
    if-lt v8, v5, :cond_5

    .line 43
    .line 44
    move v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_5
    const/16 v4, 0xa

    .line 47
    .line 48
    if-lt v8, v4, :cond_6

    .line 49
    .line 50
    move v1, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_6
    const/16 v3, -0x1e

    .line 53
    .line 54
    if-lt v8, v3, :cond_7

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    move v1, v2

    .line 58
    :goto_1
    if-ne v0, v6, :cond_8

    .line 59
    .line 60
    :goto_2
    move v7, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_8
    if-ne v8, v6, :cond_9

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_9
    if-ge v1, v7, :cond_a

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_a
    :goto_3
    return v7
.end method

.method public getRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return v0
.end method

.method public getRssnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return v0
.end method

.method public getTimingAdvance()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public initialize(IIIIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 2
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 3
    iput p3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 4
    iput p4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 5
    iput p5, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 6
    iput p6, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method public initialize(Landroid/telephony/SignalStrength;I)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 8
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 9
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 10
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 11
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 12
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 5
    .line 6
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 7
    .line 8
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 9
    .line 10
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 11
    .line 12
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 13
    .line 14
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 15
    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthLte: ss="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    const/4 v1, 0x1

    .line 10
    const v2, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-eq p2, v2, :cond_0

    .line 14
    .line 15
    move v3, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v1

    .line 18
    :goto_0
    mul-int/2addr p2, v3

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 23
    .line 24
    if-eq p2, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_1
    mul-int/2addr p2, v0

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
