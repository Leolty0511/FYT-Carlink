.class Landroid/app/PendingIntent$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishedDispatcher"
.end annotation


# static fields
.field private static sDefaultSystemHandler:Landroid/os/Handler;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field private mResultExtras:Landroid/os/Bundle;

.field private final mWho:Landroid/app/PendingIntent$OnFinished;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    .line 7
    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    sput-object p1, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    .line 30
    .line 31
    :cond_0
    sget-object p1, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    iput p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    .line 4
    .line 5
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/PendingIntent$FinishedDispatcher;->run()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    iget-object v1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
