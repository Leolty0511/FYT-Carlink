.class public final enum Lcom/google/android/projection/proto/Protos$ByeByeReason;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ByeByeReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$ByeByeReason;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field public static final enum DEVICE_SWITCH:Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field public static final DEVICE_SWITCH_VALUE:I = 0x2

.field public static final enum NOT_CURRENTLY_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field public static final NOT_CURRENTLY_SUPPORTED_VALUE:I = 0x4

.field public static final enum NOT_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field public static final NOT_SUPPORTED_VALUE:I = 0x3

.field public static final enum PROBE_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field public static final PROBE_SUPPORTED_VALUE:I = 0x5

.field public static final enum USER_SELECTION:Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field public static final USER_SELECTION_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$ByeByeReason;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$ByeByeReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$ByeByeReason;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$ByeByeReason;->USER_SELECTION:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$ByeByeReason;->DEVICE_SWITCH:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$ByeByeReason;->NOT_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$ByeByeReason;->NOT_CURRENTLY_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/google/android/projection/proto/Protos$ByeByeReason;->PROBE_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 2
    .line 3
    const-string v1, "USER_SELECTION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$ByeByeReason;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->USER_SELECTION:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 13
    .line 14
    const-string v1, "DEVICE_SWITCH"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$ByeByeReason;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->DEVICE_SWITCH:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 23
    .line 24
    const-string v1, "NOT_SUPPORTED"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$ByeByeReason;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->NOT_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 33
    .line 34
    const-string v1, "NOT_CURRENTLY_SUPPORTED"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$ByeByeReason;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->NOT_CURRENTLY_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 43
    .line 44
    const-string v1, "PROBE_SUPPORTED"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$ByeByeReason;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->PROBE_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ByeByeReason;->$values()[Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->$VALUES:[Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 57
    .line 58
    new-instance v0, Lcom/google/android/projection/proto/Protos$ByeByeReason$1;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ByeByeReason$1;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ByeByeReason;->values()[Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->VALUES:[Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 70
    .line 71
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$ByeByeReason;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->PROBE_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->NOT_CURRENTLY_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->NOT_SUPPORTED:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->DEVICE_SWITCH:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->USER_SELECTION:Lcom/google/android/projection/proto/Protos$ByeByeReason;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-static {v0}, Landroid/renderscript/a;->j(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 8
    .line 9
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$ByeByeReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$ByeByeReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$ByeByeReason;->forNumber(I)Lcom/google/android/projection/proto/Protos$ByeByeReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$ByeByeReason;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ByeByeReason;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->VALUES:[Lcom/google/android/projection/proto/Protos$ByeByeReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ByeByeReason;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$ByeByeReason;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->$VALUES:[Lcom/google/android/projection/proto/Protos$ByeByeReason;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$ByeByeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$ByeByeReason;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ByeByeReason;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ByeByeReason;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ByeByeReason;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
