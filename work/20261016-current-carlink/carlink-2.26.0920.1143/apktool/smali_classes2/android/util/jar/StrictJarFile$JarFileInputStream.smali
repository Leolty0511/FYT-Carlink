.class final Landroid/util/jar/StrictJarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private final entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    .line 8
    .line 9
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public read()I
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 3
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write(I)V

    .line 5
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_0

    .line 6
    :cond_1
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 7
    :goto_0
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 8
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 9
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    :cond_2
    return v0

    .line 10
    :cond_3
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 11
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    return v1
.end method

.method public read([BII)I
    .locals 8

    .line 12
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 13
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_4

    .line 14
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_2

    .line 15
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v6, p3

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    long-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, p3

    .line 16
    :goto_0
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write([BII)V

    .line 17
    iget-wide p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v0, v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 18
    :cond_2
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 19
    :goto_1
    iget-wide p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    .line 20
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 21
    iget-object p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    :cond_3
    return p3

    .line 22
    :cond_4
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 23
    iget-object p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    return v1
.end method

.method public skip(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide p1

    return-wide p1
.end method
