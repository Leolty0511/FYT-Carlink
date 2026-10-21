.class public Landroid/telephony/ims/ImsService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"


# instance fields
.field private final mFeatures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mImsServiceController:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/telephony/ims/ImsService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$1;-><init>(Landroid/telephony/ims/ImsService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->onCreateImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->onRemoveImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->resolveMMTelFeature(II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->enforceReadPhoneStatePermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPhoneStatePermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private makeImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->onCreateRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->onCreateMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_2
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private onCreateImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->makeImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Landroid/telephony/ims/feature/ImsFeature;->setContext(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/ImsFeature;->setSlotId(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private onRemoveImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureRemoved(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private resolveImsFeature(Landroid/util/SparseArray;ILjava/lang/Class;)Landroid/telephony/ims/feature/ImsFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">(",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Can not cast ImsFeature! Exception: "

    .line 20
    .line 21
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p3, "ImsService"

    .line 36
    .line 37
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method private resolveMMTelFeature(II)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureMap(I)Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-class v0, Landroid/telephony/ims/feature/MMTelFeature;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/ims/ImsService;->resolveImsFeature(Landroid/util/SparseArray;ILjava/lang/Class;)Landroid/telephony/ims/feature/ImsFeature;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/telephony/ims/feature/MMTelFeature;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;I)",
            "Landroid/telephony/ims/feature/ImsFeature;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;

    return-object p1
.end method

.method public getImsFeatureMap(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "android.telephony.ims.ImsService"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
