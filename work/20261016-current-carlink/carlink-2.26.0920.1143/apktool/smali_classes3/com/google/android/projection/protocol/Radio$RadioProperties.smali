.class public Lcom/google/android/projection/protocol/Radio$RadioProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioProperties"
.end annotation


# instance fields
.field public afSwitch:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public audioLoopback:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public backgroundTuner:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public channelRange:Ljava/util/List;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$Range;",
            ">;"
        }
    .end annotation
.end field

.field public channelSpacing:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public channelSpacings:Ljava/util/List;
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

.field public muteCapability:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public radioId:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public rds:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public region:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public stationPresetsAccess:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public ta:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public trafficService:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public type:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;IZIIZZIZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$Range;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZIIZZIZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->radioId:I

    .line 3
    iput p2, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->type:I

    .line 4
    iput-object p3, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelSpacings:Ljava/util/List;

    .line 6
    iput p5, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelSpacing:I

    .line 7
    iput-boolean p6, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->backgroundTuner:Z

    .line 8
    iput p7, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->region:I

    .line 9
    iput p8, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->rds:I

    .line 10
    iput-boolean p9, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->afSwitch:Z

    .line 11
    iput-boolean p10, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->ta:Z

    .line 12
    iput p11, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->trafficService:I

    .line 13
    iput-boolean p12, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->audioLoopback:Z

    .line 14
    iput-boolean p13, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->muteCapability:Z

    .line 15
    iput p14, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->stationPresetsAccess:I

    return-void
.end method


# virtual methods
.method public getChannelRange()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    return-object v0
.end method
