.class Landroid/speech/tts/TextToSpeech$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic val$durationInMs:J

.field public final synthetic val$params:Ljava/util/HashMap;

.field public final synthetic val$queueMode:I


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech;JILjava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-wide p2, p0, Landroid/speech/tts/TextToSpeech$4;->val$durationInMs:J

    iput p4, p0, Landroid/speech/tts/TextToSpeech$4;->val$queueMode:I

    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$4;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7

    .line 2
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v2

    iget-wide v3, p0, Landroid/speech/tts/TextToSpeech$4;->val$durationInMs:J

    iget v5, p0, Landroid/speech/tts/TextToSpeech$4;->val$queueMode:I

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$4;->val$params:Ljava/util/HashMap;

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$500(Landroid/speech/tts/TextToSpeech;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playSilence(Landroid/os/IBinder;JILandroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$4;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
