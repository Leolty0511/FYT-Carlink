.class Landroid/filterpacks/videosrc/CameraSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/filterpacks/videosrc/CameraSource;


# direct methods
.method public constructor <init>(Landroid/filterpacks/videosrc/CameraSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/CameraSource;->access$000(Landroid/filterpacks/videosrc/CameraSource;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CameraSource"

    const-string v0, "New frame from camera"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->access$102(Landroid/filterpacks/videosrc/CameraSource;Z)Z

    .line 4
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
