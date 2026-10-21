.class public Landroid/net/wifi/BatchedScanSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/BatchedScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AP_FOR_DISTANCE:I = 0x0

.field public static final DEFAULT_AP_PER_SCAN:I = 0x10

.field public static final DEFAULT_INTERVAL_SEC:I = 0x1e

.field public static final DEFAULT_SCANS_PER_BATCH:I = 0xff

.field public static final MAX_AP_FOR_DISTANCE:I = 0xff

.field public static final MAX_AP_PER_SCAN:I = 0xff

.field public static final MAX_INTERVAL_SEC:I = 0xe10

.field public static final MAX_SCANS_PER_BATCH:I = 0xff

.field public static final MAX_WIFI_CHANNEL:I = 0xc4

.field public static final MIN_AP_FOR_DISTANCE:I = 0x0

.field public static final MIN_AP_PER_SCAN:I = 0x2

.field public static final MIN_INTERVAL_SEC:I = 0x0

.field public static final MIN_SCANS_PER_BATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatchedScanSettings"

.field public static final UNSPECIFIED:I = 0x7fffffff


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxApForDistance:I

.field public maxApPerScan:I

.field public maxScansPerBatch:I

.field public scanIntervalSec:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/wifi/BatchedScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/BatchedScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/BatchedScanSettings;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 5
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 6
    iget-object v0, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 8
    :cond_0
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 9
    iget p1, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput p1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    return-void
.end method

.method private channelSetIsValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_2

    const/16 v4, 0xc4

    if-gt v3, v4, :cond_2

    goto :goto_0

    :catch_0
    :cond_2
    const-string v3, "A"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 2
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 4
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 5
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    return-void
.end method

.method public constrain()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 3
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_0

    :cond_1
    const/16 v3, 0xe10

    if-le v0, v3, :cond_2

    .line 4
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 5
    :cond_2
    :goto_0
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const/4 v3, 0x2

    const/16 v4, 0xff

    if-ne v0, v2, :cond_3

    .line 6
    iput v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_1

    :cond_3
    if-ge v0, v3, :cond_4

    .line 7
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_1

    :cond_4
    if-le v0, v4, :cond_5

    .line 8
    iput v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 9
    :cond_5
    :goto_1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v0, v2, :cond_6

    const/16 v0, 0x10

    .line 10
    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_2

    :cond_6
    if-ge v0, v3, :cond_7

    .line 11
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_2

    :cond_7
    if-le v0, v4, :cond_8

    .line 12
    iput v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 13
    :cond_8
    :goto_2
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v0, v2, :cond_9

    .line 14
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_3

    :cond_9
    if-gez v0, :cond_a

    .line 15
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_3

    :cond_a
    if-le v0, v4, :cond_b

    .line 16
    iput v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    :cond_b
    :goto_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/wifi/BatchedScanSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/net/wifi/BatchedScanSettings;

    .line 3
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v2, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v2, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v2, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v2, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v0, :cond_3

    .line 5
    iget-object p1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 6
    :cond_3
    iget-object p1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public isInvalid()Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const/4 v1, 0x2

    const/16 v2, 0xff

    const v3, 0x7fffffff

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    if-lt v0, v1, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    return v4

    .line 2
    :cond_1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v0, v3, :cond_3

    if-lt v0, v1, :cond_2

    if-le v0, v2, :cond_3

    :cond_2
    return v4

    .line 3
    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/BatchedScanSettings;->channelSetIsValid()Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    .line 4
    :cond_4
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-eq v0, v3, :cond_6

    if-ltz v0, :cond_5

    const/16 v1, 0xe10

    if-le v0, v1, :cond_6

    :cond_5
    return v4

    .line 5
    :cond_6
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v0, v3, :cond_8

    if-ltz v0, :cond_7

    if-le v0, v2, :cond_8

    :cond_7
    return v4

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BatchScanSettings [maxScansPerBatch: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const v2, 0x7fffffff

    const-string v3, "<none>"

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", maxApPerScan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v1, v2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", scanIntervalSec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v1, v2, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", maxApForDistance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", channelSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v1, :cond_4

    const-string v1, "ALL"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_4
    const-string v1, "<"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    const-string v1, ">"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const-string v1, "]"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
