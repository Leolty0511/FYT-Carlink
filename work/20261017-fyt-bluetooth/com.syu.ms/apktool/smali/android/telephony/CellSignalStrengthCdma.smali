.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 5
    invoke-virtual/range {p0 .. p5}, Landroid/telephony/CellSignalStrengthCdma;->initialize(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthCdma"

    .line 1
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    .line 2
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method public copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 2
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 3
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 4
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 5
    iget p1, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

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

    check-cast v1, Landroid/telephony/CellSignalStrengthCdma;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v1, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public getAsuLevel()I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x63

    const/4 v4, 0x2

    const/16 v5, -0x64

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, -0x5a

    const/16 v9, 0x10

    const/16 v10, -0x4b

    if-lt v0, v10, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/16 v10, -0x52

    if-lt v0, v10, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    if-lt v0, v8, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    if-lt v0, v5, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    if-lt v1, v8, :cond_5

    move v2, v9

    goto :goto_1

    :cond_5
    if-lt v1, v5, :cond_6

    move v2, v7

    goto :goto_1

    :cond_6
    const/16 v5, -0x73

    if-lt v1, v5, :cond_7

    move v2, v6

    goto :goto_1

    :cond_7
    const/16 v5, -0x82

    if-lt v1, v5, :cond_8

    move v2, v4

    goto :goto_1

    :cond_8
    const/16 v4, -0x96

    if-lt v1, v4, :cond_9

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    if-ge v0, v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, -0x4b

    if-lt v0, v7, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/16 v7, -0x55

    if-lt v0, v7, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v7, -0x64

    if-lt v0, v7, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    const/16 v7, -0x5a

    if-lt v1, v7, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    const/16 v6, -0x6e

    if-lt v1, v6, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    move v2, v4

    goto :goto_1

    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    if-ge v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    return v0
.end method

.method public getDbm()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v7, -0x41

    if-lt v0, v7, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v7, -0x69

    if-lt v0, v7, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const/4 v7, 0x7

    if-lt v1, v7, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    move v2, v6

    goto :goto_1

    :cond_5
    if-lt v1, v6, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    if-lt v1, v5, :cond_7

    move v2, v5

    :cond_7
    :goto_1
    if-ge v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v0

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize(IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 2
    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 3
    iput p3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 4
    iput p4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 5
    iput p5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public setCdmaDbm(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 2
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 3
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 4
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 5
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
