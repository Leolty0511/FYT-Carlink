.class Lcom/google/android/projection/sink/ui/MainActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;

.field final synthetic val$ticks:I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    iput p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->val$ticks:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 26
    .line 27
    sget-object v1, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->val$ticks:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$10;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2800(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v1, 0xc8

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
