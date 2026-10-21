.class Landroid/app/ActivityView$SurfaceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/app/ActivityView;->access$600(Landroid/app/ActivityView;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1, p3, p4, p2}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/app/ActivityView;->access$102(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/app/ActivityView;->access$400(Landroid/app/ActivityView;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/ActivityView;->access$100(Landroid/app/ActivityView;)Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Landroid/app/ActivityView;->access$102(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
