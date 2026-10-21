.class public final enum Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DistanceUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final enum FEET:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final FEET_VALUE:I = 0x6

.field public static final enum KILOMETERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final enum KILOMETERS_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final KILOMETERS_P1_VALUE:I = 0x3

.field public static final KILOMETERS_VALUE:I = 0x2

.field public static final enum METERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final METERS_VALUE:I = 0x1

.field public static final enum MILES:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final enum MILES_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final MILES_P1_VALUE:I = 0x5

.field public static final MILES_VALUE:I = 0x4

.field public static final enum UNKNOWN_DISTANCE_UNIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final UNKNOWN_DISTANCE_UNIT_VALUE:I = 0x0

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final enum YARDS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

.field public static final YARDS_VALUE:I = 0x7

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->UNKNOWN_DISTANCE_UNIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->METERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->FEET:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->YARDS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "UNKNOWN_DISTANCE_UNIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->UNKNOWN_DISTANCE_UNIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "METERS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->METERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "KILOMETERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "KILOMETERS_P1"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "MILES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "MILES_P1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "FEET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->FEET:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    const-string v1, "YARDS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->YARDS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->$values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

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

    iput p3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->YARDS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->FEET:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->METERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->UNKNOWN_DISTANCE_UNIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
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

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 1

    .line 3
    const-class v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
