.class public Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$AmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private mStereo:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandConfig;)V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 9
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    .line 4
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 5
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioManager$AmBandConfig;
    .locals 8

    .line 1
    new-instance v7, Landroid/hardware/radio/RadioManager$AmBandConfig;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    .line 34
    .line 35
    move-object v0, v7

    .line 36
    invoke-direct/range {v0 .. v6}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(IIIIIZ)V

    .line 37
    .line 38
    .line 39
    return-object v7
.end method

.method public setStereo(Z)Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    return-object p0
.end method
