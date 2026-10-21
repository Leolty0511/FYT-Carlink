.class public Landroid/hardware/radio/RadioManager$BandConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$BandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$BandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    move v3, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v3, v2

    .line 24
    :goto_0
    if-nez p1, :cond_3

    .line 25
    .line 26
    move v4, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move v4, v2

    .line 29
    :goto_1
    if-eq v3, v4, :cond_4

    .line 30
    .line 31
    return v2

    .line 32
    :cond_4
    if-eqz v1, :cond_5

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    return v0
.end method

.method public getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public getLowerLimit()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v0

    return v0
.end method

.method public getRegion()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v0

    return v0
.end method

.method public getSpacing()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v0

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BandConfig [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
