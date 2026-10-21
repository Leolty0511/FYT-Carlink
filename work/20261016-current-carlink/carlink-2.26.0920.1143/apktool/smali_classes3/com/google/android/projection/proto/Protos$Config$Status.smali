.class public final enum Lcom/google/android/projection/proto/Protos$Config$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$Config$Status;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$Config$Status;

.field public static final enum STATUS_READY:Lcom/google/android/projection/proto/Protos$Config$Status;

.field public static final STATUS_READY_VALUE:I = 0x2

.field public static final enum STATUS_WAIT:Lcom/google/android/projection/proto/Protos$Config$Status;

.field public static final STATUS_WAIT_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$Config$Status;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$Config$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$Config$Status;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$Config$Status;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/projection/proto/Protos$Config$Status;->STATUS_WAIT:Lcom/google/android/projection/proto/Protos$Config$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/projection/proto/Protos$Config$Status;->STATUS_READY:Lcom/google/android/projection/proto/Protos$Config$Status;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/projection/proto/Protos$Config$Status;

    const-string v1, "STATUS_WAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$Config$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->STATUS_WAIT:Lcom/google/android/projection/proto/Protos$Config$Status;

    new-instance v0, Lcom/google/android/projection/proto/Protos$Config$Status;

    const-string v1, "STATUS_READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$Config$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->STATUS_READY:Lcom/google/android/projection/proto/Protos$Config$Status;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Config$Status;->$values()[Lcom/google/android/projection/proto/Protos$Config$Status;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->$VALUES:[Lcom/google/android/projection/proto/Protos$Config$Status;

    new-instance v0, Lcom/google/android/projection/proto/Protos$Config$Status$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$Config$Status$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Config$Status;->values()[Lcom/google/android/projection/proto/Protos$Config$Status;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->VALUES:[Lcom/google/android/projection/proto/Protos$Config$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/projection/proto/Protos$Config$Status;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$Config$Status;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$Config$Status;->STATUS_READY:Lcom/google/android/projection/proto/Protos$Config$Status;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$Config$Status;->STATUS_WAIT:Lcom/google/android/projection/proto/Protos$Config$Status;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Config;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/android/projection/proto/Protos$Config$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$Config$Status;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$Config$Status;->forNumber(I)Lcom/google/android/projection/proto/Protos$Config$Status;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$Config$Status;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Config$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->VALUES:[Lcom/google/android/projection/proto/Protos$Config$Status;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$Config$Status;
    .locals 1

    .line 3
    const-class v0, Lcom/google/android/projection/proto/Protos$Config$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Config$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$Config$Status;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$Config$Status;->$VALUES:[Lcom/google/android/projection/proto/Protos$Config$Status;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$Config$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$Config$Status;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Config$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Config$Status;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Config$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
