.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SIZE_LIMIT:I = 0x4e20


# instance fields
.field public eventCount:I

.field public eventTypes:[B

.field public latenciesMs:[I

.field public final netId:I

.field public returnCodes:[B

.field public final transports:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    .line 7
    .line 8
    new-array p1, p4, [B

    .line 9
    .line 10
    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 11
    .line 12
    new-array p1, p4, [B

    .line 13
    .line 14
    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 15
    .line 16
    new-array p1, p4, [I

    .line 17
    .line 18
    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public addResult(BBI)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 2
    .line 3
    const/16 v1, 0x4e20

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const-wide v1, 0x3ff6666666666666L    # 1.4

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    int-to-double v3, v0

    .line 19
    mul-double/2addr v3, v1

    .line 20
    double-to-int v0, v3

    .line 21
    invoke-virtual {p0, v0}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 25
    .line 26
    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 27
    .line 28
    aput-byte p1, v0, v1

    .line 29
    .line 30
    iget-object p1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 31
    .line 32
    aput-byte p2, p1, v1

    .line 33
    .line 34
    iget-object p1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 35
    .line 36
    aput p3, p1, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iput v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 41
    .line 42
    return-void
.end method

.method public resize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 24
    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DnsEvent("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    .line 19
    .line 20
    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    if-ge v4, v3, :cond_0

    .line 27
    .line 28
    aget v5, v2, v4

    .line 29
    .line 30
    invoke-static {v5}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 44
    .line 45
    const-string v2, " events)"

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
