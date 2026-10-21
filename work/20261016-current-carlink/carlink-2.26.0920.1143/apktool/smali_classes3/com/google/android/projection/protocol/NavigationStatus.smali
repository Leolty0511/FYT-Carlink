.class public Lcom/google/android/projection/protocol/NavigationStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/NavigationStatusCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_DISTANCE_FEET:I

.field public static final DISPLAY_DISTANCE_KILOMETERS:I

.field public static final DISPLAY_DISTANCE_KILOMETERS_P1:I

.field public static final DISPLAY_DISTANCE_METERS:I

.field public static final DISPLAY_DISTANCE_MILES_P1:I

.field public static final DISPLAY_DISTANCE_YARDS:I

.field private static final TAG:Ljava/lang/String; = "AHU.NAVIGATION"


# instance fields
.field private final mColorDepthBits:I

.field private final mHeight:I

.field private final mInstrumentClusterType:I

.field private final mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

.field private final mMinIntervalMs:I

.field private mNativeNavigationStatus:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->METERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/google/android/projection/protocol/NavigationStatus;->DISPLAY_DISTANCE_METERS:I

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/google/android/projection/protocol/NavigationStatus;->DISPLAY_DISTANCE_KILOMETERS:I

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->KILOMETERS_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/google/android/projection/protocol/NavigationStatus;->DISPLAY_DISTANCE_KILOMETERS_P1:I

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->MILES_P1:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/google/android/projection/protocol/NavigationStatus;->DISPLAY_DISTANCE_MILES_P1:I

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->FEET:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/google/android/projection/protocol/NavigationStatus;->DISPLAY_DISTANCE_FEET:I

    .line 40
    .line 41
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->YARDS:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/google/android/projection/protocol/NavigationStatus;->DISPLAY_DISTANCE_YARDS:I

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;ILcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mMinIntervalMs:I

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mInstrumentClusterType:I

    .line 13
    .line 14
    iput p4, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mHeight:I

    .line 15
    .line 16
    iput p5, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mWidth:I

    .line 17
    .line 18
    iput p6, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mColorDepthBits:I

    .line 19
    .line 20
    return-void
.end method

.method private native nativeInit(IJIIIII)I
.end method

.method private native nativeStart()V
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 9

    .line 1
    iget v4, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mMinIntervalMs:I

    .line 2
    .line 3
    iget v5, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mInstrumentClusterType:I

    .line 4
    .line 5
    iget v6, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mHeight:I

    .line 6
    .line 7
    iget v7, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mWidth:I

    .line 8
    .line 9
    iget v8, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mColorDepthBits:I

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move v1, p1

    .line 13
    move-wide v2, p2

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeInit(IJIIIII)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeStart()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeStop()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mNativeNavigationStatus:J

    return-wide v0
.end method

.method public navigationCurrentPositionCallback([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;->onNavigationCurrentPosition(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "AHU.NAVIGATION"

    .line 17
    .line 18
    const-string v1, "Error parsing protocol buffer in callback"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public navigationNextTurnCallback(Ljava/lang/String;II[BII)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;->onNextTurn(Ljava/lang/String;II[BII)V

    return-void
.end method

.method public navigationNextTurnDistanceCallback(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;->onNextTurnDistance(IIII)V

    return-void
.end method

.method public navigationStateCallback([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/projection/proto/Protos$NavigationState;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationState;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;->onNavigationState(Lcom/google/android/projection/proto/Protos$NavigationState;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "AHU.NAVIGATION"

    .line 17
    .line 18
    const-string v1, "Error parsing protocol buffer in callback"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Error parsing protocol buffer in callback: "

    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public navigationStatusCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/NavigationStatus;->mListener:Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;->onStatus(I)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/NavigationStatus;->nativeStart()V

    return-void
.end method
