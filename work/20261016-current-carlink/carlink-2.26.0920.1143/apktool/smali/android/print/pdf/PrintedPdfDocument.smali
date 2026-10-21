.class public Landroid/print/pdf/PrintedPdfDocument;
.super Landroid/graphics/pdf/PdfDocument;
.source "SourceFile"


# static fields
.field private static final MILS_PER_INCH:I = 0x3e8

.field private static final POINTS_IN_INCH:I = 0x48


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mPageHeight:I

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    const/high16 v2, 0x42900000    # 72.0f

    .line 17
    .line 18
    mul-float/2addr v0, v2

    .line 19
    float-to-int v0, v0

    .line 20
    iput v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    div-float/2addr p1, v1

    .line 28
    mul-float/2addr p1, v2

    .line 29
    float-to-int p1, p1

    .line 30
    iput p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    div-float/2addr v3, v1

    .line 42
    mul-float/2addr v3, v2

    .line 43
    float-to-int v3, v3

    .line 44
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    int-to-float v4, v4

    .line 49
    div-float/2addr v4, v1

    .line 50
    mul-float/2addr v4, v2

    .line 51
    float-to-int v4, v4

    .line 52
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    int-to-float v5, v5

    .line 57
    div-float/2addr v5, v1

    .line 58
    mul-float/2addr v5, v2

    .line 59
    float-to-int v5, v5

    .line 60
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    int-to-float p2, p2

    .line 65
    div-float/2addr p2, v1

    .line 66
    mul-float/2addr p2, v2

    .line 67
    float-to-int p2, p2

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    .line 69
    .line 70
    sub-int/2addr v0, v5

    .line 71
    sub-int/2addr p1, p2

    .line 72
    invoke-direct {v1, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public getPageContentRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    return v0
.end method

.method public startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    .line 2
    .line 3
    iget v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    .line 4
    .line 5
    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
