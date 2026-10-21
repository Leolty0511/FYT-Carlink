.class public final Landroid/printservice/CustomPrinterIconCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomPrinterIconCB"


# instance fields
.field private final mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinterId:Landroid/print/PrinterId;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCustomPrinterIconLoaded(Landroid/graphics/drawable/Icon;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    const-string v0, "CustomPrinterIconCB"

    .line 12
    .line 13
    const-string v1, "Could not update icon"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1
.end method
