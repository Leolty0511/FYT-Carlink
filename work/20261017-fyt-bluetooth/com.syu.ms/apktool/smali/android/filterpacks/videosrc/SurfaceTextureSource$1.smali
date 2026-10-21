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
.field public final synthetic this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;


# direct methods
.method public constructor <init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SurfaceTextureSource"

    const-string v0, "New frame from SurfaceTexture"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->access$100(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
