.class public final enum Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
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
    name = "NextTurnEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final enum DEPART:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final DEPART_VALUE:I = 0x1

.field public static final enum DESTINATION:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final DESTINATION_VALUE:I = 0x13

.field public static final enum FERRY_BOAT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final FERRY_BOAT_VALUE:I = 0x10

.field public static final enum FERRY_TRAIN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final FERRY_TRAIN_VALUE:I = 0x11

.field public static final enum FORK:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final FORK_VALUE:I = 0x9

.field public static final enum MERGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final MERGE_VALUE:I = 0xa

.field public static final enum NAME_CHANGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final NAME_CHANGE_VALUE:I = 0x2

.field public static final enum OFF_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final OFF_RAMP_VALUE:I = 0x8

.field public static final enum ON_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final ON_RAMP_VALUE:I = 0x7

.field public static final enum ROUNDABOUT_ENTER:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final enum ROUNDABOUT_ENTER_AND_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final ROUNDABOUT_ENTER_AND_EXIT_VALUE:I = 0xd

.field public static final ROUNDABOUT_ENTER_VALUE:I = 0xb

.field public static final enum ROUNDABOUT_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final ROUNDABOUT_EXIT_VALUE:I = 0xc

.field public static final enum SHARP_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final SHARP_TURN_VALUE:I = 0x5

.field public static final enum SLIGHT_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final SLIGHT_TURN_VALUE:I = 0x3

.field public static final enum STRAIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final STRAIGHT_VALUE:I = 0xe

.field public static final enum TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final TURN_VALUE:I = 0x4

.field public static final enum UNKNOWN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum U_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field public static final U_TURN_VALUE:I = 0x6

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->UNKNOWN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DEPART:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->NAME_CHANGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SLIGHT_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SHARP_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->U_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ON_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->OFF_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FORK:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->MERGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER_AND_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->STRAIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_BOAT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_TRAIN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DESTINATION:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->UNKNOWN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "DEPART"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DEPART:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "NAME_CHANGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->NAME_CHANGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "SLIGHT_TURN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SLIGHT_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "TURN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "SHARP_TURN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SHARP_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "U_TURN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->U_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "ON_RAMP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ON_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "OFF_RAMP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->OFF_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "FORK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FORK:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "MERGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->MERGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "ROUNDABOUT_ENTER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "ROUNDABOUT_EXIT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "ROUNDABOUT_ENTER_AND_EXIT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER_AND_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "STRAIGHT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->STRAIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "FERRY_BOAT"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_BOAT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "FERRY_TRAIN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_TRAIN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    const-string v1, "DESTINATION"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DESTINATION:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->$values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    move-result-object v0

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

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

    iput p3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DESTINATION:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_TRAIN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_BOAT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->STRAIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER_AND_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->MERGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FORK:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->OFF_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ON_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->U_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SHARP_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SLIGHT_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->NAME_CHANGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DEPART:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->UNKNOWN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->forNumber(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 1

    .line 3
    const-class v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->$VALUES:[Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
