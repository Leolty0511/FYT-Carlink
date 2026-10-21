.class Landroid/service/voice/VoiceInteractionSession$1;
.super Lcom/android/internal/app/IVoiceInteractor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 8

    .line 1
    new-instance v7, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 18
    .line 19
    invoke-virtual {p1, v7}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v7, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 35
    .line 36
    return-object p1
.end method

.method public startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 8

    .line 1
    new-instance v7, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 18
    .line 19
    invoke-virtual {p1, v7}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 25
    .line 26
    const/4 p2, 0x5

    .line 27
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v7, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 35
    .line 36
    return-object p1
.end method

.method public startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 8

    .line 1
    new-instance v7, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 18
    .line 19
    invoke-virtual {p1, v7}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v7, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 35
    .line 36
    return-object p1
.end method

.method public startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 8

    .line 1
    new-instance v7, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 18
    .line 19
    invoke-virtual {p1, v7}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v7, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 35
    .line 36
    return-object p1
.end method

.method public startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 9

    .line 1
    new-instance v8, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    move-object v7, p5

    .line 15
    invoke-direct/range {v0 .. v7}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 19
    .line 20
    invoke-virtual {p1, v8}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 26
    .line 27
    const/4 p2, 0x2

    .line 28
    invoke-virtual {p1, p2, v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v8, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 36
    .line 37
    return-object p1
.end method

.method public supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-virtual {p1, v2, v0, p2, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessageAndWait(Landroid/os/Message;)Lcom/android/internal/os/SomeArgs;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, [Z

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_0
    array-length p1, p2

    .line 31
    new-array p1, p1, [Z

    .line 32
    .line 33
    return-object p1
.end method
