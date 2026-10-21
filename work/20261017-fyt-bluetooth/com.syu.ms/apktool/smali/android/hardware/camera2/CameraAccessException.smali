.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "SourceFile"


# static fields
.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field private static final serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method private static getDefaultMessage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object p0

    :cond_1
    const-string p0, "The camera device is in use already"

    return-object p0

    :cond_2
    const-string p0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object p0

    :cond_3
    const-string p0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object p0

    :cond_4
    const-string p0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object p0
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
