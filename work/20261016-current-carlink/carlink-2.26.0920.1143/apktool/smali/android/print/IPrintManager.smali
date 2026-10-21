.class public interface abstract Landroid/print/IPrintManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
.end method

.method public abstract addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
.end method

.method public abstract addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
.end method

.method public abstract cancelPrintJob(Landroid/print/PrintJobId;II)V
.end method

.method public abstract createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
.end method

.method public abstract destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
.end method

.method public abstract getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
.end method

.method public abstract getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
.end method

.method public abstract getPrintJobInfos(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrintServiceRecommendations(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrintServices(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
.end method

.method public abstract removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
.end method

.method public abstract removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
.end method

.method public abstract removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
.end method

.method public abstract restartPrintJob(Landroid/print/PrintJobId;II)V
.end method

.method public abstract setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
.end method

.method public abstract startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract startPrinterStateTracking(Landroid/print/PrinterId;I)V
.end method

.method public abstract stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
.end method

.method public abstract stopPrinterStateTracking(Landroid/print/PrinterId;I)V
.end method

.method public abstract validatePrinters(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation
.end method
