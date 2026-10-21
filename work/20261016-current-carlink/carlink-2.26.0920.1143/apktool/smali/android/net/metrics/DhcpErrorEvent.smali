.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpErrorEvent$Decoder;
    }
.end annotation


# static fields
.field public static final BOOTP_TOO_SHORT:I

.field public static final BUFFER_UNDERFLOW:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DhcpErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DHCP_BAD_MAGIC_COOKIE:I

.field public static final DHCP_ERROR:I = 0x4

.field public static final DHCP_INVALID_OPTION_LENGTH:I

.field public static final DHCP_NO_COOKIE:I

.field public static final DHCP_NO_MSG_TYPE:I

.field public static final DHCP_UNKNOWN_MSG_TYPE:I

.field public static final L2_ERROR:I = 0x1

.field public static final L2_TOO_SHORT:I

.field public static final L2_WRONG_ETH_TYPE:I

.field public static final L3_ERROR:I = 0x2

.field public static final L3_INVALID_IP:I

.field public static final L3_NOT_IPV4:I

.field public static final L3_TOO_SHORT:I

.field public static final L4_ERROR:I = 0x3

.field public static final L4_NOT_UDP:I

.field public static final L4_WRONG_PORT:I

.field public static final MISC_ERROR:I = 0x5

.field public static final PARSING_ERROR:I

.field public static final RECEIVE_ERROR:I


# instance fields
.field public final errorCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sput v1, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sput v2, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sput v2, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    .line 20
    .line 21
    invoke-static {v1, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sput v2, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-static {v1, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sput v3, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    .line 33
    .line 34
    invoke-static {v2, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sput v3, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sput v3, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-static {v3, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sput v4, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    .line 52
    .line 53
    invoke-static {v3, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sput v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    .line 58
    .line 59
    invoke-static {v3, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sput v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    .line 64
    .line 65
    invoke-static {v3, v3}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    sput v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    .line 70
    .line 71
    const/4 v4, 0x5

    .line 72
    invoke-static {v3, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    sput v5, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    .line 77
    .line 78
    const/4 v5, 0x6

    .line 79
    invoke-static {v3, v5}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    sput v3, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    .line 84
    .line 85
    invoke-static {v4, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    .line 90
    .line 91
    invoke-static {v4, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    .line 96
    .line 97
    invoke-static {v4, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    .line 102
    .line 103
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    .line 104
    .line 105
    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static errorCodeWithOption(II)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static makeErrorCode(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v1, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    .line 5
    .line 6
    iget v2, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const-string v1, "DhcpErrorEvent(%s)"

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
