.class Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/LineProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->setBssidFromArp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/LineProcessor<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mFoundBssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;->mFoundBssid:Ljava/lang/String;

    return-object v0
.end method

.method public processLine(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "\\s{2,}"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x5

    .line 8
    aget-object v0, p1, v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator;->mHostInterface:Ljava/net/NetworkInterface;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-object v2, p1, v0

    .line 27
    .line 28
    const/16 v3, 0x2e

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v1

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "1"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    aget-object p1, p1, v1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiHostInfoLocator$1;->mFoundBssid:Ljava/lang/String;

    .line 55
    .line 56
    return v0

    .line 57
    :cond_0
    return v1
.end method
