.class final Landroid/os/RemoteCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/RemoteCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/RemoteCallback;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/os/RemoteCallback$RemoteCallbackProxy;

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteCallback$RemoteCallbackProxy;-><init>(Landroid/os/IRemoteCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/RemoteCallback;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/RemoteCallback;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/os/RemoteCallback;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback$1;->newArray(I)[Landroid/os/RemoteCallback;

    move-result-object p1

    return-object p1
.end method
