.class public Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlternativeFrequencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicSpeechSwitch:I

.field private mProgramId:I

.field private mProgramServiceName:Ljava/lang/String;

.field private mProgramType:I

.field private mProgramTypeName:Ljava/lang/String;

.field private mRadioText:Ljava/lang/String;

.field private mTrafficAnnouncmentFlag:Z

.field private mTrafficProgramFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mAlternativeFrequencies:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramId:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mMusicSpeechSwitch:I

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramServiceName:Ljava/lang/String;

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramType:I

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramTypeName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mRadioText:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;
    .locals 12

    new-instance v11, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;

    iget-object v1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mAlternativeFrequencies:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramId:I

    iget v3, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mMusicSpeechSwitch:I

    iget-object v4, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramServiceName:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramType:I

    iget-object v6, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramTypeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mRadioText:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mTrafficProgramFlag:Z

    iget-boolean v9, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mTrafficAnnouncmentFlag:Z

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;-><init>(Ljava/util/List;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLcom/google/android/projection/protocol/Radio$1;)V

    return-object v11
.end method

.method public setAlternativeFrequencies(Ljava/util/List;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mAlternativeFrequencies:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mAlternativeFrequencies:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setMusicSpeechSwitch(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mMusicSpeechSwitch:I

    return-object p0
.end method

.method public setProgramId(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramId:I

    return-object p0
.end method

.method public setProgramServiceName(Ljava/lang/String;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public setProgramType(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramType:I

    return-object p0
.end method

.method public setProgramTypeName(Ljava/lang/String;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mProgramTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public setRadioText(Ljava/lang/String;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mRadioText:Ljava/lang/String;

    return-object p0
.end method

.method public setTrafficAnnoucementFlag(Z)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mTrafficAnnouncmentFlag:Z

    return-object p0
.end method

.method public setTrafficProgramFlag(Z)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->mTrafficProgramFlag:Z

    return-object p0
.end method
