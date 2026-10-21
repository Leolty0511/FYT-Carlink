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

    .line 1
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
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 14
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

    const-string v0, "CellSignalStrengthLte"

    .line 1
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 2
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 3
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 4
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 5
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 6
    iget p1, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthLte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v1, v1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public getAsuLevel()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v0

    const/16 v1, -0x8c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, -0x2b

    if-lt v0, v1, :cond_1

    const/16 v0, 0x61

    goto :goto_0

    :cond_1
    add-int/lit16 v0, v0, 0x8c

    :goto_0
    return v0
.end method

.method public getDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getLevel()I
    .locals 9

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    const/16 v7, -0x69

    if-lt v0, v7, :cond_2

    move v7, v3

    goto :goto_0

    :cond_2
    const/16 v7, -0x73

    if-lt v0, v7, :cond_3

    move v7, v1

    goto :goto_0

    :cond_3
    move v7, v2

    .line 2
    :goto_0
    iget v8, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v8, v6, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    const/16 v5, 0x2d

    if-lt v8, v5, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    const/16 v4, 0xa

    if-lt v8, v4, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    const/16 v3, -0x1e

    if-lt v8, v3, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    if-ne v0, v6, :cond_8

    :goto_2
    move v7, v1

    goto :goto_3

    :cond_8
    if-ne v8, v6, :cond_9

    goto :goto_3

    :cond_9
    if-ge v1, v7, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    return v7
.end method

.method public getTimingAdvance()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
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

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 2
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 3
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 4
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 5
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 6
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
