.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TextServicesManager"

.field private static sInstance:Landroid/view/textservice/TextServicesManager;

.field private static sService:Ls/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    if-nez v0, :cond_0

    const-string/jumbo v0, "textservices"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls/d$a;->J2(Landroid/os/IBinder;)Ls/d;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 2

    .line 1
    const-class v0, Landroid/view/textservice/TextServicesManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-direct {v1}, Landroid/view/textservice/TextServicesManager;-><init>()V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-interface {v1, v0}, Ls/d;->f0(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sService is null."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v1, v0, p1}, Ls/d;->z2(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getCurrentSpellCheckerSubtype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-interface {v0}, Ls/d;->n0()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getEnabledSpellCheckers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-interface {v0}, Ls/d;->Q0()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in isSpellCheckerEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 9

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Locale should not be null if you don\'t refer settings."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-interface {v1, v0}, Ls/d;->f0(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p4, :cond_6

    const/4 p4, 0x1

    .line 5
    invoke-virtual {p0, p4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p4

    if-nez p4, :cond_4

    return-object v0

    :cond_4
    if-eqz p2, :cond_9

    .line 6
    invoke-virtual {p4}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_5

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    :cond_5
    return-object v0

    .line 9
    :cond_6
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p4, v0

    .line 10
    :goto_1
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object p4, v4

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v3, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v3, :cond_8

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object p4, v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    if-nez p4, :cond_a

    return-object v0

    .line 15
    :cond_a
    new-instance p2, Landroid/view/textservice/SpellCheckerSession;

    sget-object v2, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-direct {p2, v1, v2, p3, p4}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Ls/d;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 16
    :try_start_1
    sget-object v3, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Ls/e;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Ls/c;

    move-result-object v7

    move-object v8, p1

    invoke-interface/range {v3 .. v8}, Ls/d;->H1(Ljava/lang/String;Ljava/lang/String;Ls/e;Ls/c;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    return-object v0
.end method

.method public setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ls/d;->o1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "SpellCheckerInfo is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :goto_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setCurrentSpellChecker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    invoke-interface {v0, p1}, Ls/d;->w2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setSpellCheckerEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result p1

    .line 2
    :goto_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sService:Ls/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ls/d;->h1(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setSpellCheckerSubtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
