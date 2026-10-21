.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryChargeCounter:I

.field public batteryFullCharge:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryFullCharge:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 4
    .line 5
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 8
    .line 9
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 12
    .line 13
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 14
    .line 15
    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 16
    .line 17
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    .line 18
    .line 19
    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    .line 20
    .line 21
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 22
    .line 23
    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 24
    .line 25
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 26
    .line 27
    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 28
    .line 29
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 32
    .line 33
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 34
    .line 35
    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 36
    .line 37
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 38
    .line 39
    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 40
    .line 41
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 42
    .line 43
    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 44
    .line 45
    iget v0, p1, Landroid/os/BatteryProperties;->batteryFullCharge:I

    .line 46
    .line 47
    iput v0, p0, Landroid/os/BatteryProperties;->batteryFullCharge:I

    .line 48
    .line 49
    iget v0, p1, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 50
    .line 51
    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 52
    .line 53
    iget-object p1, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p1, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Landroid/os/BatteryProperties;->batteryFullCharge:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
