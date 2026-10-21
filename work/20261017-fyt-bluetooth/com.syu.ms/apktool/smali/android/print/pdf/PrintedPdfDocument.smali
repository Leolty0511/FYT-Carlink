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
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x42900000    # 72.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    .line 4
    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    .line 5
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 7
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 8
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 9
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr v0, v5

    sub-int/2addr p1, p2

    invoke-direct {v1, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getPageContentRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    return v0
.end method

.method public startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    iget-object p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object p1

    return-object p1
.end method
