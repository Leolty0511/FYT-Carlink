.class public Landroid/app/VoiceInteractor$CommandRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandRequest"
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field final mCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    .line 7
    .line 8
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
    const-string/jumbo p2, "mCommand="

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p1, "mArgs="

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

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

    const-string v0, "Command"

    return-object v0
.end method

.method public onCommandResult(ZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 2

    iget-object v0, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p1

    return-object p1
.end method
