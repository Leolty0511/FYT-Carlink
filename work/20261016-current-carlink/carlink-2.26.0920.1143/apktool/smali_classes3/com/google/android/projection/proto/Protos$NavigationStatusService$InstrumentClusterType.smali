.class public final enum Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstrumentClusterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

.field public static final enum ENUM:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

.field public static final ENUM_VALUE:I = 0x2

.field public static final enum IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

.field public static final IMAGE_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->ENUM:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 2
    .line 3
    const-string v1, "IMAGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 13
    .line 14
    const-string v1, "ENUM"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->ENUM:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->$values()[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType$1;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType$1;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->values()[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->ENUM:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
