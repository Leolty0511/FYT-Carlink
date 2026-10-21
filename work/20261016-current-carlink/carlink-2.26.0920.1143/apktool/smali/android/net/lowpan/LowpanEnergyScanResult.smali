.class public Landroid/net/lowpan/LowpanEnergyScanResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNKNOWN:I = 0x7fffffff


# instance fields
.field private mChannel:I

.field private mMaxRssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return v0
.end method

.method public getMaxRssi()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return v0
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return-void
.end method

.method public setMaxRssi(I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LowpanEnergyScanResult(channel: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", maxRssi:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    .line 19
    .line 20
    const-string v2, ")"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
