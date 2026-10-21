.class public Landroid/hardware/camera2/utils/CameraRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mMessage:Ljava/lang/String;

.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 5
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 8
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 12
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public asChecked()Landroid/hardware/camera2/CameraAccessException;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    iget v3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    invoke-direct {v2, v3, v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 5
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    iget v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object v2
.end method

.method public final getReason()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    return v0
.end method
