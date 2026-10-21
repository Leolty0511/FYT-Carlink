.class public Lcom/google/android/projection/protocol/Radio$StationPreset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StationPreset"
.end annotation


# instance fields
.field public channel:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public subChannel:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public type:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/projection/protocol/Radio$StationPreset;->type:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/Radio$StationPreset;->channel:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/projection/protocol/Radio$StationPreset;->subChannel:I

    .line 9
    .line 10
    return-void
.end method
