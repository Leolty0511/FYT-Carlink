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
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    .line 3
    iput-object p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    .line 4
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 2
    iput p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    .line 3
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 5
    iget-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/PendingIntent$FinishedDispatcher;->run()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    iget-object v1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
