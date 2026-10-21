.class final Landroid/app/SystemServiceRegistry$62;
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
        "Landroid/content/pm/LauncherApps;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/content/pm/LauncherApps;
    .locals 1

    .line 2
    new-instance v0, Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p1}, Landroid/content/pm/LauncherApps;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$62;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/LauncherApps;

    move-result-object p1

    return-object p1
.end method
