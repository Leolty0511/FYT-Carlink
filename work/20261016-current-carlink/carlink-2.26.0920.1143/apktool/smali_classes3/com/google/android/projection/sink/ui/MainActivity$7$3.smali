.class Lcom/google/android/projection/sink/ui/MainActivity$7$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity$7;->onVideoFocusModeChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

.field final synthetic val$focusMode:I

.field final synthetic val$reason:I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity$7;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    iput p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->val$focusMode:I

    iput p3, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->val$focusMode:I

    .line 2
    .line 3
    sget v1, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1100(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/TestTools;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/projection/sink/ui/TestTools;->setNativeContentEnabled(ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->val$reason:I

    .line 23
    .line 24
    sget-object v1, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->PHONE_SCREEN_OFF:Lcom/google/android/projection/proto/Protos$VideoFocusReason;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$VideoFocusReason;->getNumber()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 35
    .line 36
    sget v1, Lcom/google/android/projection/sink/R$string;->native_content:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "Please turn phone screen on."

    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$3;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1100(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/TestTools;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/google/android/projection/sink/ui/TestTools;->setNativeContentEnabled(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method
