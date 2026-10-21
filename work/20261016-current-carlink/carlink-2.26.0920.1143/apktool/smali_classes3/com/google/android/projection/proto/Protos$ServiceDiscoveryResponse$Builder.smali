.class public final Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private canPlayNativeMediaDuringVr_:Z

.field private connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

.field private displayName_:Ljava/lang/Object;

.field private driverPosition_:I

.field private headUnitMake_:Ljava/lang/Object;

.field private headUnitModel_:Ljava/lang/Object;

.field private headUnitSoftwareBuild_:Ljava/lang/Object;

.field private headUnitSoftwareVersion_:Ljava/lang/Object;

.field private headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

.field private make_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private probeForSupport_:Z

.field private servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            "Lcom/google/android/projection/proto/Protos$Service$Builder;",
            "Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private services_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation
.end field

.field private sessionConfiguration_:I

.field private vehicleId_:Ljava/lang/Object;

.field private year_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    .line 23
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureServicesIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getConnectionConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getHeadunitInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            "Lcom/google/android/projection/proto/Protos$Service$Builder;",
            "Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 34
    .line 35
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$4900()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getConnectionConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getHeadunitInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllServices(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addServices(ILcom/google/android/projection/proto/Protos$Service$Builder;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addServices(ILcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addServices(Lcom/google/android/projection/proto/Protos$Service$Builder;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addServices(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addServicesBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object v0
.end method

.method public addServicesBuilder(I)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/util/List;)Ljava/util/List;

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5202(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x2

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5302(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x4

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5402(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x8

    .line 13
    :cond_5
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5502(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x10

    .line 14
    :cond_6
    iget v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;I)I

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_7

    or-int/lit8 v2, v2, 0x20

    .line 15
    :cond_7
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5702(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_8

    or-int/lit8 v2, v2, 0x40

    .line 16
    :cond_8
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5802(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_9

    or-int/lit16 v2, v2, 0x80

    .line 17
    :cond_9
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5902(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_a

    or-int/lit16 v2, v2, 0x100

    .line 18
    :cond_a
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6002(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_b

    .line 19
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->canPlayNativeMediaDuringVr_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Z)Z

    or-int/lit16 v2, v2, 0x200

    :cond_b
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_c

    .line 20
    iget v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->sessionConfiguration_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6202(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;I)I

    or-int/lit16 v2, v2, 0x400

    :cond_c
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_d

    or-int/lit16 v2, v2, 0x800

    .line 21
    :cond_d
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6302(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_e

    .line 22
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->probeForSupport_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6402(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Z)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_e
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_10

    .line 23
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_f

    .line 24
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6502(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    goto :goto_2

    .line 25
    :cond_f
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6502(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    :goto_2
    or-int/lit16 v2, v2, 0x2000

    :cond_10
    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_12

    .line 26
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_11

    .line 27
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    goto :goto_3

    .line 28
    :cond_11
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    :goto_3
    or-int/lit16 v2, v2, 0x4000

    .line 29
    :cond_12
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6702(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;I)I

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    .line 12
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x5

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x9

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x11

    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    and-int/lit8 v1, v1, -0x21

    .line 16
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x41

    .line 17
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x81

    .line 18
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x101

    .line 19
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x201

    .line 20
    iput-boolean v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->canPlayNativeMediaDuringVr_:Z

    and-int/lit16 v1, v1, -0x401

    .line 21
    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->sessionConfiguration_:I

    and-int/lit16 v1, v1, -0x801

    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    and-int/lit16 v0, v1, -0x1001

    .line 23
    iput-boolean v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->probeForSupport_:Z

    and-int/lit16 v0, v0, -0x2001

    .line 24
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 25
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 26
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 29
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 30
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 32
    :goto_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanPlayNativeMediaDuringVr()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->canPlayNativeMediaDuringVr_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x4001

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDisplayName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearDriverPosition()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearHeadUnitMake()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitMake()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadUnitModel()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadUnitSoftwareBuild()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadUnitSoftwareVersion()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadunitInfo()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 16
    .line 17
    const v1, -0x8001

    .line 18
    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 22
    .line 23
    return-object p0
.end method

.method public clearMake()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getMake()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearModel()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProbeForSupport()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->probeForSupport_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearServices()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearSessionConfiguration()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->sessionConfiguration_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearVehicleId()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getVehicleId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearYear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getYear()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanPlayNativeMediaDuringVr()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->canPlayNativeMediaDuringVr_:Z

    return v0
.end method

.method public getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 19
    .line 20
    return-object v0
.end method

.method public getConnectionConfigurationBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x4000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getConnectionConfigurationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getConnectionConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDriverPosition()Lcom/google/android/projection/proto/Protos$DriverPosition;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$DriverPosition;->valueOf(I)Lcom/google/android/projection/proto/Protos$DriverPosition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$DriverPosition;->DRIVER_POSITION_LEFT:Lcom/google/android/projection/proto/Protos$DriverPosition;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getHeadUnitMake()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitModel()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitSoftwareBuild()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitSoftwareBuildBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitSoftwareVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

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
    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getHeadunitInfoBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getHeadunitInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 21
    .line 22
    return-object v0
.end method

.method public getHeadunitInfoOrBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getProbeForSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->probeForSupport_:Z

    return v0
.end method

.method public getServices(I)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$Service;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/Protos$Service;

    .line 19
    .line 20
    return-object p1
.end method

.method public getServicesBuilder(I)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public getServicesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Service$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServicesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getServicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getServicesOrBuilder(I)Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getServicesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getSessionConfiguration()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->sessionConfiguration_:I

    return v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getVehicleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getYearBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public hasCanPlayNativeMediaDuringVr()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnectionConfiguration()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDriverPosition()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitMake()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitModel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareBuild()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareVersion()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadunitInfo()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMake()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasModel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProbeForSupport()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionConfiguration()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVehicleId()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasYear()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$4600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServices(I)Lcom/google/android/projection/proto/Protos$Service;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$Service;->isInitialized()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public mergeConnectionConfiguration(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x4000

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->newBuilder(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

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
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x4000

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 17
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 23
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 24
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 25
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6800()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->getServicesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 28
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasMake()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 30
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5200(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 32
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 34
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5300(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 36
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 38
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5400(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 40
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasVehicleId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 42
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5500(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 44
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDriverPosition()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDriverPosition()Lcom/google/android/projection/proto/Protos$DriverPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setDriverPosition(Lcom/google/android/projection/proto/Protos$DriverPosition;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 46
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitMake()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 48
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5700(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 50
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitModel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 52
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5800(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 54
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareBuild()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 56
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$5900(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 58
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 60
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6000(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 62
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasCanPlayNativeMediaDuringVr()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 63
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getCanPlayNativeMediaDuringVr()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setCanPlayNativeMediaDuringVr(Z)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 64
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasSessionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 65
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getSessionConfiguration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setSessionConfiguration(I)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 66
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 68
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6300(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 70
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasProbeForSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 71
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getProbeForSupport()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setProbeForSupport(Z)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 72
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeConnectionConfiguration(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 74
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadunitInfo()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 76
    :cond_14
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->access$6900(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 78
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
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

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    .line 83
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->newBuilder(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 47
    .line 48
    .line 49
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 50
    .line 51
    or-int/2addr p1, v1

    .line 52
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 53
    .line 54
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeServices(I)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setCanPlayNativeMediaDuringVr(Z)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->canPlayNativeMediaDuringVr_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setConnectionConfiguration(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConnectionConfiguration(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfigurationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x1000

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x1000

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setDriverPosition(Lcom/google/android/projection/proto/Protos$DriverPosition;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DriverPosition;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->driverPosition_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeadUnitMake(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitMakeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitModel(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareBuild(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareBuildBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareVersion(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMake(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setMakeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->make_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->model_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setProbeForSupport(Z)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->probeForSupport_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setServices(ILcom/google/android/projection/proto/Protos$Service$Builder;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setServices(ILcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->servicesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->ensureServicesIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->services_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSessionConfiguration(I)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->sessionConfiguration_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVehicleId(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setVehicleIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->vehicleId_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setYear(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setYearBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->year_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
