.class public final Lcom/android/internal/content/PdfUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openPdfThumbnail(Ljava/io/File;Landroid/graphics/Point;)Landroid/content/res/AssetFileDescriptor;
    .locals 10

    .line 1
    const/high16 v0, 0x10000000

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/graphics/pdf/PdfRenderer;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 20
    .line 21
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, p1, v2, v2, v3}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0x64

    .line 38
    .line 39
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 40
    .line 41
    invoke-virtual {p1, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v2, Lcom/android/internal/content/PdfUtils$1;

    .line 58
    .line 59
    invoke-direct {v2, v0, p1, p0}, Lcom/android/internal/content/PdfUtils$1;-><init>([Landroid/os/ParcelFileDescriptor;Ljava/io/ByteArrayInputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    new-array v3, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v2, p1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 70
    .line 71
    .line 72
    new-instance p0, Landroid/content/res/AssetFileDescriptor;

    .line 73
    .line 74
    aget-object v5, v0, v1

    .line 75
    .line 76
    const-wide/16 v6, 0x0

    .line 77
    .line 78
    const-wide/16 v8, -0x1

    .line 79
    .line 80
    move-object v4, p0

    .line 81
    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 82
    .line 83
    .line 84
    return-object p0
.end method
