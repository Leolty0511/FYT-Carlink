.class Landroid/speech/tts/TextToSpeech$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
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

.field public final synthetic val$earcon:Ljava/lang/String;

.field public final synthetic val$params:Ljava/util/HashMap;

.field public final synthetic val$queueMode:I


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$3;->val$earcon:Ljava/lang/String;

    iput p3, p0, Landroid/speech/tts/TextToSpeech$3;->val$queueMode:I

    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$3;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 5

    .line 2
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$600(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$3;->val$earcon:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Landroid/speech/tts/TextToSpeech$3;->val$queueMode:I

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$3;->val$params:Ljava/util/HashMap;

    invoke-static {v3, v4}, Landroid/speech/tts/TextToSpeech;->access$500(Landroid/speech/tts/TextToSpeech;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$3;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
