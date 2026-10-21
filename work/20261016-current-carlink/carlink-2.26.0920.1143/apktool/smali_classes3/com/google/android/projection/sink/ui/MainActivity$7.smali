.class Lcom/google/android/projection/sink/ui/MainActivity$7;
.super Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mVideoFocusDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/projection/sink/ui/MainActivity$7;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->mVideoFocusDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/google/android/projection/sink/ui/MainActivity$7;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->mVideoFocusDialog:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public onCodecConfig([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->handleCodecConfig([B)V

    return-void
.end method

.method public onCodecSetup(I)V
    .locals 0

    return-void
.end method

.method public onProjectionUpdate(Lcom/google/android/projection/protocol/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->decodeBuffer(Lcom/google/android/projection/protocol/VideoFrame;)V

    return-void
.end method

.method public onSourceVideoConfigChanged(IILcom/google/android/projection/proto/Protos$VideoConfiguration;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->prepareStart(II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 11
    .line 12
    new-instance p2, Lcom/google/android/projection/sink/ui/MainActivity$7$1;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/MainActivity$7$1;-><init>(Lcom/google/android/projection/sink/ui/MainActivity$7;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onVideoFocusModeChange(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$7$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/projection/sink/ui/MainActivity$7$3;-><init>(Lcom/google/android/projection/sink/ui/MainActivity$7;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoFocusRequest(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$7$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/projection/sink/ui/MainActivity$7$2;-><init>(Lcom/google/android/projection/sink/ui/MainActivity$7;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
