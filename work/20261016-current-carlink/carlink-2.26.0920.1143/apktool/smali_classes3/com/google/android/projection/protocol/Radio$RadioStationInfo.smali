.class public Lcom/google/android/projection/protocol/Radio$RadioStationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioStationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;,
        Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;,
        Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;
    }
.end annotation


# instance fields
.field public channel:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public metaData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public radioType:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public subChannel:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->radioType:I

    .line 3
    iput p2, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 4
    iput p3, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->subChannel:I

    return-void
.end method

.method public constructor <init>(IIILcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(III)V

    .line 6
    iput-object p4, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->metaData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    return-void
.end method
