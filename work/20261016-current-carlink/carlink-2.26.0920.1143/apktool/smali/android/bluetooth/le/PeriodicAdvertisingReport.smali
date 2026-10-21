.class public final Landroid/bluetooth/le/PeriodicAdvertisingReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_COMPLETE:I = 0x0

.field public static final DATA_INCOMPLETE_TRUNCATED:I = 0x2


# instance fields
.field private data:Landroid/bluetooth/le/ScanRecord;

.field private dataStatus:I

.field private rssi:I

.field private syncHandle:I

.field private timestampNanos:J

.field private txPower:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILandroid/bluetooth/le/ScanRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 4
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 5
    iput p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 6
    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 7
    iput-object p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingReport$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(Landroid/os/Parcel;)V

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
    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 41
    .line 42
    :cond_0
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
    const-class v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;

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
    check-cast p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 18
    .line 19
    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 20
    .line 21
    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 26
    .line 27
    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 32
    .line 33
    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 38
    .line 39
    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 44
    .line 45
    iget-object v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-wide v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    .line 54
    .line 55
    iget-wide v4, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    .line 56
    .line 57
    cmp-long p1, v2, v4

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v0, v1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_3
    :goto_1
    return v1
.end method

.method public getData()Landroid/bluetooth/le/ScanRecord;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public getDataStatus()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    return v0
.end method

.method public getSyncHandle()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    return v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    return-wide v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x5

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PeriodicAdvertisingReport{syncHandle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", txPower="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", rssi="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", dataStatus="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", data="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", timestampNanos="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->timestampNanos:J

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v1, 0x7d

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->syncHandle:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->txPower:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->rssi:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->dataStatus:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->data:Landroid/bluetooth/le/ScanRecord;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
