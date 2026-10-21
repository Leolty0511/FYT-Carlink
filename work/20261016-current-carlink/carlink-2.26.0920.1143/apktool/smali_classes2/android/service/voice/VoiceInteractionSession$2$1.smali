.class Landroid/service/voice/VoiceInteractionSession$2$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession$2;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/voice/VoiceInteractionSession$2;

.field final synthetic val$content:Landroid/app/assist/AssistContent;

.field final synthetic val$count:I

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$index:I

.field final synthetic val$structure:Landroid/app/assist/AssistStructure;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;Landroid/os/Bundle;Landroid/app/assist/AssistContent;II)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iput p6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iput p7, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v2, "VoiceInteractionSession"

    .line 12
    .line 13
    const-string v3, "Failure retrieving AssistStructure"

    .line 14
    .line 15
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    move-object v8, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    move-object v8, v1

    .line 21
    :goto_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    .line 22
    .line 23
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 26
    .line 27
    const/16 v5, 0x68

    .line 28
    .line 29
    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    .line 30
    .line 31
    if-nez v8, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    .line 34
    .line 35
    :cond_1
    move-object v7, v1

    .line 36
    iget-object v9, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    .line 37
    .line 38
    iget v10, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    .line 39
    .line 40
    iget v11, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    .line 41
    .line 42
    move-object v4, v0

    .line 43
    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
