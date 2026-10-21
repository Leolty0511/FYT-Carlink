.class Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupConnectionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mName:Landroid/content/ComponentName;

.field public final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->mName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    .line 2
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech$Connection;->access$1100(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech$Connection;->access$1000(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 6
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech$Connection;->access$1100(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "country"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "variant"

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TextToSpeech"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set up connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    return-object v0

    :catch_0
    const-string v0, "TextToSpeech"

    const-string v1, "Error connecting to service, setCallback() failed"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech$Connection;->access$1200(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 4
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection;->access$1202(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection;->access$1302(Landroid/speech/tts/TextToSpeech$Connection;Z)Z

    .line 6
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Landroid/speech/tts/TextToSpeech;->access$1400(Landroid/speech/tts/TextToSpeech;I)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
