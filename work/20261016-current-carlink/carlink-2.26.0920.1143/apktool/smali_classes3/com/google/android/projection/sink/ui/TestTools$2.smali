.class Lcom/google/android/projection/sink/ui/TestTools$2;
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

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$2;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$2;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$200(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$2;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$200(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->enablePhoneFocus()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$2;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$200(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->disablePhoneFocus()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
