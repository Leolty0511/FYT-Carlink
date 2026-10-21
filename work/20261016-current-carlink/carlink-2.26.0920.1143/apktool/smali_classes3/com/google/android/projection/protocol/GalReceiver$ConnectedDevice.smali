.class public Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/projection/common/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/GalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedDevice"
.end annotation


# instance fields
.field public final deviceId:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public final deviceName:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;->deviceName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;->deviceId:I

    .line 7
    .line 8
    return-void
.end method
