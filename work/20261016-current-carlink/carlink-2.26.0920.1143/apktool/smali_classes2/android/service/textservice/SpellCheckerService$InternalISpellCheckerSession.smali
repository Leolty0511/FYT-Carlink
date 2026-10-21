.class Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
.super Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalISpellCheckerSession"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field private final mLocale:Ljava/lang/String;

.field private final mSession:Landroid/service/textservice/SpellCheckerService$Session;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 5
    .line 6
    iput-object p4, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 7
    .line 8
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-virtual {p4, p0}, Landroid/service/textservice/SpellCheckerService$Session;->setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 25
    .line 26
    .line 27
    throw v1
.end method

.method public onClose()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 31
    .line 32
    throw v1
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 17
    .line 18
    invoke-virtual {v2, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :catch_0
    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
