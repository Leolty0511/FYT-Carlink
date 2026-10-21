.class Lcom/android/server/net/DnsServerEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/DnsServerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public expiry:J


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/DnsServerEntry;)I
    .locals 4

    .line 2
    iget-wide v0, p1, Lcom/android/server/net/DnsServerEntry;->expiry:J

    iget-wide v2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/net/DnsServerEntry;

    invoke-virtual {p0, p1}, Lcom/android/server/net/DnsServerEntry;->compareTo(Lcom/android/server/net/DnsServerEntry;)I

    move-result p1

    return p1
.end method
