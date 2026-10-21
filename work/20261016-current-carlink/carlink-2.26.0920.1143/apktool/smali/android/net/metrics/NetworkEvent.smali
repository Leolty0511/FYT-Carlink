.class public final Landroid/net/metrics/NetworkEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkEvent$Decoder;,
        Landroid/net/metrics/NetworkEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_CAPTIVE_PORTAL_FOUND:I = 0x4

.field public static final NETWORK_CONNECTED:I = 0x1

.field public static final NETWORK_DISCONNECTED:I = 0x7

.field public static final NETWORK_FIRST_VALIDATION_PORTAL_FOUND:I = 0xa

.field public static final NETWORK_FIRST_VALIDATION_SUCCESS:I = 0x8

.field public static final NETWORK_LINGER:I = 0x5

.field public static final NETWORK_REVALIDATION_PORTAL_FOUND:I = 0xb

.field public static final NETWORK_REVALIDATION_SUCCESS:I = 0x9

.field public static final NETWORK_UNLINGER:I = 0x6

.field public static final NETWORK_VALIDATED:I = 0x2

.field public static final NETWORK_VALIDATION_FAILED:I = 0x3


# instance fields
.field public final durationMs:J

.field public final eventType:I

.field public final netId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/NetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    .line 4
    iput p2, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 5
    iput-wide p3, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/NetworkEvent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
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
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    sget-object v1, Landroid/net/metrics/NetworkEvent$Decoder;->constants:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget v2, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    iget-wide v1, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    const-string v1, "NetworkEvent(%d, %s, %dms)"

    .line 34
    .line 35
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
