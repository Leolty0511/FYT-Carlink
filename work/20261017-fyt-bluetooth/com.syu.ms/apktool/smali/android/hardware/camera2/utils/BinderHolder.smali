.class public Landroid/hardware/camera2/utils/BinderHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/BinderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/BinderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 6
    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/BinderHolder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
