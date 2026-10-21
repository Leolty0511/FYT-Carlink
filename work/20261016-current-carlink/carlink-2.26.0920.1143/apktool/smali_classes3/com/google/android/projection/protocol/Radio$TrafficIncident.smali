.class public Lcom/google/android/projection/protocol/Radio$TrafficIncident;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficIncident"
.end annotation


# instance fields
.field public eventCode:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public expectedIncidentDuration:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public latitude:D
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public longitude:D
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/projection/protocol/Radio$TrafficIncident;->eventCode:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/Radio$TrafficIncident;->expectedIncidentDuration:I

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/google/android/projection/protocol/Radio$TrafficIncident;->longitude:D

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/google/android/projection/protocol/Radio$TrafficIncident;->latitude:D

    .line 11
    .line 12
    return-void
.end method
