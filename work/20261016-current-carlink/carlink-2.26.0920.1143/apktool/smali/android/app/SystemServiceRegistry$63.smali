.class final Landroid/app/SystemServiceRegistry$63;
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
        "Landroid/content/RestrictionsManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/content/RestrictionsManager;
    .locals 2

    const-string/jumbo v0, "restrictions"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/content/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRestrictionsManager;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/RestrictionsManager;

    invoke-direct {v1, p1, v0}, Landroid/content/RestrictionsManager;-><init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$63;->createService(Landroid/app/ContextImpl;)Landroid/content/RestrictionsManager;

    move-result-object p1

    return-object p1
.end method
