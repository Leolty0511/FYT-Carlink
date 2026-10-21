.class final Landroid/graphics/pdf/PdfDocument$PdfCanvas;
.super Landroid/graphics/Canvas;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PdfCanvas"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/pdf/PdfDocument;


# direct methods
.method public constructor <init>(Landroid/graphics/pdf/PdfDocument;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$PdfCanvas;->this$0:Landroid/graphics/pdf/PdfDocument;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
