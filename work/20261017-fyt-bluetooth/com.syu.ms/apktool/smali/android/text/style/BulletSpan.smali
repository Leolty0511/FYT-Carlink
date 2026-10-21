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
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    const/4 p8, 0x0

    .line 3
    iget-boolean p9, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz p9, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    .line 5
    iget p9, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :cond_0
    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p9

    const/high16 p10, 0x40000000    # 2.0f

    if-eqz p9, :cond_2

    .line 8
    sget-object p9, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    if-nez p9, :cond_1

    .line 9
    new-instance p9, Landroid/graphics/Path;

    invoke-direct {p9}, Landroid/graphics/Path;-><init>()V

    sput-object p9, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    const p11, 0x40666667    # 3.6000001f

    .line 10
    sget-object p12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v0, 0x0

    invoke-virtual {p9, v0, v0, p11, p12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 p4, p4, 0x3

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p4, p5

    div-float/2addr p4, p10

    .line 12
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    sget-object p3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    mul-int/lit8 p4, p4, 0x3

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p4, p5

    div-float/2addr p4, p10

    const/high16 p5, 0x40400000    # 3.0f

    .line 15
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16
    :goto_0
    iget-boolean p1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :cond_3
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_4
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    .line 1
    iget p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public getSpanTypeId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
