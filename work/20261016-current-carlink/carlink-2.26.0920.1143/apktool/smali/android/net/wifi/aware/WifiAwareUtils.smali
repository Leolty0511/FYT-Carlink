.class public Landroid/net/wifi/aware/WifiAwareUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validatePassphrase(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/16 v0, 0x3f

    .line 16
    .line 17
    if-le p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static validatePmk([B)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length p0, p0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validateServiceName([B)V
    .locals 3

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt v0, v1, :cond_6

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    const/16 v1, 0xff

    .line 9
    .line 10
    if-gt v0, v1, :cond_6

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p0

    .line 14
    if-ge v0, v1, :cond_5

    .line 15
    .line 16
    aget-byte v1, p0, v0

    .line 17
    .line 18
    and-int/lit16 v2, v1, 0x80

    .line 19
    .line 20
    if-nez v2, :cond_4

    .line 21
    .line 22
    const/16 v2, 0x30

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x39

    .line 27
    .line 28
    if-le v1, v2, :cond_4

    .line 29
    .line 30
    :cond_0
    const/16 v2, 0x61

    .line 31
    .line 32
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x7a

    .line 35
    .line 36
    if-le v1, v2, :cond_4

    .line 37
    .line 38
    :cond_1
    const/16 v2, 0x41

    .line 39
    .line 40
    if-lt v1, v2, :cond_2

    .line 41
    .line 42
    const/16 v2, 0x5a

    .line 43
    .line 44
    if-le v1, v2, :cond_4

    .line 45
    .line 46
    :cond_2
    const/16 v2, 0x2d

    .line 47
    .line 48
    if-eq v1, v2, :cond_4

    .line 49
    .line 50
    const/16 v2, 0x2e

    .line 51
    .line 52
    if-ne v1, v2, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v0, "Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, .)"

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    return-void

    .line 67
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v0, "Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "Invalid service name - null"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method
