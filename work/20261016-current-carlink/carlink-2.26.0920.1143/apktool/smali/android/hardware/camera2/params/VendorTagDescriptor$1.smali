.class final Landroid/hardware/camera2/params/VendorTagDescriptor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/VendorTagDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/camera2/params/VendorTagDescriptor;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/params/VendorTagDescriptor;

    invoke-direct {v1, p1, v0}, Landroid/hardware/camera2/params/VendorTagDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptor$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "VendorTagDescriptor"

    const-string v2, "Exception creating VendorTagDescriptor from parcel"

    .line 3
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/hardware/camera2/params/VendorTagDescriptor;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;->newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object p1

    return-object p1
.end method
