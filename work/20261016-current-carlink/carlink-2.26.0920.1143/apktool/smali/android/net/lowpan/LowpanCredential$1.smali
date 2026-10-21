.class final Landroid/net/lowpan/LowpanCredential$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanCredential;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanCredential;
    .locals 2

    .line 2
    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanCredential;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanCredential;->access$002(Landroid/net/lowpan/LowpanCredential;[B)[B

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanCredential;->access$102(Landroid/net/lowpan/LowpanCredential;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanCredential;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanCredential;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/net/lowpan/LowpanCredential;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential$1;->newArray(I)[Landroid/net/lowpan/LowpanCredential;

    move-result-object p1

    return-object p1
.end method
