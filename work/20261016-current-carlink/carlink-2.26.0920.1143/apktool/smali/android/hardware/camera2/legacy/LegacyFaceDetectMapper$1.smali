.class Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    array-length p2, p1

    .line 6
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$202(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-lez p2, :cond_2

    .line 28
    .line 29
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$300()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo p2, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method
