.class final Lcom/android/internal/content/PdfUtils$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/PdfUtils;->openPdfThumbnail(Ljava/io/File;Landroid/graphics/Point;)Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$in:Ljava/io/ByteArrayInputStream;

.field final synthetic val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>([Landroid/os/ParcelFileDescriptor;Ljava/io/ByteArrayInputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/internal/content/PdfUtils$1;->val$in:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lcom/android/internal/content/PdfUtils$1;->val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p1, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/content/PdfUtils$1;->val$in:Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    invoke-static {v0, p1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    aget-object p1, p1, v1

    .line 23
    .line 24
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/content/PdfUtils$1;->val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
