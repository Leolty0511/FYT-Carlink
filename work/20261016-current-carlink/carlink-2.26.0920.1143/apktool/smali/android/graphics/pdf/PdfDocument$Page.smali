.class public final Landroid/graphics/pdf/PdfDocument$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method private constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 4
    iput-object p2, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$Page;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 1

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
