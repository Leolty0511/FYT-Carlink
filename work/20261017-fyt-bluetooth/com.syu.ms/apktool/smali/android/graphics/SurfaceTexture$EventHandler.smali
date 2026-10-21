.class Landroid/graphics/SurfaceTexture$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/SurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    invoke-static {p1}, Landroid/graphics/SurfaceTexture;->access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    invoke-static {p1}, Landroid/graphics/SurfaceTexture;->access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object p1

    iget-object v0, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v0}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
