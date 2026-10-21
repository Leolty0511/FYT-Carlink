.class final Landroid/telecom/VideoProfile$CameraCapabilities$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile$CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/VideoProfile$CameraCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 6
    new-instance v3, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$CameraCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/telecom/VideoProfile$CameraCapabilities;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$CameraCapabilities$1;->newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p1

    return-object p1
.end method
