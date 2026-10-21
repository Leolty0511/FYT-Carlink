.class Lcom/google/android/projection/sink/ui/TestTools$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$3;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$3;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$300(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$3;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$300(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->play()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
