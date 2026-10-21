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
    iput-object p2, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public isTagEqual([B)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 2
    array-length v2, p1

    array-length v3, v0

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 4
    aget-byte v4, p1, v2

    aget-byte v5, v0, v2

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 v1, 0x1

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
