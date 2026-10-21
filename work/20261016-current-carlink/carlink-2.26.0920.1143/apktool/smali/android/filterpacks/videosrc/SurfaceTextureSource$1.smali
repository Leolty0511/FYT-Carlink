.class Landroid/filterpacks/videosrc/SurfaceTextureSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/SurfaceTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;


# direct methods
.method public constructor <init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V
    .locals 0

    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "SurfaceTextureSource"

    .line 8
    .line 9
    const-string v0, "New frame from SurfaceTexture"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->access$100(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
