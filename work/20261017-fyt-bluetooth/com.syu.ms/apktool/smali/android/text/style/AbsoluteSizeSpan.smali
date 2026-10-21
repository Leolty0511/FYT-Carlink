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

    .line 1
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
