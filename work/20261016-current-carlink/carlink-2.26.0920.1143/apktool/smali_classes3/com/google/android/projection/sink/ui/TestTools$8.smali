.class Lcom/google/android/projection/sink/ui/TestTools$8;
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

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$8;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$8;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/GalReceiver;->sendByeByeRequest(I)V

    return-void
.end method
