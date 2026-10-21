.class public final Landroid/net/metrics/DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final prevIPv4:Z

.field public final prevIPv6:Z

.field public final prevNetId:I

.field public final transportTypes:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DefaultNetworkEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DefaultNetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[IIZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 4
    iput-object p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    .line 5
    iput p3, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 6
    iput-boolean p4, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    .line 7
    iput-boolean p5, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DefaultNetworkEvent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private ipSupport()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v0, "DUAL"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v0, "IPv6"

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "IPv4"

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_2
    const-string v0, "NONE"

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 14
    .line 15
    const-string v3, ":"

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    .line 43
    .line 44
    invoke-static {v2}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    const/4 v2, 0x2

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object v0, v2, v3

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    aput-object v1, v2, v0

    .line 63
    .line 64
    const-string v0, "DefaultNetworkEvent(%s -> %s)"

    .line 65
    .line 66
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
