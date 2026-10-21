.class Landroid/service/media/CameraPrewarmService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/CameraPrewarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/CameraPrewarmService;


# direct methods
.method public constructor <init>(Landroid/service/media/CameraPrewarmService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    .line 11
    .line 12
    invoke-static {p1, v1}, Landroid/service/media/CameraPrewarmService;->access$002(Landroid/service/media/CameraPrewarmService;Z)Z

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
