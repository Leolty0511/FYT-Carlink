.class Lcom/google/android/projection/sink/ui/TestTools$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/TestTools;->initializeSimulatorSpeedControls()V
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

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$17;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$17;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$1000(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/debug/DebugContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/DebugContext;->getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->decreaseSimulationSpeed()V

    return-void
.end method
