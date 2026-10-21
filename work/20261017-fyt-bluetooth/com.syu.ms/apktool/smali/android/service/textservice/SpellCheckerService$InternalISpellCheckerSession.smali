.class Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
.super Ls/b$a;
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

.field private mListener:Ls/c;

.field private final mLocale:Ljava/lang/String;

.field private final mSession:Landroid/service/textservice/SpellCheckerService$Session;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls/c;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls/b$a;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Ls/c;

    .line 3
    iput-object p4, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 4
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    .line 6
    invoke-virtual {p4, p0}, Landroid/service/textservice/SpellCheckerService$Session;->setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, 0xa

    .line 2
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method

.method public onClose()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Ls/c;

    return-void

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Ls/c;

    throw v1
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Ls/c;

    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ls/c;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, 0xa

    .line 2
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Ls/c;

    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v2, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object p1

    invoke-interface {v1, p1}, Ls/c;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p1

    :catch_0
    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
