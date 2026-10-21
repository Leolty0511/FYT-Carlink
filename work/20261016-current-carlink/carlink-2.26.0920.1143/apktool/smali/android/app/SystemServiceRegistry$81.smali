.class final Landroid/app/SystemServiceRegistry$81;
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
        "Landroid/app/AbsPowerGuru;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/app/AbsPowerGuru;
    .locals 2

    const-string/jumbo v0, "powerguru"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/app/IPowerGuru$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IPowerGuru;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/app/PowerGuruFactory;->getInstance()Landroid/app/PowerGuruFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/PowerGuruFactory;->createExtraPowerGuru(Landroid/app/IPowerGuru;Landroid/content/Context;)Landroid/app/AbsPowerGuru;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$81;->createService(Landroid/app/ContextImpl;)Landroid/app/AbsPowerGuru;

    move-result-object p1

    return-object p1
.end method
