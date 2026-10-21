.class public final enum Lcom/google/android/projection/proto/Protos$DrivingStatus;
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
    name = "DrivingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$DrivingStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final enum DRIVE_STATUS_LIMIT_MESSAGE_LEN:Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final DRIVE_STATUS_LIMIT_MESSAGE_LEN_VALUE:I = 0x10

.field public static final enum DRIVE_STATUS_NO_CONFIG:Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final DRIVE_STATUS_NO_CONFIG_VALUE:I = 0x8

.field public static final enum DRIVE_STATUS_NO_KEYBOARD_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final DRIVE_STATUS_NO_KEYBOARD_INPUT_VALUE:I = 0x2

.field public static final enum DRIVE_STATUS_NO_VIDEO:Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final DRIVE_STATUS_NO_VIDEO_VALUE:I = 0x1

.field public static final enum DRIVE_STATUS_NO_VOICE_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final DRIVE_STATUS_NO_VOICE_INPUT_VALUE:I = 0x4

.field public static final enum DRIVE_STATUS_UNRESTRICTED:Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field public static final DRIVE_STATUS_UNRESTRICTED_VALUE:I

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$DrivingStatus;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$DrivingStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$DrivingStatus;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_UNRESTRICTED:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_VIDEO:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_KEYBOARD_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_VOICE_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_CONFIG:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    sget-object v2, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_LIMIT_MESSAGE_LEN:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 2
    .line 3
    const-string v1, "DRIVE_STATUS_UNRESTRICTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$DrivingStatus;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_UNRESTRICTED:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 12
    .line 13
    const-string v1, "DRIVE_STATUS_NO_VIDEO"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$DrivingStatus;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_VIDEO:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 22
    .line 23
    const-string v1, "DRIVE_STATUS_NO_KEYBOARD_INPUT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$DrivingStatus;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_KEYBOARD_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 32
    .line 33
    const-string v1, "DRIVE_STATUS_NO_VOICE_INPUT"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$DrivingStatus;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_VOICE_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 43
    .line 44
    const-string v1, "DRIVE_STATUS_NO_CONFIG"

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$DrivingStatus;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_CONFIG:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 52
    .line 53
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    const/16 v2, 0x10

    .line 57
    .line 58
    const-string v3, "DRIVE_STATUS_LIMIT_MESSAGE_LEN"

    .line 59
    .line 60
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$DrivingStatus;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_LIMIT_MESSAGE_LEN:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->$values()[Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->$VALUES:[Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/projection/proto/Protos$DrivingStatus$1;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$DrivingStatus$1;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->values()[Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->VALUES:[Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 83
    .line 84
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$DrivingStatus;
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
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_LIMIT_MESSAGE_LEN:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_CONFIG:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_VOICE_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_KEYBOARD_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_VIDEO:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_UNRESTRICTED:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x1c

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
            "Lcom/google/android/projection/proto/Protos$DrivingStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$DrivingStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->forNumber(I)Lcom/google/android/projection/proto/Protos$DrivingStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$DrivingStatus;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->VALUES:[Lcom/google/android/projection/proto/Protos$DrivingStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$DrivingStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$DrivingStatus;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->$VALUES:[Lcom/google/android/projection/proto/Protos$DrivingStatus;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$DrivingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$DrivingStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
