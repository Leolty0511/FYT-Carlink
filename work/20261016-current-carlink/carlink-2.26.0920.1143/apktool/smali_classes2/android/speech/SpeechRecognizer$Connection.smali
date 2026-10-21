.class Landroid/speech/SpeechRecognizer$Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method private constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;)V

    return-void
.end method


# virtual methods
.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/speech/IRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Landroid/speech/SpeechRecognizer;->access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    .line 8
    .line 9
    .line 10
    :goto_0
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->access$700(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 29
    .line 30
    invoke-static {p2}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/os/Message;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/speech/SpeechRecognizer;->access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/speech/SpeechRecognizer;->access$802(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
