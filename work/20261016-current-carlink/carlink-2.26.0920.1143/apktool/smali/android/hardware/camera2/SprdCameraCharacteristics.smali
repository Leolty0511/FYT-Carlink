.class public Landroid/hardware/camera2/SprdCameraCharacteristics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTROL_AVAILABLE_ANTIBAND_AUTO:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_CONTRAST:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FLASH_LEVELS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_ISO:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_METERING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_SATURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_SMILEENABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPRD_OEM_AVAILABLE_BRIGHTNESS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    const-string v1, "com.addParameters.availableSaturation"

    .line 4
    .line 5
    const-class v2, [I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_SATURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 11
    .line 12
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    .line 14
    const-string v1, "com.addParameters.availableMeteringMode"

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_METERING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 20
    .line 21
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 22
    .line 23
    const-string v1, "com.addParameters.availableISO"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_ISO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 29
    .line 30
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 31
    .line 32
    const-string v1, "com.addParameters.availableBrightness"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->SPRD_OEM_AVAILABLE_BRIGHTNESS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 38
    .line 39
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 40
    .line 41
    const-string v1, "com.addParameters.availableContrast"

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_CONTRAST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 47
    .line 48
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 49
    .line 50
    const-string v1, "com.addParameters.availableSmileEnable"

    .line 51
    .line 52
    const-class v2, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_SMILEENABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 58
    .line 59
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 60
    .line 61
    const-string v1, "com.addParameters.availableAntibandAutoSupported"

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_ANTIBAND_AUTO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 67
    .line 68
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 69
    .line 70
    const-string v1, "com.addParameters.availableSprdFlashLevel"

    .line 71
    .line 72
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Landroid/hardware/camera2/SprdCameraCharacteristics;->CONTROL_AVAILABLE_FLASH_LEVELS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
