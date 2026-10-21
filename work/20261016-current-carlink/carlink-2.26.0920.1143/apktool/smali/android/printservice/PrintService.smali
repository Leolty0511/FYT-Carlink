.class public abstract Landroid/printservice/PrintService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/PrintService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_CAN_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.CAN_SELECT_PRINTER"

.field public static final EXTRA_PRINTER_INFO:Ljava/lang/String; = "android.intent.extra.print.EXTRA_PRINTER_INFO"

.field public static final EXTRA_PRINT_DOCUMENT_INFO:Ljava/lang/String; = "android.printservice.extra.PRINT_DOCUMENT_INFO"

.field public static final EXTRA_PRINT_JOB_INFO:Ljava/lang/String; = "android.intent.extra.print.PRINT_JOB_INFO"

.field public static final EXTRA_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.SELECT_PRINTER"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.PrintService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.printservice"


# instance fields
.field private mClient:Landroid/printservice/IPrintServiceClient;

.field private mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

.field private mHandler:Landroid/os/Handler;

.field private mLastSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/printservice/PrintService;)I
    .locals 0

    iget p0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return p0
.end method

.method public static synthetic access$102(Landroid/printservice/PrintService;I)I
    .locals 0

    iput p1, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return p1
.end method

.method public static synthetic access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;
    .locals 0

    iget-object p0, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object p0
.end method

.method public static synthetic access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;
    .locals 0

    iput-object p1, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;
    .locals 0

    iget-object p0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object p0
.end method

.method public static synthetic access$302(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;
    .locals 0

    iput-object p1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object p1
.end method

.method public static throwIfNotCalledOnMainThread()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    .line 13
    .line 14
    const-string/jumbo v1, "must be called from the main thread"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/printservice/PrintService$ServiceHandler;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p0, p1}, Landroid/printservice/PrintService$ServiceHandler;-><init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public final generatePrinterId(Ljava/lang/String;)Landroid/print/PrinterId;
    .locals 4

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "localId cannot be null"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroid/print/PrinterId;

    .line 14
    .line 15
    new-instance v1, Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, p1}, Landroid/print/PrinterId;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final getActivePrintJobs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/PrintJob;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfos()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_2

    .line 30
    .line 31
    new-instance v4, Landroid/printservice/PrintJob;

    .line 32
    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroid/print/PrintJobInfo;

    .line 38
    .line 39
    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    .line 40
    .line 41
    invoke-direct {v4, p0, v5, v6}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "PrintService"

    .line 56
    .line 57
    const-string v2, "Error calling getPrintJobs()"

    .line 58
    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Landroid/printservice/PrintService$1;

    invoke-direct {p1, p0}, Landroid/printservice/PrintService$1;-><init>(Landroid/printservice/PrintService;)V

    return-object p1
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public abstract onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public abstract onPrintJobQueued(Landroid/printservice/PrintJob;)V
.end method

.method public abstract onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V
.end method
