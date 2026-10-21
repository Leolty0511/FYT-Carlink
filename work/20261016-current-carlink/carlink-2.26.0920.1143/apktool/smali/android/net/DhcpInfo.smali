.class public Landroid/net/DhcpInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/DhcpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dns1:I

.field public dns2:I

.field public gateway:I

.field public ipAddress:I

.field public leaseDuration:I

.field public netmask:I

.field public serverAddress:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/DhcpInfo$1;

    invoke-direct {v0}, Landroid/net/DhcpInfo$1;-><init>()V

    sput-object v0, Landroid/net/DhcpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iget v0, p1, Landroid/net/DhcpInfo;->ipAddress:I

    iput v0, p0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 4
    iget v0, p1, Landroid/net/DhcpInfo;->gateway:I

    iput v0, p0, Landroid/net/DhcpInfo;->gateway:I

    .line 5
    iget v0, p1, Landroid/net/DhcpInfo;->netmask:I

    iput v0, p0, Landroid/net/DhcpInfo;->netmask:I

    .line 6
    iget v0, p1, Landroid/net/DhcpInfo;->dns1:I

    iput v0, p0, Landroid/net/DhcpInfo;->dns1:I

    .line 7
    iget v0, p1, Landroid/net/DhcpInfo;->dns2:I

    iput v0, p0, Landroid/net/DhcpInfo;->dns2:I

    .line 8
    iget v0, p1, Landroid/net/DhcpInfo;->serverAddress:I

    iput v0, p0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 9
    iget p1, p1, Landroid/net/DhcpInfo;->leaseDuration:I

    iput p1, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    :cond_0
    return-void
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .locals 0

    invoke-static {p1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "ipaddr "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    .line 11
    .line 12
    iget v1, p0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 15
    .line 16
    .line 17
    const-string v1, " gateway "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroid/net/DhcpInfo;->gateway:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 25
    .line 26
    .line 27
    const-string v1, " netmask "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroid/net/DhcpInfo;->netmask:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 35
    .line 36
    .line 37
    const-string v1, " dns1 "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Landroid/net/DhcpInfo;->dns1:I

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 45
    .line 46
    .line 47
    const-string v1, " dns2 "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Landroid/net/DhcpInfo;->dns2:I

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 55
    .line 56
    .line 57
    const-string v1, " DHCP server "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 65
    .line 66
    .line 67
    const-string v1, " lease "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    const-string v1, " seconds"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/DhcpInfo;->gateway:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/DhcpInfo;->netmask:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/net/DhcpInfo;->dns1:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/net/DhcpInfo;->dns2:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
