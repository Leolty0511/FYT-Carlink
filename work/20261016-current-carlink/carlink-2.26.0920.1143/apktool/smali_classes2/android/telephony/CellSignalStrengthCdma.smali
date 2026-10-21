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
    .locals 2

    .line 8
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    mul-int/lit8 v0, v0, -0x1

    .line 10
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-eq v0, v1, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-eq v0, v1, :cond_2

    mul-int/lit8 v0, v0, -0x1

    .line 14
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 15
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-eq v0, v1, :cond_3

    mul-int/lit8 v0, v0, -0x1

    .line 16
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 17
    :cond_3
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

    .line 1
    const-string v0, "CellSignalStrengthCdma"

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

    .line 2
    .line 3
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 4
    .line 5
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 6
    .line 7
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 8
    .line 9
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 10
    .line 11
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 12
    .line 13
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 14
    .line 15
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 16
    .line 17
    iget p1, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 18
    .line 19
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 20
    .line 21
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
    check-cast v1, Landroid/telephony/CellSignalStrengthCdma;
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
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 9
    .line 10
    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 15
    .line 16
    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 21
    .line 22
    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 23
    .line 24
    if-ne p1, v2, :cond_1

    .line 25
    .line 26
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 27
    .line 28
    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 29
    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 33
    .line 34
    iget v1, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 35
    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :catch_0
    :cond_1
    return v0
.end method

.method public getAsuLevel()I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    const/16 v4, -0x64

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/16 v6, 0x8

    .line 15
    .line 16
    const/16 v7, -0x5a

    .line 17
    .line 18
    const/16 v8, 0x10

    .line 19
    .line 20
    const/16 v9, 0x63

    .line 21
    .line 22
    const v10, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-ne v0, v10, :cond_1

    .line 26
    .line 27
    :cond_0
    move v0, v9

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v11, -0x4b

    .line 30
    .line 31
    if-lt v0, v11, :cond_2

    .line 32
    .line 33
    move v0, v8

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 v11, -0x52

    .line 36
    .line 37
    if-lt v0, v11, :cond_3

    .line 38
    .line 39
    move v0, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    if-lt v0, v7, :cond_4

    .line 42
    .line 43
    move v0, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const/16 v11, -0x5f

    .line 46
    .line 47
    if-lt v0, v11, :cond_5

    .line 48
    .line 49
    move v0, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_5
    if-lt v0, v4, :cond_0

    .line 52
    .line 53
    move v0, v2

    .line 54
    :goto_0
    if-ne v1, v10, :cond_7

    .line 55
    .line 56
    :cond_6
    move v2, v9

    .line 57
    goto :goto_1

    .line 58
    :cond_7
    if-lt v1, v7, :cond_8

    .line 59
    .line 60
    move v2, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_8
    if-lt v1, v4, :cond_9

    .line 63
    .line 64
    move v2, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_9
    const/16 v4, -0x73

    .line 67
    .line 68
    if-lt v1, v4, :cond_a

    .line 69
    .line 70
    move v2, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_a
    const/16 v4, -0x82

    .line 73
    .line 74
    if-lt v1, v4, :cond_b

    .line 75
    .line 76
    move v2, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_b
    const/16 v3, -0x96

    .line 79
    .line 80
    if-lt v1, v3, :cond_6

    .line 81
    .line 82
    :goto_1
    if-ge v0, v2, :cond_c

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_c
    move v0, v2

    .line 86
    :goto_2
    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const v7, 0x7fffffff

    .line 15
    .line 16
    .line 17
    if-ne v0, v7, :cond_1

    .line 18
    .line 19
    :cond_0
    move v0, v6

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v8, -0x4b

    .line 22
    .line 23
    if-lt v0, v8, :cond_2

    .line 24
    .line 25
    move v0, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/16 v8, -0x55

    .line 28
    .line 29
    if-lt v0, v8, :cond_3

    .line 30
    .line 31
    move v0, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/16 v8, -0x5f

    .line 34
    .line 35
    if-lt v0, v8, :cond_4

    .line 36
    .line 37
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/16 v8, -0x64

    .line 40
    .line 41
    if-lt v0, v8, :cond_0

    .line 42
    .line 43
    move v0, v2

    .line 44
    :goto_0
    if-ne v1, v7, :cond_6

    .line 45
    .line 46
    :cond_5
    move v2, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_6
    const/16 v7, -0x5a

    .line 49
    .line 50
    if-lt v1, v7, :cond_7

    .line 51
    .line 52
    move v2, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_7
    const/16 v5, -0x6e

    .line 55
    .line 56
    if-lt v1, v5, :cond_8

    .line 57
    .line 58
    move v2, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_8
    const/16 v4, -0x82

    .line 61
    .line 62
    if-lt v1, v4, :cond_9

    .line 63
    .line 64
    move v2, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_9
    const/16 v3, -0x96

    .line 67
    .line 68
    if-lt v1, v3, :cond_5

    .line 69
    .line 70
    :goto_1
    if-ge v0, v2, :cond_a

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_a
    move v0, v2

    .line 74
    :goto_2
    return v0
.end method

.method public getDbm()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x0

    .line 14
    const v7, 0x7fffffff

    .line 15
    .line 16
    .line 17
    if-ne v0, v7, :cond_1

    .line 18
    .line 19
    :cond_0
    move v0, v6

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v8, -0x41

    .line 22
    .line 23
    if-lt v0, v8, :cond_2

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/16 v8, -0x4b

    .line 28
    .line 29
    if-lt v0, v8, :cond_3

    .line 30
    .line 31
    move v0, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/16 v8, -0x5a

    .line 34
    .line 35
    if-lt v0, v8, :cond_4

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/16 v8, -0x69

    .line 40
    .line 41
    if-lt v0, v8, :cond_0

    .line 42
    .line 43
    move v0, v4

    .line 44
    :goto_0
    if-ne v1, v7, :cond_6

    .line 45
    .line 46
    :cond_5
    move v2, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_6
    const/4 v7, 0x7

    .line 49
    if-lt v1, v7, :cond_7

    .line 50
    .line 51
    move v2, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_7
    const/4 v3, 0x5

    .line 54
    if-lt v1, v3, :cond_8

    .line 55
    .line 56
    move v2, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_8
    if-lt v1, v5, :cond_9

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_9
    if-lt v1, v4, :cond_5

    .line 62
    .line 63
    move v2, v4

    .line 64
    :goto_1
    if-ge v0, v2, :cond_a

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_a
    move v0, v2

    .line 68
    :goto_2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-ge v0, v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v0, v1

    .line 27
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize(IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 2
    .line 3
    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 4
    .line 5
    iput p3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 6
    .line 7
    iput p4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 8
    .line 9
    iput p5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 10
    .line 11
    return-void
.end method

.method public setCdmaDbm(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 5
    .line 6
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 7
    .line 8
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 9
    .line 10
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 11
    .line 12
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 13
    .line 14
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .locals 4

    .line 1
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-eq p2, v2, :cond_0

    .line 9
    .line 10
    move v3, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    :goto_0
    mul-int/2addr p2, v3

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 18
    .line 19
    if-eq p2, v2, :cond_1

    .line 20
    .line 21
    move v3, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v3, v1

    .line 24
    :goto_1
    mul-int/2addr p2, v3

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 29
    .line 30
    if-eq p2, v2, :cond_2

    .line 31
    .line 32
    move v3, v0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v3, v1

    .line 35
    :goto_2
    mul-int/2addr p2, v3

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 40
    .line 41
    if-eq p2, v2, :cond_3

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v0, v1

    .line 45
    :goto_3
    mul-int/2addr p2, v0

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
