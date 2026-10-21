.class Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectByteInputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mPos:I

.field private mSize:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 8
    .line 9
    iput-object p2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    .line 10
    .line 11
    iput p3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final read([BII)I
    .locals 3

    .line 2
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int v2, v0, p3

    if-le v2, v1, :cond_1

    sub-int p3, v1, v0

    .line 3
    :cond_1
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4
    iget p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    return p3
.end method

.method public final skip(J)J
    .locals 6

    .line 1
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    add-long/2addr v1, p1

    .line 5
    iget v3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    .line 6
    .line 7
    int-to-long v4, v3

    .line 8
    cmp-long v1, v1, v4

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    sub-int/2addr v3, v0

    .line 13
    int-to-long p1, v3

    .line 14
    :cond_0
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    cmp-long v3, p1, v1

    .line 17
    .line 18
    if-gez v3, :cond_1

    .line 19
    .line 20
    return-wide v1

    .line 21
    :cond_1
    int-to-long v0, v0

    .line 22
    add-long/2addr v0, p1

    .line 23
    long-to-int v0, v0

    .line 24
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 25
    .line 26
    return-wide p1
.end method
