.class public final Landroid/hardware/camera2/SprdCaptureResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_SPRD_DUAL_OTP_FLAG:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_OTP_VALUE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final CONTROL_SPRD_3D_RANGE_FIND_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SPRD_BLUR_COVERED:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SPRD_NEED_AF_BEFORE_CAPTURE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VCM_VALUE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    const-string v1, "com.addParameters.sprdDualOtpFlag"

    .line 4
    .line 5
    const-class v2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/hardware/camera2/SprdCaptureResult;->ANDROID_SPRD_DUAL_OTP_FLAG:Landroid/hardware/camera2/CaptureResult$Key;

    .line 11
    .line 12
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 13
    .line 14
    const-string v1, "com.addParameters.OtpValue"

    .line 15
    .line 16
    const-class v3, [B

    .line 17
    .line 18
    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroid/hardware/camera2/SprdCaptureResult;->CONTROL_OTP_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 22
    .line 23
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 24
    .line 25
    const-string v1, "com.addParameters.VcmValue"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroid/hardware/camera2/SprdCaptureResult;->CONTROL_VCM_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 31
    .line 32
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 33
    .line 34
    const-string v1, "com.addParameters.sprd3DRangeFinderDistance"

    .line 35
    .line 36
    const-class v2, [Ljava/lang/Double;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroid/hardware/camera2/SprdCaptureResult;->CONTROL_SPRD_3D_RANGE_FIND_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 42
    .line 43
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 44
    .line 45
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    const-string v2, "com.addParameters.sprd3BlurCovered"

    .line 48
    .line 49
    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Landroid/hardware/camera2/SprdCaptureResult;->CONTROL_SPRD_BLUR_COVERED:Landroid/hardware/camera2/CaptureResult$Key;

    .line 53
    .line 54
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 55
    .line 56
    const-string v2, "com.addParameters.isTakePictureWithFlash"

    .line 57
    .line 58
    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Landroid/hardware/camera2/SprdCaptureResult;->CONTROL_SPRD_NEED_AF_BEFORE_CAPTURE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
