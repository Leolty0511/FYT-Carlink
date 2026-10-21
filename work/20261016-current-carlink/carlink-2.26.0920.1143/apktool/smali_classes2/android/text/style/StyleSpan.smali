.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 2
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return-void
.end method

.method private static apply(Landroid/graphics/Paint;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    or-int/2addr p1, v1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    not-int v1, v1

    .line 30
    and-int/2addr p1, v1

    .line 31
    and-int/lit8 v1, p1, 0x1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    and-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const/high16 p1, -0x41800000    # -0.25f

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
