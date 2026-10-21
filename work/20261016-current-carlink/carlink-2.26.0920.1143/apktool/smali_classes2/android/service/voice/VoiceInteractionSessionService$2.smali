.class Landroid/service/voice/VoiceInteractionSessionService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSessionService;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSessionService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4
    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Landroid/os/Bundle;

    .line 20
    .line 21
    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2, v0}, Landroid/service/voice/VoiceInteractionSessionService;->doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
