.class public final Landroid/app/timezone/RulesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesManager$CallbackWrapper;,
        Landroid/app/timezone/RulesManager$ResultCode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR_OPERATION_IN_PROGRESS:I = 0x1

.field public static final ERROR_UNKNOWN_FAILURE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIRulesManager:Landroid/app/timezone/IRulesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo p1, "timezone"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/app/timezone/IRulesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 18
    .line 19
    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getRulesState()Landroid/app/timezone/RulesState;
    .locals 3

    .line 1
    const-string/jumbo v0, "sIRulesManager.getRulesState() returned "

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v1, "sIRulesManager.getRulesState()"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 11
    .line 12
    invoke-interface {v1}, Landroid/app/timezone/IRulesManager;->getRulesState()Landroid/app/timezone/RulesState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    throw v0
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/Callback;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p3}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string/jumbo p3, "sIRulesManager.requestInstall()"

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 15
    .line 16
    invoke-interface {p3, p1, p2, v0}, Landroid/app/timezone/IRulesManager;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    throw p1
.end method

.method public requestNothing([BZ)V
    .locals 2

    .line 1
    const-string/jumbo v0, "sIRulesManager.requestNothing() with token="

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Landroid/app/timezone/IRulesManager;->requestNothing([BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    throw p1
.end method

.method public requestUninstall([BLandroid/app/timezone/Callback;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p2}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string/jumbo p2, "sIRulesManager.requestUninstall()"

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    .line 15
    .line 16
    invoke-interface {p2, p1, v0}, Landroid/app/timezone/IRulesManager;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    throw p1
.end method
