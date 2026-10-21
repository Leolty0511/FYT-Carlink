.class public final Landroid/printservice/PrintJob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintJob"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDocument:Landroid/printservice/PrintDocument;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 9
    .line 10
    new-instance p1, Landroid/printservice/PrintDocument;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, v0, p3, p2}, Landroid/printservice/PrintDocument;-><init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    .line 24
    .line 25
    return-void
.end method

.method private isInImmutableState()Z
    .locals 2

    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setState(ILjava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1, p1, p2}, Landroid/printservice/IPrintServiceClient;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/print/PrintJobInfo;->setStatus(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Error setting the state of job: "

    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "PrintJob"

    .line 49
    .line 50
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    return p1
.end method


# virtual methods
.method public block(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    const/4 v2, 0x4

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0, v2, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public cancel()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x7

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public complete()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->isStarted()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    const-class v1, Landroid/printservice/PrintJob;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Landroid/printservice/PrintJob;

    .line 19
    .line 20
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p1, p1, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public fail(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    invoke-direct {p0, v0, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedIntOption(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getDocument()Landroid/printservice/PrintDocument;
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    .line 5
    .line 6
    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .locals 3

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Couldn\'t get info for job: "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "PrintJob"

    .line 48
    .line 49
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iput-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 58
    .line 59
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->hasAdvancedOption(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlocked()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x4

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x7

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x5

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x6

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isQueued()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Error setting progress for job: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "PrintJob"

    .line 38
    .line 39
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public setStatus(I)V
    .locals 3

    .line 4
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, p1, v2}, Landroid/printservice/IPrintServiceClient;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting status for job: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrintJob"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting status for job: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrintJob"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v2, p1}, Landroid/printservice/IPrintServiceClient;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Error setting tag for job: "

    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "PrintJob"

    .line 47
    .line 48
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    return v1
.end method

.method public start()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method
