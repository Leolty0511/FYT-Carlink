.class public final Landroid/security/net/config/Pin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final digest:[B

.field public final digestAlgorithm:Ljava/lang/String;

.field private final mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/security/net/config/Pin;->digest:[B

    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/2addr p1, p2

    .line 17
    iput p1, p0, Landroid/security/net/config/Pin;->mHashCode:I

    .line 18
    .line 19
    return-void
.end method

.method public static getDigestLength(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x20

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Unsupported digest algorithm: "

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static isSupportedDigestAlgorithm(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/security/net/config/Pin;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/security/net/config/Pin;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/security/net/config/Pin;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v3, p0, Landroid/security/net/config/Pin;->mHashCode:I

    .line 18
    .line 19
    if-eq v1, v3, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Landroid/security/net/config/Pin;->digest:[B

    .line 23
    .line 24
    iget-object v3, p1, Landroid/security/net/config/Pin;->digest:[B

    .line 25
    .line 26
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    return v0
.end method
