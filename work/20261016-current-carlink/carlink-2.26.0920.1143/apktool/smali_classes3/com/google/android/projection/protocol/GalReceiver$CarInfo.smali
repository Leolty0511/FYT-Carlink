.class public Lcom/google/android/projection/protocol/GalReceiver$CarInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/GalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarInfo"
.end annotation


# instance fields
.field public canPlayNativeMediaDuringVr:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public driverPosition:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public headUnitMake:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public headUnitModel:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public headUnitSoftwareBuild:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public headUnitSoftwareVersion:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public modelYear:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public sessionConfiguration:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public vehicleId:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->manufacturer:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->model:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->modelYear:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->vehicleId:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->driverPosition:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitMake:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitModel:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitSoftwareBuild:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->headUnitSoftwareVersion:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean p10, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->canPlayNativeMediaDuringVr:Z

    .line 23
    .line 24
    iput p11, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->sessionConfiguration:I

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;->displayName:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method
