.class public Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableIpPhoneTimer"
.end annotation


# instance fields
.field public bRun:Z

.field public iTimer:I

.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Dial;)V
    .locals 1

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2318
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    .line 2319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->bRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2327
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->bRun:Z

    if-eqz v2, :cond_2

    .line 2328
    iget v2, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    .line 2330
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2764

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2331
    .local v0, "text":Lcom/lsec/core/frame/ctrl/JText;
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2771

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 2332
    .local v1, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 2333
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2335
    :cond_0
    if-eqz v1, :cond_1

    .line 2336
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->iTimer:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2337
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-static {v6, p0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 2339
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v1    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    :cond_2
    return-void
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 2322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->bRun:Z

    .line 2323
    return-void
.end method
