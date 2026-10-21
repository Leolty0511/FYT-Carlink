.class public final enum Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
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
    name = "BluetoothPairingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field public static final enum BLUETOOTH_PAIRING_NUMERIC_COMPARISON:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field public static final BLUETOOTH_PAIRING_NUMERIC_COMPARISON_VALUE:I = 0x2

.field public static final enum BLUETOOTH_PAIRING_OOB:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field public static final BLUETOOTH_PAIRING_OOB_VALUE:I = 0x1

.field public static final enum BLUETOOTH_PAIRING_PASSKEY_ENTRY:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field public static final BLUETOOTH_PAIRING_PASSKEY_ENTRY_VALUE:I = 0x3

.field public static final enum BLUETOOTH_PAIRING_PIN:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field public static final BLUETOOTH_PAIRING_PIN_VALUE:I = 0x4

.field public static final enum BLUETOOTH_PAIRING_UNAVAILABLE:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field public static final BLUETOOTH_PAIRING_UNAVAILABLE_VALUE:I = -0x1

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_UNAVAILABLE:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_OOB:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_NUMERIC_COMPARISON:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PASSKEY_ENTRY:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PIN:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

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
    new-instance v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const-string v3, "BLUETOOTH_PAIRING_UNAVAILABLE"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_UNAVAILABLE:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 13
    .line 14
    const-string v1, "BLUETOOTH_PAIRING_OOB"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_OOB:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 23
    .line 24
    const-string v1, "BLUETOOTH_PAIRING_NUMERIC_COMPARISON"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_NUMERIC_COMPARISON:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 33
    .line 34
    const-string v1, "BLUETOOTH_PAIRING_PASSKEY_ENTRY"

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PASSKEY_ENTRY:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 43
    .line 44
    const-string v1, "BLUETOOTH_PAIRING_PIN"

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PIN:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->$values()[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->$VALUES:[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 57
    .line 58
    new-instance v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod$1;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod$1;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->values()[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->VALUES:[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PIN:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_PASSKEY_ENTRY:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_NUMERIC_COMPARISON:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_OOB:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->BLUETOOTH_PAIRING_UNAVAILABLE:Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x11

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
            "Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->forNumber(I)Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->VALUES:[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->$VALUES:[Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
