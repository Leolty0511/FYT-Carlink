.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_ROLE_DEVICE:I = 0x2

.field public static final DATA_ROLE_HOST:I = 0x1

.field public static final DATA_ROLE_NONE:I = 0x0

.field public static final MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final MODE_DFP:I = 0x2

.field public static final MODE_DUAL:I = 0x3

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_UFP:I = 0x1

.field private static final NUM_DATA_ROLES:I = 0x3

.field public static final POWER_ROLE_NONE:I = 0x0

.field private static final POWER_ROLE_OFFSET:I = 0x0

.field public static final POWER_ROLE_SINK:I = 0x2

.field public static final POWER_ROLE_SOURCE:I = 0x1


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedModes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/UsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    .line 7
    .line 8
    return-void
.end method

.method public static checkDataRole(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string/jumbo v1, "powerRole"

    .line 3
    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static checkMode(I)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string/jumbo v1, "portMode"

    .line 3
    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static checkPowerRole(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string/jumbo v1, "powerRole"

    .line 3
    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static checkRoles(II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "powerRole"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string p0, "dataRole"

    .line 10
    .line 11
    invoke-static {p1, v1, v2, p0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static combineRolesAsBit(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    add-int/lit8 p0, p0, 0x0

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, p1

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "device"

    return-object p0

    :cond_1
    const-string/jumbo p0, "host"

    return-object p0

    :cond_2
    const-string/jumbo p0, "no-data"

    return-object p0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "none"

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    and-int/lit8 v1, p0, 0x3

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    const-string v1, "dual, "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    and-int/lit8 v1, p0, 0x2

    .line 25
    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    const-string v1, "dfp, "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    and-int/lit8 v1, p0, 0x1

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    .line 39
    const-string/jumbo v1, "ufp, "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    and-int/lit8 v1, p0, 0x4

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    if-ne v1, v2, :cond_4

    .line 49
    .line 50
    const-string v1, "audio_acc, "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_4
    and-int/lit8 v1, p0, 0x8

    .line 56
    .line 57
    const/16 v2, 0x8

    .line 58
    .line 59
    if-ne v1, v2, :cond_5

    .line 60
    .line 61
    const-string v1, "debug_acc, "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    sub-int/2addr p0, v3

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public static powerRoleToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "sink"

    return-object p0

    :cond_1
    const-string/jumbo p0, "source"

    return-object p0

    :cond_2
    const-string/jumbo p0, "no-power"

    return-object p0
.end method

.method public static roleCombinationsToString(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    shl-int v4, v1, v3

    .line 17
    .line 18
    not-int v4, v4

    .line 19
    and-int/2addr p0, v4

    .line 20
    div-int/lit8 v4, v3, 0x3

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    add-int/2addr v4, v5

    .line 24
    rem-int/lit8 v3, v3, 0x3

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v2, v5

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string v5, ", "

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x3a

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p0, "]"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedModes()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public isModeSupported(I)Z
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UsbPort{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
