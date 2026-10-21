.class public final enum Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TurnSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

.field public static final enum LEFT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

.field public static final LEFT_VALUE:I = 0x1

.field public static final enum RIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

.field public static final RIGHT_VALUE:I = 0x2

.field public static final enum UNSPECIFIED:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

.field public static final UNSPECIFIED_VALUE:I = 0x3

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->LEFT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->RIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->UNSPECIFIED:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->LEFT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->RIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    const-string v1, "UNSPECIFIED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->UNSPECIFIED:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->$values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

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

    iput p3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->UNSPECIFIED:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->RIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->LEFT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 1

    .line 3
    const-class v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
