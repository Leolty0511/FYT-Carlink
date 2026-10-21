.class final Landroid/app/SystemServiceRegistry$70;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/media/tv/TvInputManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/media/tv/TvInputManager;
    .locals 3

    const-string/jumbo v0, "tv_input"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/media/tv/ITvInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/media/tv/TvInputManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V

    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$70;->createService()Landroid/media/tv/TvInputManager;

    move-result-object v0

    return-object v0
.end method
