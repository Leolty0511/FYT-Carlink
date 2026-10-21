.class public final enum Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiProjectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProjectionStartResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field public static final enum PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field public static final PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START_VALUE:I = 0x5

.field public static final enum PROJECTION_START_RESULT_DEVICE_NOT_READY:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field public static final PROJECTION_START_RESULT_DEVICE_NOT_READY_VALUE:I = 0x2

.field public static final enum PROJECTION_START_RESULT_START_REQUEST_FAILED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field public static final PROJECTION_START_RESULT_START_REQUEST_FAILED_VALUE:I = 0x4

.field public static final enum PROJECTION_START_RESULT_START_REQUEST_SENT:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROJECTION_START_RESULT_START_REQUEST_SENT_VALUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PROJECTION_START_RESULT_START_RESPONSE_RECEIVED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field public static final PROJECTION_START_RESULT_START_RESPONSE_RECEIVED_VALUE:I = 0x3

.field public static final enum PROJECTION_START_RESULT_UNKNOWN:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field public static final PROJECTION_START_RESULT_UNKNOWN_VALUE:I

.field private static final VALUES:[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_UNKNOWN:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_REQUEST_SENT:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_DEVICE_NOT_READY:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_RESPONSE_RECEIVED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_REQUEST_FAILED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    sget-object v2, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 2
    .line 3
    const-string v1, "PROJECTION_START_RESULT_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_UNKNOWN:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 12
    .line 13
    const-string v1, "PROJECTION_START_RESULT_START_REQUEST_SENT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_REQUEST_SENT:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 22
    .line 23
    const-string v1, "PROJECTION_START_RESULT_DEVICE_NOT_READY"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_DEVICE_NOT_READY:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 32
    .line 33
    const-string v1, "PROJECTION_START_RESULT_START_RESPONSE_RECEIVED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_RESPONSE_RECEIVED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 42
    .line 43
    const-string v1, "PROJECTION_START_RESULT_START_REQUEST_FAILED"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_REQUEST_FAILED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 52
    .line 53
    const-string v1, "PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->$values()[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->$VALUES:[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 66
    .line 67
    new-instance v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult$1;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult$1;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->values()[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->VALUES:[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 79
    .line 80
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
    iput p3, p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_REQUEST_FAILED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_RESPONSE_RECEIVED:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_DEVICE_NOT_READY:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_START_REQUEST_SENT:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_5
    sget-object p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->PROJECTION_START_RESULT_UNKNOWN:Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiProjectionProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->forNumber(I)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->VALUES:[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->$VALUES:[Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
