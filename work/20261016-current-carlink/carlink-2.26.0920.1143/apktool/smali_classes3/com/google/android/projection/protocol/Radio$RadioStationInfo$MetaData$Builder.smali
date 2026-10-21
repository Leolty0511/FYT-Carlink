.class public Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannels:I

.field private mHdData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;

.field private mRdsData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;

.field private mSignalQuality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mAudioChannels:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mSignalQuality:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
    .locals 7

    new-instance v6, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    iget v1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mAudioChannels:I

    iget v2, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mSignalQuality:I

    iget-object v3, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mRdsData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;

    iget-object v4, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mHdData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;-><init>(IILcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;Lcom/google/android/projection/protocol/Radio$1;)V

    return-object v6
.end method

.method public setAudioChannels(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mAudioChannels:I

    return-object p0
.end method

.method public setHdData(Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mHdData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$HdData;

    return-object p0
.end method

.method public setRdsData(Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mRdsData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;

    return-object p0
.end method

.method public setSignalQuality(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->mSignalQuality:I

    return-object p0
.end method
