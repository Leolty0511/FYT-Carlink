.class public final enum Lcom/google/android/projection/proto/Protos$HeadLightState;
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
    name = "HeadLightState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$HeadLightState;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$HeadLightState;

.field public static final enum HEAD_LIGHT_STATE_HIGH:Lcom/google/android/projection/proto/Protos$HeadLightState;

.field public static final HEAD_LIGHT_STATE_HIGH_VALUE:I = 0x3

.field public static final enum HEAD_LIGHT_STATE_OFF:Lcom/google/android/projection/proto/Protos$HeadLightState;

.field public static final HEAD_LIGHT_STATE_OFF_VALUE:I = 0x1

.field public static final enum HEAD_LIGHT_STATE_ON:Lcom/google/android/projection/proto/Protos$HeadLightState;

.field public static final HEAD_LIGHT_STATE_ON_VALUE:I = 0x2

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$HeadLightState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$HeadLightState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_OFF:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_ON:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_HIGH:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 2
    .line 3
    const-string v1, "HEAD_LIGHT_STATE_OFF"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$HeadLightState;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_OFF:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 13
    .line 14
    const-string v1, "HEAD_LIGHT_STATE_ON"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$HeadLightState;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_ON:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 23
    .line 24
    const-string v1, "HEAD_LIGHT_STATE_HIGH"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$HeadLightState;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_HIGH:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HeadLightState;->$values()[Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->$VALUES:[Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 37
    .line 38
    new-instance v0, Lcom/google/android/projection/proto/Protos$HeadLightState$1;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$HeadLightState$1;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HeadLightState;->values()[Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->VALUES:[Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 50
    .line 51
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
    iput p3, p0, Lcom/google/android/projection/proto/Protos$HeadLightState;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_HIGH:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_ON:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_OFF:Lcom/google/android/projection/proto/Protos$HeadLightState;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/16 v0, 0x1d

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
            "Lcom/google/android/projection/proto/Protos$HeadLightState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$HeadLightState;->forNumber(I)Lcom/google/android/projection/proto/Protos$HeadLightState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HeadLightState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->VALUES:[Lcom/google/android/projection/proto/Protos$HeadLightState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$HeadLightState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HeadLightState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->$VALUES:[Lcom/google/android/projection/proto/Protos$HeadLightState;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$HeadLightState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$HeadLightState;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HeadLightState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HeadLightState;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HeadLightState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
