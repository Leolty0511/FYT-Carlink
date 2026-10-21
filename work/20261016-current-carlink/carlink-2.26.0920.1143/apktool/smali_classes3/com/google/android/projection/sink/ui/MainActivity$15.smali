.class Lcom/google/android/projection/sink/ui/MainActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onByeByeRequest(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "received ByeByeRequest with reason "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/projection/protocol/GalReceiver;->sendByeByeResponse()V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->MD_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public onByeByeResponse()V
    .locals 2

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "received ByeByeResponse"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$15;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/android/projection/protocol/Transport$StopReason;->HU_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
