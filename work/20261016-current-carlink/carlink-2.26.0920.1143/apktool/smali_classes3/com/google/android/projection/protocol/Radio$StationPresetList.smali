.class public Lcom/google/android/projection/protocol/Radio$StationPresetList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StationPresetList"
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public presets:Ljava/util/List;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$StationPreset;",
            ">;"
        }
    .end annotation
.end field

.field public restrictedStationTypes:Ljava/util/List;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$StationPreset;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$StationPresetList;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/protocol/Radio$StationPresetList;->restrictedStationTypes:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/projection/protocol/Radio$StationPresetList;->presets:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method
