.class public Landroid/content/pm/LimitedLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final mEnd:J

.field private mOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p2, v0

    .line 9
    .line 10
    if-ltz p1, :cond_2

    .line 11
    .line 12
    cmp-long p1, p4, v0

    .line 13
    .line 14
    if-ltz p1, :cond_1

    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    sub-long/2addr v0, p2

    .line 22
    cmp-long p1, p4, v0

    .line 23
    .line 24
    if-gtz p1, :cond_0

    .line 25
    .line 26
    add-long/2addr p4, p2

    .line 27
    iput-wide p4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    .line 28
    .line 29
    invoke-virtual {p0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 30
    .line 31
    .line 32
    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    const-string/jumbo p2, "offset + length > Long.MAX_VALUE"

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string/jumbo p2, "length < 0"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string/jumbo p2, "offset < 0"

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    const-string/jumbo p2, "in == null"

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 2
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    :try_start_1
    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 4
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/LimitedLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    .line 5
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_0
    array-length v0, p1

    .line 7
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 8
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v2, p3

    const-wide v4, 0x7fffffffffffffffL

    sub-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    add-long/2addr v2, v0

    .line 9
    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sub-long/2addr v4, v0

    long-to-int p3, v4

    .line 10
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 11
    iget-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    return p1

    .line 12
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "offset out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
