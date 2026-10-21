.class public final enum Lcom/google/android/projection/proto/Protos$SensorMessageId;
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
    name = "SensorMessageId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$SensorMessageId;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$SensorMessageId;

.field public static final enum SENSOR_MESSAGE_BATCH:Lcom/google/android/projection/proto/Protos$SensorMessageId;

.field public static final SENSOR_MESSAGE_BATCH_VALUE:I = 0x8003

.field public static final enum SENSOR_MESSAGE_ERROR:Lcom/google/android/projection/proto/Protos$SensorMessageId;

.field public static final SENSOR_MESSAGE_ERROR_VALUE:I = 0x8004

.field public static final enum SENSOR_MESSAGE_REQUEST:Lcom/google/android/projection/proto/Protos$SensorMessageId;

.field public static final SENSOR_MESSAGE_REQUEST_VALUE:I = 0x8001

.field public static final enum SENSOR_MESSAGE_RESPONSE:Lcom/google/android/projection/proto/Protos$SensorMessageId;

.field public static final SENSOR_MESSAGE_RESPONSE_VALUE:I = 0x8002

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$SensorMessageId;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$SensorMessageId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$SensorMessageId;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_REQUEST:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_RESPONSE:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_BATCH:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_ERROR:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x8001

    .line 5
    .line 6
    .line 7
    const-string v3, "SENSOR_MESSAGE_REQUEST"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$SensorMessageId;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_REQUEST:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const v2, 0x8002

    .line 18
    .line 19
    .line 20
    const-string v3, "SENSOR_MESSAGE_RESPONSE"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$SensorMessageId;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_RESPONSE:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const v2, 0x8003

    .line 31
    .line 32
    .line 33
    const-string v3, "SENSOR_MESSAGE_BATCH"

    .line 34
    .line 35
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$SensorMessageId;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_BATCH:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    const v2, 0x8004

    .line 44
    .line 45
    .line 46
    const-string v3, "SENSOR_MESSAGE_ERROR"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$SensorMessageId;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_ERROR:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorMessageId;->$values()[Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->$VALUES:[Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorMessageId$1;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorMessageId$1;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorMessageId;->values()[Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->VALUES:[Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 71
    .line 72
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$SensorMessageId;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_ERROR:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_BATCH:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_RESPONSE:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->SENSOR_MESSAGE_REQUEST:Lcom/google/android/projection/proto/Protos$SensorMessageId;

    .line 16
    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x8001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x1f

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
            "Lcom/google/android/projection/proto/Protos$SensorMessageId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$SensorMessageId;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$SensorMessageId;->forNumber(I)Lcom/google/android/projection/proto/Protos$SensorMessageId;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$SensorMessageId;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->VALUES:[Lcom/google/android/projection/proto/Protos$SensorMessageId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$SensorMessageId;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$SensorMessageId;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->$VALUES:[Lcom/google/android/projection/proto/Protos$SensorMessageId;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$SensorMessageId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$SensorMessageId;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorMessageId;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorMessageId;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
