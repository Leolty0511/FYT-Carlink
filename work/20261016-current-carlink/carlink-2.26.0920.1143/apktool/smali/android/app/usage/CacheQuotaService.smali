.class public abstract Landroid/app/usage/CacheQuotaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/CacheQuotaService$ServiceHandler;,
        Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;
    }
.end annotation


# static fields
.field public static final REQUEST_LIST_KEY:Ljava/lang/String; = "requests"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.app.usage.CacheQuotaService"

.field private static final TAG:Ljava/lang/String; = "CacheQuotaService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWrapper:Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/CacheQuotaService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/app/usage/CacheQuotaService;->mWrapper:Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    return-object p1
.end method

.method public abstract onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;-><init>(Landroid/app/usage/CacheQuotaService;Landroid/app/usage/CacheQuotaService$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/usage/CacheQuotaService;->mWrapper:Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    .line 11
    .line 12
    new-instance v0, Landroid/app/usage/CacheQuotaService$ServiceHandler;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, p0, v1}, Landroid/app/usage/CacheQuotaService$ServiceHandler;-><init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/usage/CacheQuotaService;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method
