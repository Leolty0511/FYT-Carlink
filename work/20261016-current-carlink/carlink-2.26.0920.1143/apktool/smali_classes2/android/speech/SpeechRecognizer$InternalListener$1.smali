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
.field final synthetic this$0:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method public constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :pswitch_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-interface {v0, v1, p1}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Float;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Landroid/os/Bundle;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 95
    .line 96
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_6
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 123
    .line 124
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, [B

    .line 131
    .line 132
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_8
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 137
    .line 138
    invoke-static {p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-void

    .line 146
    nop

    .line 147
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
