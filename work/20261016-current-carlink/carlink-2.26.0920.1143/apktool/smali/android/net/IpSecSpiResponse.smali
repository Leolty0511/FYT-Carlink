.class public final Landroid/net/IpSecSpiResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecSpiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecSpiResponse"


# instance fields
.field public final resourceId:I

.field public final spi:I

.field public final status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecSpiResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecSpiResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecSpiResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 9
    iput p1, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid status implies other args must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 4
    iput p2, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 5
    iput p3, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecSpiResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/IpSecSpiResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/IpSecSpiResponse;->spi:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
