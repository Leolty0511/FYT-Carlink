.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroid/media/ExifInterface;

.field final synthetic val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method public constructor <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 0

    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 4

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 14
    .line 15
    cmp-long v0, v2, p1

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 25
    .line 26
    :cond_2
    iget-object p1, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 27
    .line 28
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-gez p1, :cond_3

    .line 33
    .line 34
    const-wide/16 p1, -0x1

    .line 35
    .line 36
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    iget-wide p2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 40
    .line 41
    int-to-long p4, p1

    .line 42
    add-long/2addr p2, p4

    .line 43
    iput-wide p2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 44
    .line 45
    return p1
.end method
