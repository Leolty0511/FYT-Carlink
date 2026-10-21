.class public Landroid/content/pm/MacAuthenticatedInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final mMac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isTagEqual([B)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    array-length v3, v0

    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    array-length v4, p1

    .line 20
    if-ge v2, v4, :cond_1

    .line 21
    .line 22
    aget-byte v4, p1, v2

    .line 23
    .line 24
    aget-byte v5, v0, v2

    .line 25
    .line 26
    xor-int/2addr v4, v5

    .line 27
    or-int/2addr v3, v4

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez v3, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_2
    :goto_1
    return v1
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 4
    iget-object v0, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    :cond_0
    return p3
.end method
