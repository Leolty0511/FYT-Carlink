.class public Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio$RadioStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RdsData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;
    }
.end annotation


# instance fields
.field public alternativeFrequencies:Ljava/util/List;
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

.field public musicSpeechSwitch:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public programId:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public programServiceName:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public programType:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public programTypeName:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public radioText:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public trafficAnnouncementFlag:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public trafficProgramFlag:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->alternativeFrequencies:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->programId:I

    .line 5
    iput p3, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->musicSpeechSwitch:I

    .line 6
    iput-object p4, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->programServiceName:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->programType:I

    .line 8
    iput-object p6, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->programTypeName:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->radioText:Ljava/lang/String;

    .line 10
    iput-boolean p8, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->trafficProgramFlag:Z

    .line 11
    iput-boolean p9, p0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;->trafficAnnouncementFlag:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLcom/google/android/projection/protocol/Radio$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;-><init>(Ljava/util/List;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
