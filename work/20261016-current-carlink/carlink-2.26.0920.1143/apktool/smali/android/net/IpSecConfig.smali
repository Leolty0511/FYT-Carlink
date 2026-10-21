.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecConfig$Flow;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field encapLocalPortResourceId:I

.field encapRemotePort:I

.field encapType:I

.field flow:[Landroid/net/IpSecConfig$Flow;

.field localAddress:Ljava/net/InetAddress;

.field mode:I

.field nattKeepaliveInterval:I

.field network:Landroid/net/Network;

.field remoteAddress:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/IpSecConfig$Flow;

    .line 3
    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/IpSecConfig$Flow;

    .line 5
    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 6
    invoke-static {p1}, Landroid/net/IpSecConfig;->readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    .line 7
    invoke-static {p1}, Landroid/net/IpSecConfig;->readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 8
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    .line 9
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 10
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    .line 11
    const-class v1, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/IpSecAlgorithm;

    iput-object v4, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 12
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/IpSecAlgorithm;

    iput-object v2, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 14
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 15
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/IpSecAlgorithm;

    iput-object v2, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 17
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecAlgorithm;

    iput-object v1, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapType:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    const-string v1, "Invalid IpAddress "

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "IpSecConfig"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthentication(I)Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    return-object p1
.end method

.method public getEncapLocalResourceId()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    return v0
.end method

.method public getEncapRemotePort()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    return v0
.end method

.method public getEncapType()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->encapType:I

    return v0
.end method

.method public getEncryption(I)Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    return-object p1
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mode:I

    return v0
.end method

.method public getNattKeepaliveInterval()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->nattKeepaliveInterval:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSpiResourceId(I)I
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object p1, v0, p1

    iget p1, p1, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aget-object v0, v0, v1

    .line 35
    .line 36
    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 42
    .line 43
    aget-object v0, v0, v1

    .line 44
    .line 45
    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 51
    .line 52
    aget-object v0, v0, v1

    .line 53
    .line 54
    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 55
    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aget-object v0, v0, v1

    .line 63
    .line 64
    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 70
    .line 71
    aget-object v0, v0, v1

    .line 72
    .line 73
    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 79
    .line 80
    aget-object v0, v0, v1

    .line 81
    .line 82
    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 83
    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    .line 86
    .line 87
    iget p2, p0, Landroid/net/IpSecConfig;->encapType:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    iget p2, p0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    iget p2, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
