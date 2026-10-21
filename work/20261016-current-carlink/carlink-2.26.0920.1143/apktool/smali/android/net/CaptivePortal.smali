.class public Landroid/net/CaptivePortal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_RETURN_DISMISSED:I = 0x0

.field public static final APP_RETURN_UNWANTED:I = 0x1

.field public static final APP_RETURN_WANTED_AS_IS:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/CaptivePortal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/CaptivePortal$1;

    invoke-direct {v0}, Landroid/net/CaptivePortal$1;-><init>()V

    sput-object v0, Landroid/net/CaptivePortal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreNetwork()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public reportCaptivePortalDismissed()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public useNetwork()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
