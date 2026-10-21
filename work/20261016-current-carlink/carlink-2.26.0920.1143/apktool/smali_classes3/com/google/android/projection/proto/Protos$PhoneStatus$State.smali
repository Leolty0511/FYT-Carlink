.class public final enum Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$PhoneStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$PhoneStatus$State;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final enum CONFERENCED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final CONFERENCED_VALUE:I = 0x5

.field public static final enum INACTIVE:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final INACTIVE_VALUE:I = 0x3

.field public static final enum INCOMING:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final INCOMING_VALUE:I = 0x4

.field public static final enum IN_CALL:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final IN_CALL_VALUE:I = 0x1

.field public static final enum MUTED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final MUTED_VALUE:I = 0x6

.field public static final enum ON_HOLD:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final ON_HOLD_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field public static final UNKNOWN_VALUE:I

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$PhoneStatus$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->UNKNOWN:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->IN_CALL:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->ON_HOLD:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->INACTIVE:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->INCOMING:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->CONFERENCED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->MUTED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->UNKNOWN:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "IN_CALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->IN_CALL:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "ON_HOLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->ON_HOLD:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "INACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->INACTIVE:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "INCOMING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->INCOMING:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "CONFERENCED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->CONFERENCED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    const-string v1, "MUTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->MUTED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->$values()[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->$VALUES:[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->values()[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->VALUES:[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

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

    iput p3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->MUTED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->CONFERENCED:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->INCOMING:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->INACTIVE:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->ON_HOLD:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->IN_CALL:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->UNKNOWN:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/android/projection/proto/Protos$PhoneStatus$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->forNumber(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->VALUES:[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 1

    .line 3
    const-class v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->$VALUES:[Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
