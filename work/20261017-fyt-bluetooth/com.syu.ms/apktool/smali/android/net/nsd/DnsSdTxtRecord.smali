.class public Landroid/net/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeperator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord$1;

    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Landroid/net/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method public static synthetic access$000(Landroid/net/nsd/DnsSdTxtRecord;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-object p0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 2
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v1, p1

    if-ge v2, v1, :cond_3

    .line 4
    aget-byte p1, p1, v2

    :goto_1
    if-ge v0, p1, :cond_2

    .line 5
    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getValue(I)[B
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 2
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 4
    aget-byte p1, p1, v2

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 5
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v4, v2, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 6
    new-array v1, p1, [B

    add-int/lit8 v4, v4, 0x2

    .line 7
    invoke-static {v3, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private getValue(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private insert([B[BI)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    array-length v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, p3, :cond_1

    .line 3
    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v6

    if-ge v4, v7, :cond_1

    .line 4
    aget-byte v6, v6, v4

    add-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_1
    array-length p3, p1

    add-int/2addr p3, v2

    if-eqz p2, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr p3, v3

    .line 6
    array-length v3, v0

    add-int/2addr v3, p3

    add-int/2addr v3, v5

    .line 7
    new-array v5, v3, [B

    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 8
    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length v5, v0

    sub-int/2addr v5, v4

    .line 10
    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    sub-int/2addr v3, v5

    invoke-static {v0, v4, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    int-to-byte p3, p3

    aput-byte p3, v0, v4

    add-int/lit8 p3, v4, 0x1

    .line 12
    array-length v3, p1

    invoke-static {p1, v1, v0, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_3

    .line 13
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, p1

    add-int/2addr p3, v3

    const/16 v3, 0x3d

    aput-byte v3, v0, p3

    .line 14
    array-length p1, p1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x2

    invoke-static {p2, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/net/nsd/DnsSdTxtRecord;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Landroid/net/nsd/DnsSdTxtRecord;

    .line 3
    iget-object p1, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2
    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public remove(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 2
    aget-byte v3, v3, v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    .line 4
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    iget-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 7
    array-length v4, p1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [B

    iput-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 8
    invoke-static {p1, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, p1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 2
    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    const-string v2, "US-ASCII"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5
    aget-byte v3, v2, v0

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "= is not a valid character in key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    array-length v0, v2

    add-int/2addr v0, v1

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    move-result p1

    .line 10
    :cond_3
    invoke-direct {p0, v2, p2, p1}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key should be US-ASCII"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "}"

    if-eqz v3, :cond_0

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_2

    .line 6
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
