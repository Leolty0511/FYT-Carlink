.class Landroid/service/voice/VoiceInteractionSession$Request$1;
.super Lcom/android/internal/app/IVoiceInteractorRequest$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession$Request;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
