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

    iget-object p0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-object p0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 7
    .line 8
    array-length v4, v3

    .line 9
    if-ge v2, v4, :cond_0

    .line 10
    .line 11
    aget-byte v3, v3, v2

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 20
    .line 21
    array-length v1, p1

    .line 22
    if-ge v2, v1, :cond_3

    .line 23
    .line 24
    aget-byte p1, p1, v2

    .line 25
    .line 26
    :goto_1
    if-ge v0, p1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 29
    .line 30
    add-int v3, v2, v0

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    aget-byte v1, v1, v3

    .line 35
    .line 36
    const/16 v3, 0x3d

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    const/4 p1, 0x0

    .line 55
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
    invoke-static {v3, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method private insert([B[BI)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    array-length v2, p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    move v3, v1

    .line 10
    move v4, v3

    .line 11
    :goto_1
    const/4 v5, 0x1

    .line 12
    if-ge v3, p3, :cond_1

    .line 13
    .line 14
    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 15
    .line 16
    array-length v7, v6

    .line 17
    if-ge v4, v7, :cond_1

    .line 18
    .line 19
    aget-byte v6, v6, v4

    .line 20
    .line 21
    add-int/2addr v6, v5

    .line 22
    and-int/lit16 v5, v6, 0xff

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    array-length p3, p1

    .line 29
    add-int/2addr p3, v2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    move v3, v5

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v3, v1

    .line 35
    :goto_2
    add-int/2addr p3, v3

    .line 36
    array-length v3, v0

    .line 37
    add-int/2addr v3, p3

    .line 38
    add-int/2addr v3, v5

    .line 39
    new-array v5, v3, [B

    .line 40
    .line 41
    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 42
    .line 43
    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 44
    .line 45
    .line 46
    array-length v5, v0

    .line 47
    sub-int/2addr v5, v4

    .line 48
    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 49
    .line 50
    sub-int/2addr v3, v5

    .line 51
    invoke-static {v0, v4, v6, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 55
    .line 56
    int-to-byte p3, p3

    .line 57
    aput-byte p3, v0, v4

    .line 58
    .line 59
    add-int/lit8 p3, v4, 0x1

    .line 60
    .line 61
    array-length v3, p1

    .line 62
    invoke-static {p1, v1, v0, p3, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 68
    .line 69
    array-length v3, p1

    .line 70
    add-int/2addr p3, v3

    .line 71
    const/16 v3, 0x3d

    .line 72
    .line 73
    aput-byte v3, v0, p3

    .line 74
    .line 75
    array-length p1, p1

    .line 76
    add-int/2addr v4, p1

    .line 77
    add-int/lit8 v4, v4, 0x2

    .line 78
    .line 79
    invoke-static {p2, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
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

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/net/nsd/DnsSdTxtRecord;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroid/net/nsd/DnsSdTxtRecord;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 14
    .line 15
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    aget-byte v2, v2, v0

    .line 9
    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v1
.end method

.method public remove(Ljava/lang/String;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    if-ge v1, v4, :cond_2

    .line 8
    .line 9
    aget-byte v3, v3, v1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-gt v4, v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eq v4, v3, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    add-int/2addr v5, v1

    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    aget-byte v4, v4, v5

    .line 33
    .line 34
    const/16 v5, 0x3d

    .line 35
    .line 36
    if-ne v4, v5, :cond_1

    .line 37
    .line 38
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 41
    .line 42
    add-int/lit8 v6, v1, 0x1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 58
    .line 59
    array-length v4, p1

    .line 60
    sub-int/2addr v4, v3

    .line 61
    add-int/lit8 v4, v4, -0x1

    .line 62
    .line 63
    new-array v4, v4, [B

    .line 64
    .line 65
    iput-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 66
    .line 67
    invoke-static {p1, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 68
    .line 69
    .line 70
    add-int v0, v1, v3

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 75
    .line 76
    array-length v5, p1

    .line 77
    sub-int/2addr v5, v1

    .line 78
    sub-int/2addr v5, v3

    .line 79
    add-int/lit8 v5, v5, -0x1

    .line 80
    .line 81
    invoke-static {p1, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 82
    .line 83
    .line 84
    return v2

    .line 85
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    and-int/lit16 v3, v3, 0xff

    .line 88
    .line 89
    add-int/2addr v1, v3

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 p1, -0x1

    .line 94
    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    array-length v1, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    :try_start_0
    const-string v2, "US-ASCII"

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_1
    array-length v3, v2

    .line 19
    if-ge v0, v3, :cond_2

    .line 20
    .line 21
    aget-byte v3, v2, v0

    .line 22
    .line 23
    const/16 v4, 0x3d

    .line 24
    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "= is not a valid character in key"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    array-length v0, v2

    .line 39
    add-int/2addr v0, v1

    .line 40
    const/16 v1, 0xff

    .line 41
    .line 42
    if-ge v0, v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v0, -0x1

    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_3
    invoke-direct {p0, v2, p2, p1}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "Key and Value length cannot exceed 255 bytes"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string/jumbo p2, "key should be US-ASCII"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    const-string/jumbo v3, "{"

    .line 10
    .line 11
    .line 12
    invoke-static {v3, v2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string/jumbo v4, "}"

    .line 21
    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "="

    .line 34
    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {v2, v4}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_1
    if-nez v0, :cond_1

    .line 54
    .line 55
    move-object v0, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string v3, ", "

    .line 58
    .line 59
    invoke-static {v0, v3, v2}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    if-eqz v0, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const-string v0, ""

    .line 70
    .line 71
    :goto_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
