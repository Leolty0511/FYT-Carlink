.class Landroid/service/voice/VoiceInteractionService$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionService;->onLaunchVoiceAssistFromKeyguard()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/service/voice/VoiceInteractionService;->access$100(Landroid/service/voice/VoiceInteractionService;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/service/voice/VoiceInteractionService;->access$000(Landroid/service/voice/VoiceInteractionService;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionService;->onReady()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
