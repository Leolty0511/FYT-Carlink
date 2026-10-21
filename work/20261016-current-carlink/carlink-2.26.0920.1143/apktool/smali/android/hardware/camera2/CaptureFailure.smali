.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureFailure$FailureReason;
    }
.end annotation


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mDropped:Z

.field private final mFrameNumber:J

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    .line 9
    .line 10
    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    .line 11
    .line 12
    iput-wide p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    return-wide v0
.end method

.method public getReason()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return v0
.end method

.method public wasImageCaptured()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
