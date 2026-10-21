.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final BULLET_RADIUS:I = 0x3

.field public static final STANDARD_GAP_WIDTH:I = 0x2

.field private static sBulletPath:Landroid/graphics/Path;


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 4
    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 8
    iput p1, p0, Landroid/text/style/BulletSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 12
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/BulletSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    .line 1
    check-cast p8, Landroid/text/Spanned;

    .line 2
    .line 3
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p6

    .line 7
    if-ne p6, p9, :cond_4

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    .line 12
    move-result-object p6

    .line 13
    iget-boolean p8, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 14
    .line 15
    if-eqz p8, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 18
    .line 19
    .line 20
    move-result p8

    .line 21
    iget p9, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 22
    .line 23
    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p8, 0x0

    .line 28
    :goto_0
    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 34
    .line 35
    .line 36
    move-result p9

    .line 37
    const/high16 p10, 0x40000000    # 2.0f

    .line 38
    .line 39
    if-eqz p9, :cond_2

    .line 40
    .line 41
    sget-object p9, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    .line 42
    .line 43
    if-nez p9, :cond_1

    .line 44
    .line 45
    new-instance p9, Landroid/graphics/Path;

    .line 46
    .line 47
    invoke-direct {p9}, Landroid/graphics/Path;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object p9, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    .line 51
    .line 52
    const p11, 0x40666667    # 3.6000001f

    .line 53
    .line 54
    .line 55
    sget-object p12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p9, v0, v0, p11, p12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    .line 63
    .line 64
    mul-int/lit8 p4, p4, 0x3

    .line 65
    .line 66
    add-int/2addr p4, p3

    .line 67
    int-to-float p3, p4

    .line 68
    add-int/2addr p5, p7

    .line 69
    int-to-float p4, p5

    .line 70
    div-float/2addr p4, p10

    .line 71
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    .line 73
    .line 74
    sget-object p3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    .line 75
    .line 76
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    mul-int/lit8 p4, p4, 0x3

    .line 84
    .line 85
    add-int/2addr p4, p3

    .line 86
    int-to-float p3, p4

    .line 87
    add-int/2addr p5, p7

    .line 88
    int-to-float p4, p5

    .line 89
    div-float/2addr p4, p10

    .line 90
    const/high16 p5, 0x40400000    # 3.0f

    .line 91
    .line 92
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-boolean p1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
