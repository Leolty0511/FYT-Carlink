.class Lcom/google/android/projection/sink/ui/TestTools$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;


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

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$19;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$19;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-static {v0, p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$1100(Lcom/google/android/projection/sink/ui/TestTools;I)V

    return-void
.end method
