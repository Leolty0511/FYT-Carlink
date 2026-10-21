.class public final Landroid/bluetooth/le/ScanResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_COMPLETE:I = 0x0

.field public static final DATA_TRUNCATED:I = 0x2

.field private static final ET_CONNECTABLE_MASK:I = 0x1

.field private static final ET_LEGACY_MASK:I = 0x10

.field public static final PERIODIC_INTERVAL_NOT_PRESENT:I = 0x0

.field public static final PHY_UNUSED:I = 0x0

.field public static final SID_NOT_PRESENT:I = 0xff

.field public static final TX_POWER_NOT_PRESENT:I = 0x7f


# instance fields
.field private mAdvertisingSid:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEventType:I

.field private mPeriodicAdvertisingInterval:I

.field private mPrimaryPhy:I

.field private mRssi:I

.field private mScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private mSecondaryPhy:I

.field private mTimestampNanos:J

.field private mTxPower:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/ScanResult$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanResult$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 15
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 16
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 17
    iput p4, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 18
    iput p5, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 19
    iput p6, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 20
    iput p7, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 21
    iput p8, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 22
    iput-object p9, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 23
    iput-wide p10, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4
    iput-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 5
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 6
    iput-wide p4, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    const/16 p1, 0x11

    .line 7
    iput p1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    const/16 p2, 0xff

    .line 10
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    const/16 p2, 0x7f

    .line 11
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 12
    iput p1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 15
    .line 16
    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Landroid/bluetooth/le/ScanResult;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroid/bluetooth/le/ScanResult;

    .line 18
    .line 19
    iget-object v2, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 20
    .line 21
    iget-object v3, p1, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 30
    .line 31
    iget v3, p1, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 36
    .line 37
    iget-object v3, p1, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-wide v2, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 46
    .line 47
    iget-wide v4, p1, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 54
    .line 55
    iget v3, p1, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 56
    .line 57
    if-ne v2, v3, :cond_2

    .line 58
    .line 59
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 60
    .line 61
    iget v3, p1, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 62
    .line 63
    if-ne v2, v3, :cond_2

    .line 64
    .line 65
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 66
    .line 67
    iget v3, p1, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 68
    .line 69
    if-ne v2, v3, :cond_2

    .line 70
    .line 71
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 72
    .line 73
    iget v3, p1, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 74
    .line 75
    if-ne v2, v3, :cond_2

    .line 76
    .line 77
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 78
    .line 79
    iget v3, p1, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    iget v2, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 84
    .line 85
    iget p1, p1, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 86
    .line 87
    if-ne v2, p1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 92
    :cond_3
    :goto_1
    return v1
.end method

.method public getAdvertisingSid()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    return v0
.end method

.method public getDataStatus()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getPeriodicAdvertisingInterval()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return v0
.end method

.method public getPrimaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Landroid/bluetooth/le/ScanRecord;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public getSecondaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    return v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    iget-object v2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x3

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x4

    .line 40
    aput-object v1, v0, v2

    .line 41
    .line 42
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x5

    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x6

    .line 58
    aput-object v1, v0, v2

    .line 59
    .line 60
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x7

    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/16 v2, 0x8

    .line 76
    .line 77
    aput-object v1, v0, v2

    .line 78
    .line 79
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/16 v2, 0x9

    .line 86
    .line 87
    aput-object v1, v0, v2

    .line 88
    .line 89
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    return v0
.end method

.method public isConnectable()Z
    .locals 2

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLegacy()Z
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScanResult{device="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", scanRecord="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", rssi="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", timestampNanos="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", eventType="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", primaryPhy="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", secondaryPhy="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", advertisingSid="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", txPower="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", periodicAdvertisingInterval="

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 103
    .line 104
    const/16 v2, 0x7d

    .line 105
    .line 106
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget p2, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
