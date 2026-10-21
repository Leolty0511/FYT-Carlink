.class public final Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ConsumerIrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CarrierFrequencyRange"
.end annotation


# instance fields
.field private final mMaxFrequency:I

.field private final mMinFrequency:I

.field final synthetic this$0:Landroid/hardware/ConsumerIrManager;


# direct methods
.method public constructor <init>(Landroid/hardware/ConsumerIrManager;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->this$0:Landroid/hardware/ConsumerIrManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMinFrequency:I

    .line 7
    .line 8
    iput p3, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getMaxFrequency()I
    .locals 1

    iget v0, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    iget v0, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMinFrequency:I

    return v0
.end method
