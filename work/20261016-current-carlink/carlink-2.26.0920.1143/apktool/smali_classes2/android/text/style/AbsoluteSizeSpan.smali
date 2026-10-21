.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mDip:Z

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 2
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 4
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 5
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p1, Landroid/text/TextPaint;->density:F

    .line 9
    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p1, Landroid/text/TextPaint;->density:F

    .line 9
    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
