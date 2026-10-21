.class public final Landroid/bluetooth/le/AdvertisingSetParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERVAL_HIGH:I = 0x640

.field public static final INTERVAL_LOW:I = 0xa0

.field public static final INTERVAL_MAX:I = 0xffffff

.field public static final INTERVAL_MEDIUM:I = 0x190

.field public static final INTERVAL_MIN:I = 0xa0

.field private static final LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20

.field public static final TX_POWER_HIGH:I = 0x1

.field public static final TX_POWER_LOW:I = -0xf

.field public static final TX_POWER_MAX:I = 0x1

.field public static final TX_POWER_MEDIUM:I = -0x7

.field public static final TX_POWER_MIN:I = -0x7f

.field public static final TX_POWER_ULTRA_LOW:I = -0x15


# instance fields
.field private final connectable:Z

.field private final includeTxPower:Z

.field private final interval:I

.field private final isAnonymous:Z

.field private final isLegacy:Z

.field private final primaryPhy:I

.field private final scannable:Z

.field private final secondaryPhy:I

.field private final txPowerLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertisingSetParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
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
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertisingSetParameters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZZZZZIIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    .line 5
    iput-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    .line 6
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 7
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 8
    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 9
    iput p6, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 10
    iput p7, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 11
    iput p8, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 12
    iput p9, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIII)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    return v0
.end method

.method public getPrimaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    return v0
.end method

.method public getSecondaryPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    return v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    return v0
.end method

.method public includeTxPower()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    return v0
.end method

.method public isLegacy()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    return v0
.end method

.method public isScannable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdvertisingSetParameters [connectable="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isLegacy="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isAnonymous="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", includeTxPower="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", primaryPhy="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", secondaryPhy="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", interval="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", txPowerLevel="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    .line 79
    .line 80
    const-string v2, "]"

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->connectable:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->scannable:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->isAnonymous:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->includeTxPower:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->primaryPhy:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->secondaryPhy:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->interval:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->txPowerLevel:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
