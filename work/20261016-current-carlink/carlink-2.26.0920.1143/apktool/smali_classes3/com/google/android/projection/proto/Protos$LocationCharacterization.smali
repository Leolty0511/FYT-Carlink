.class public final enum Lcom/google/android/projection/proto/Protos$LocationCharacterization;
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
    name = "LocationCharacterization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$LocationCharacterization;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final enum ACCELEROMETER_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final ACCELEROMETER_FUSION_VALUE:I = 0x4

.field public static final enum CAR_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final CAR_SPEED_FUSION_VALUE:I = 0x40

.field public static final enum COMPASS_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final COMPASS_FUSION_VALUE:I = 0x8

.field public static final enum DEAD_RECKONED:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final DEAD_RECKONED_VALUE:I = 0x80

.field public static final enum GYROSCOPE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final GYROSCOPE_FUSION_VALUE:I = 0x2

.field public static final enum PRIOR_LOCATIONS:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final PRIOR_LOCATIONS_VALUE:I = 0x1

.field public static final enum RAW_GPS_ONLY:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final RAW_GPS_ONLY_VALUE:I = 0x100

.field public static final enum STEERING_ANGLE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final STEERING_ANGLE_FUSION_VALUE:I = 0x20

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final enum WHEEL_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

.field public static final WHEEL_SPEED_FUSION_VALUE:I = 0x10

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$LocationCharacterization;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$LocationCharacterization;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->PRIOR_LOCATIONS:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->GYROSCOPE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->ACCELEROMETER_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->COMPASS_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->WHEEL_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->STEERING_ANGLE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->CAR_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->DEAD_RECKONED:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->RAW_GPS_ONLY:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 2
    .line 3
    const-string v1, "PRIOR_LOCATIONS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->PRIOR_LOCATIONS:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 13
    .line 14
    const-string v1, "GYROSCOPE_FUSION"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->GYROSCOPE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 23
    .line 24
    const-string v1, "ACCELEROMETER_FUSION"

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->ACCELEROMETER_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 33
    .line 34
    const-string v1, "COMPASS_FUSION"

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->COMPASS_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 45
    .line 46
    const-string v1, "WHEEL_SPEED_FUSION"

    .line 47
    .line 48
    const/16 v2, 0x10

    .line 49
    .line 50
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->WHEEL_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 54
    .line 55
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    const/16 v2, 0x20

    .line 59
    .line 60
    const-string v3, "STEERING_ANGLE_FUSION"

    .line 61
    .line 62
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->STEERING_ANGLE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 66
    .line 67
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 68
    .line 69
    const/4 v1, 0x6

    .line 70
    const/16 v2, 0x40

    .line 71
    .line 72
    const-string v3, "CAR_SPEED_FUSION"

    .line 73
    .line 74
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->CAR_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 78
    .line 79
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    const/16 v2, 0x80

    .line 83
    .line 84
    const-string v3, "DEAD_RECKONED"

    .line 85
    .line 86
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->DEAD_RECKONED:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 90
    .line 91
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 92
    .line 93
    const-string v1, "RAW_GPS_ONLY"

    .line 94
    .line 95
    const/16 v2, 0x100

    .line 96
    .line 97
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;-><init>(Ljava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->RAW_GPS_ONLY:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 101
    .line 102
    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->$values()[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->$VALUES:[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 107
    .line 108
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization$1;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$LocationCharacterization$1;-><init>()V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 114
    .line 115
    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->values()[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->VALUES:[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 120
    .line 121
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$LocationCharacterization;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_8

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_7

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_6

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p0, v0, :cond_5

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    if-eq p0, v0, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_3

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p0, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p0, v0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->RAW_GPS_ONLY:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->DEAD_RECKONED:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->CAR_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->STEERING_ANGLE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->WHEEL_SPEED_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->COMPASS_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->ACCELEROMETER_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->GYROSCOPE_FUSION:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->PRIOR_LOCATIONS:Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    .line 61
    .line 62
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Landroid/renderscript/a;->j(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 7
    .line 8
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$LocationCharacterization;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$LocationCharacterization;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->forNumber(I)Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$LocationCharacterization;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->VALUES:[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$LocationCharacterization;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$LocationCharacterization;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->$VALUES:[Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$LocationCharacterization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$LocationCharacterization;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationCharacterization;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
