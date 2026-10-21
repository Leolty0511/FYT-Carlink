.class public Landroid/net/lowpan/LowpanBeaconInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanBeaconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field final mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 10
    .line 11
    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>(Landroid/net/lowpan/LowpanBeaconInfo$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->build()Landroid/net/lowpan/LowpanIdentity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$502(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->access$300(Landroid/net/lowpan/LowpanBeaconInfo;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 29
    .line 30
    return-object v0
.end method

.method public setBeaconAddress([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B

    return-object p0
.end method

.method public setChannel(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setFlag(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setFlags(Ljava/util/Collection;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/lowpan/LowpanBeaconInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setLqi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$202(Landroid/net/lowpan/LowpanBeaconInfo;I)I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setPanid(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setRssi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$102(Landroid/net/lowpan/LowpanBeaconInfo;I)I

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setXpanid([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method
