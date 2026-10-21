.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field public static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field public static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field public static final HANDLE_UPDATE:I = 0x1

.field public static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field public static sService:Lk/b;

.field public static final sServiceLock:Ljava/lang/Object;


# instance fields
.field public mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field public mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mHandler:Landroid/os/Handler;

.field public mHostId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field public mPackageName:Ljava/lang/String;

.field public final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/appwidget/AppWidgetHost;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    .line 6
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 7
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 8
    new-instance p2, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {p2, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 10
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    return-void
.end method

.method public static synthetic access$000(Landroid/appwidget/AppWidgetHost;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHost;->isLocalBinder()Z

    move-result p0

    return p0
.end method

.method public static allocateAppWidgetIdForPackage(IILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->checkCallerIsSystem()V

    .line 2
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 4
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    invoke-interface {v0, p2, p0, p1}, Lk/b;->W1(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "system server dead?"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static bindService()V
    .locals 2

    .line 1
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    if-nez v1, :cond_0

    const-string v1, "appwidget"

    .line 3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lk/b$a;->J2(Landroid/os/IBinder;)Lk/b;

    move-result-object v1

    sput-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkCallerIsSystem()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 2
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static deleteAllHosts()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetHost;->deleteAllHosts(I)V

    return-void
.end method

.method public static deleteAllHosts(I)V
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    invoke-interface {v0, p0}, Lk/b;->y(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "system server dead?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deleteAppWidgetIdForSystem(II)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->checkCallerIsSystem()V

    .line 2
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 4
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    invoke-interface {v0, p0, p1}, Lk/b;->M0(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "system server dead?"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private isLocalBinder()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lk/b;->W1(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearViews()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setUserId(I)V

    .line 4
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 5
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 6
    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter p3

    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    sget-object p3, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    invoke-interface {p3, p2, p1}, Lk/b;->v1(II)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p2, Landroid/os/UserHandle;

    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo p3, "system server dead?"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public deleteAppWidgetId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lk/b;->M0(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public deleteHost()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    iget v1, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lk/b;->T1(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds()[I
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 3
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    iget v1, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lk/b;->L1(II)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 1
    new-instance p2, Landroid/appwidget/AppWidgetHostView;

    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p2, p1, p3}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object p2
.end method

.method public onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    .line 1
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 2
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 3
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 4
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProvidersChanged()V
    .locals 0

    return-void
.end method

.method public startListening()V
    .locals 8

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 5
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    move-object v4, v6

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lk/b;->Z1(Lk/a;Ljava/lang/String;ILjava/util/List;I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 9
    :cond_1
    aget v3, v0, v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3, v4, v7}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lk/b;

    iget v1, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lk/b;->X1(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidgetView(ILandroid/widget/RemoteViews;I)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter p3

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    .line 3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public viewDataChanged(III)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter p3

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    .line 3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
