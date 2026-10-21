.class Lcom/google/android/projection/sink/ui/TestTools$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/TestTools;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/sink/navigation/NavigationFocusManager;Lcom/google/android/projection/sink/sensors/SensorManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/TestTools;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$1;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$1;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget p2, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget p2, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_NATIVE:I

    .line 15
    .line 16
    :goto_0
    const/4 v0, -0x1

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
