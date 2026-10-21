.class Landroid/speech/SpeechRecognizer$InternalListener$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method public constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, v1, p1}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_0

    .line 10
    :pswitch_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_0

    .line 11
    :pswitch_8
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
