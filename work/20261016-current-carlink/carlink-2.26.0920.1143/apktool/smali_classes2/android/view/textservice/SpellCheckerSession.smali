.class public Landroid/view/textservice/SpellCheckerSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$InternalListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE:I = 0x1

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE:I = 0x2

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.textservice.scs"

.field private static final TAG:Ljava/lang/String; = "SpellCheckerSession"


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private final mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field private final mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

.field private final mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method public constructor <init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    new-instance v1, Landroid/view/textservice/SpellCheckerSession$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Landroid/view/textservice/SpellCheckerSession$1;-><init>(Landroid/view/textservice/SpellCheckerSession;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 24
    .line 25
    new-instance p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 26
    .line 27
    invoke-direct {p1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;-><init>(Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 31
    .line 32
    new-instance v1, Landroid/view/textservice/SpellCheckerSession$InternalListener;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Landroid/view/textservice/SpellCheckerSession$InternalListener;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    .line 38
    .line 39
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    .line 40
    .line 41
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    .line 42
    .line 43
    const-string p1, "finishSession"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    throw p1
.end method

.method public static synthetic access$000(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method private handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->cancel()V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->close()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    return-void
.end method

.method public getSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    return-object v0
.end method

.method public getSuggestions(Landroid/view/textservice/TextInfo;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textservice/TextInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    return-void
.end method

.method public getSuggestions([Landroid/view/textservice/TextInfo;IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    return-void
.end method

.method public getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    return-object v0
.end method

.method public isSessionDisconnected()Z
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->isDisconnected()Z

    move-result v0

    return v0
.end method
