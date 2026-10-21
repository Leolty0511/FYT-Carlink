.class Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
.super Landroid/content/pm/IPackageInstallerCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_6

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_5

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v3, :cond_3

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    if-eq v1, v3, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    if-eq v1, v3, :cond_0

    .line 20
    .line 21
    return v4

    .line 22
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 23
    .line 24
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    move v4, v2

    .line 29
    :cond_1
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageInstaller$SessionCallback;->onFinished(IZ)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 34
    .line 35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onProgressChanged(IF)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    move v4, v2

    .line 52
    :cond_4
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 53
    .line 54
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageInstaller$SessionCallback;->onActiveChanged(IZ)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_5
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller$SessionCallback;->onBadgingChanged(I)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller$SessionCallback;->onCreated(I)V

    .line 67
    .line 68
    .line 69
    return v2
.end method

.method public onSessionActiveChanged(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSessionBadgingChanged(I)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSessionCreated(I)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSessionFinished(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSessionProgressChanged(IF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
