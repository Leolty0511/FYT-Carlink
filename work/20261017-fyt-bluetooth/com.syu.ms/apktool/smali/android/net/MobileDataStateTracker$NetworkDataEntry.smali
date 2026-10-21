.class Landroid/net/MobileDataStateTracker$NetworkDataEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkDataEntry"
.end annotation


# instance fields
.field public downloadBandwidth:I

.field public latency:I

.field public networkType:I

.field public uploadBandwidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->networkType:I

    .line 3
    iput p2, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->downloadBandwidth:I

    .line 4
    iput p3, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->uploadBandwidth:I

    .line 5
    iput p4, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->latency:I

    return-void
.end method
