.class Lcom/google/android/projection/sink/ui/TestTools$11;
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

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$11;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$11;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lcom/google/android/projection/sink/R$id;->bluetooth_already_paired_toggle:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/ToggleButton;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$11;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->bluetooth:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->onReadyForPairing(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
