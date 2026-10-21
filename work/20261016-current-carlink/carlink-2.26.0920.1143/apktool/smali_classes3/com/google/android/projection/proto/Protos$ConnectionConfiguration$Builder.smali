.class public final Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$PingConfiguration;",
            "Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$PingConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

.field private wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;",
            "Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPingConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$PingConfiguration;",
            "Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$PingConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getWirelessTcpConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;",
            "Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$10800()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getPingConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getWirelessTcpConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$11002(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$PingConfiguration;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$PingConfiguration;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$11002(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$PingConfiguration;

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$11102(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$11102(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 11
    :cond_3
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$11202(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPingConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x2

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x3

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPingConfigurationBuilder()Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getPingConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPingConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$PingConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$PingConfigurationOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 19
    .line 20
    return-object v0
.end method

.method public getWirelessTcpConfigurationBuilder()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->getWirelessTcpConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getWirelessTcpConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasPingConfiguration()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWirelessTcpConfiguration()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$10500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasPingConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergePingConfiguration(Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasWirelessTcpConfiguration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeWirelessTcpConfiguration(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->access$11300(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 17
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 22
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergePingConfiguration(Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->newBuilder(Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeWirelessTcpConfiguration(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->newBuilder(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x2

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPingConfiguration(Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPingConfiguration(Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWirelessTcpConfiguration(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public setWirelessTcpConfiguration(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->bitField0_:I

    return-object p0
.end method
