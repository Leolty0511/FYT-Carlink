.class final Landroid/app/SystemServiceRegistry$32;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/os/AbsPowerManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/AbsPowerManager;
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/PMFactory;->getInstance()Landroid/os/PMFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PMFactory;->createExtraPowerManager(Landroid/content/Context;)Landroid/os/AbsPowerManager;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$32;->createService(Landroid/app/ContextImpl;)Landroid/os/AbsPowerManager;

    move-result-object p1

    return-object p1
.end method
