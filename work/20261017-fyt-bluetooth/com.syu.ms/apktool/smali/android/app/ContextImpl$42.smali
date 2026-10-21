.class final Landroid/app/ContextImpl$42;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2

    const-string v0, "appops"

    .line 1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj/c$a;->J2(Landroid/os/IBinder;)Lj/c;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/app/AppOpsManager;

    invoke-direct {v1, p1, v0}, Landroid/app/AppOpsManager;-><init>(Landroid/content/Context;Lj/c;)V

    return-object v1
.end method
