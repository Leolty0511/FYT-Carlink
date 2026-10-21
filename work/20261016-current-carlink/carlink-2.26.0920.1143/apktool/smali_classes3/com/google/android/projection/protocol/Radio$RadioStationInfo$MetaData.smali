.class public Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio$RadioStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;
    }
.end annotation


# instance fields
.field public audioChannels:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public hdData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;

.field public rdsData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public signalQuality:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;->audioChannels:I

    .line 4
    iput p2, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;->signalQuality:I

    .line 5
    iput-object p3, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;->rdsData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;

    .line 6
    iput-object p4, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;->hdData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;Lcom/google/android/projection/protocol/Radio$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;-><init>(IILcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;)V

    return-void
.end method
