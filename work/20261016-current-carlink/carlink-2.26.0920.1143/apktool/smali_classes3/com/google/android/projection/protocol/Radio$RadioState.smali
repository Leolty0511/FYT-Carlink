.class public Lcom/google/android/projection/protocol/Radio$RadioState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioState"
.end annotation


# instance fields
.field public activeRadioId:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public programList:Ljava/util/List;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public radioMuted:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public radioSourceEnabled:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public stationPresetLists:Ljava/util/List;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$StationPresetList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZILcom/google/android/projection/protocol/Radio$RadioStationInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$StationPresetList;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/projection/protocol/Radio$RadioState;->radioSourceEnabled:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/projection/protocol/Radio$RadioState;->radioMuted:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/projection/protocol/Radio$RadioState;->programList:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/projection/protocol/Radio$RadioState;->stationPresetLists:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method
