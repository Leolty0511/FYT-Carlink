.class public final Landroid/bluetooth/BluetoothActivityEnergyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BT_STACK_STATE_INVALID:I = 0x0

.field public static final BT_STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final BT_STACK_STATE_STATE_IDLE:I = 0x3

.field public static final BT_STACK_STATE_STATE_SCANNING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothStackState:I

.field private mControllerEnergyUsed:J

.field private mControllerIdleTimeMs:J

.field private mControllerRxTimeMs:J

.field private mControllerTxTimeMs:J

.field private final mTimestamp:J

.field private mUidTraffic:[Landroid/bluetooth/UidTraffic;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    .line 3
    iput p3, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    .line 4
    iput-wide p4, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 5
    iput-wide p6, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 6
    iput-wide p8, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 7
    iput-wide p10, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 15
    sget-object v0, Landroid/bluetooth/UidTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/bluetooth/UidTraffic;

    iput-object p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothStackState()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getUidTraffic()[Landroid/bluetooth/UidTraffic;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setUidTraffic([Landroid/bluetooth/UidTraffic;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BluetoothActivityEnergyInfo{ mTimestamp="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mBluetoothStackState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mControllerTxTimeMs="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " mControllerRxTimeMs="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " mControllerIdleTimeMs="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " mControllerEnergyUsed="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " mUidTraffic="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    .line 69
    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, " }"

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
