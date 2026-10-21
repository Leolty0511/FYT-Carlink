.class public final Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppResolutionCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mSequence:I


# direct methods
.method public constructor <init>(ILandroid/os/IRemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 5
    .line 6
    iput p1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInstantAppResolveInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.app.extra.RESOLVE_INFO"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "android.app.extra.SEQUENCE"

    .line 12
    .line 13
    iget v1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    return-void
.end method
