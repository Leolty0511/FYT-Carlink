.class public Landroid/app/VoiceInteractor$AbortVoiceRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbortVoiceRequest"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 3
    iput-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 6
    iput-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "mPrompt="

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p1, "mExtras="

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public getRequestTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "AbortVoice"

    return-object v0
.end method

.method public onAbortResult(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 2

    iget-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object v1, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p1

    return-object p1
.end method
