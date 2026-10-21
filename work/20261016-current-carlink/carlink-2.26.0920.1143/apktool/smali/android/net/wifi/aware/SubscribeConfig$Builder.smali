.class public final Landroid/net/wifi/aware/SubscribeConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnableTerminateNotification:Z

.field private mMatchFilter:[B

.field private mServiceName:[B

.field private mServiceSpecificInfo:[B

.field private mSubscribeType:I

.field private mTtlSec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/SubscribeConfig;
    .locals 8

    new-instance v7, Landroid/net/wifi/aware/SubscribeConfig;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    iget v4, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    iget v5, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    iget-boolean v6, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZ)V

    return-object v7
.end method

.method public setMatchFilter(Ljava/util/List;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/SubscribeConfig$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    .line 17
    .line 18
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Invalid service name - must be non-null"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public setServiceSpecificInfo([B)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public setSubscribeType(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "Invalid subscribeType - "

    .line 12
    .line 13
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public setTerminateNotificationEnabled(Z)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Invalid ttlSec - must be non-negative"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
