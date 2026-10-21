.class public Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final UCE_SERVICE_STATUS_READY:I = 0x3

.field private static sUceManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/uce/uceservice/ImsUceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private mPhoneId:I

.field private mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 6
    .line 7
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$1;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput p2, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$102(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I
    .locals 0

    iget p0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method private getUceServiceName(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "uce"

    return-object p1
.end method


# virtual methods
.method public createUceService(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_1
    invoke-static {p1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 39
    .line 40
    return-void
.end method

.method public getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v0
.end method
