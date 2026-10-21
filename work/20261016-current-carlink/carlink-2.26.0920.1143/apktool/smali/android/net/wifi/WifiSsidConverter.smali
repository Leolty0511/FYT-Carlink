.class public Landroid/net/wifi/WifiSsidConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static GB2312_FLAG:I = 0x1

.field private static GB2312_FLAG_STRING:Ljava/lang/String; = "\u0001"

.field private static INVALID_CHARSET_FLAG_STRING:Ljava/lang/String; = "\u0002"

.field private static INVALID_CHARTSET_FLAG:I = 0x2

.field public static final NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final TAG:Ljava/lang/String; = "WifiSsidConverter"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containGb2312Byte([B)Z
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    :cond_0
    :goto_0
    array-length v5, p0

    .line 7
    if-ge v2, v5, :cond_6

    .line 8
    .line 9
    aget-byte v5, p0, v2

    .line 10
    .line 11
    and-int/lit16 v5, v5, 0xff

    .line 12
    .line 13
    and-int/lit16 v6, v5, 0x80

    .line 14
    .line 15
    if-nez v6, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    and-int/lit16 v6, v5, 0xe0

    .line 21
    .line 22
    const/16 v7, 0x80

    .line 23
    .line 24
    const/16 v8, 0xc0

    .line 25
    .line 26
    if-ne v8, v6, :cond_2

    .line 27
    .line 28
    add-int/lit8 v9, v2, 0x1

    .line 29
    .line 30
    if-ge v9, v0, :cond_2

    .line 31
    .line 32
    aget-byte v9, p0, v9

    .line 33
    .line 34
    and-int/lit16 v9, v9, 0xff

    .line 35
    .line 36
    and-int/2addr v9, v8

    .line 37
    if-ne v7, v9, :cond_2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x2

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    move v4, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    and-int/lit16 v5, v5, 0xf0

    .line 46
    .line 47
    const/16 v9, 0xe0

    .line 48
    .line 49
    const/4 v10, 0x1

    .line 50
    if-ne v9, v5, :cond_3

    .line 51
    .line 52
    add-int/lit8 v11, v2, 0x2

    .line 53
    .line 54
    if-ge v11, v0, :cond_3

    .line 55
    .line 56
    add-int/lit8 v12, v2, 0x1

    .line 57
    .line 58
    aget-byte v12, p0, v12

    .line 59
    .line 60
    and-int/lit16 v12, v12, 0xff

    .line 61
    .line 62
    and-int/2addr v12, v8

    .line 63
    if-ne v7, v12, :cond_3

    .line 64
    .line 65
    aget-byte v11, p0, v11

    .line 66
    .line 67
    and-int/lit16 v11, v11, 0xff

    .line 68
    .line 69
    and-int/2addr v11, v8

    .line 70
    if-ne v7, v11, :cond_3

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x3

    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    if-le v4, v10, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    if-ne v8, v6, :cond_4

    .line 80
    .line 81
    add-int/lit8 v6, v2, 0x1

    .line 82
    .line 83
    if-ge v6, v0, :cond_6

    .line 84
    .line 85
    :cond_4
    if-ne v9, v5, :cond_5

    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x2

    .line 88
    .line 89
    if-lt v2, v0, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move v1, v10

    .line 93
    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 94
    .line 95
    if-lez v3, :cond_7

    .line 96
    .line 97
    if-nez v4, :cond_7

    .line 98
    .line 99
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->isGb2312([B)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :cond_7
    if-eqz v1, :cond_8

    .line 105
    .line 106
    const-string p0, "WifiSsidConverter"

    .line 107
    .line 108
    const-string v0, "Contain GB2312!!!!!"

    .line 109
    .line 110
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_8
    return v1
.end method

.method private static encodeSsid([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v2, v3, :cond_7

    .line 12
    .line 13
    aget-byte v3, p0, v2

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_6

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    if-eq v3, v4, :cond_5

    .line 22
    .line 23
    const/16 v4, 0xd

    .line 24
    .line 25
    if-eq v3, v4, :cond_4

    .line 26
    .line 27
    const/16 v4, 0x1b

    .line 28
    .line 29
    if-eq v3, v4, :cond_3

    .line 30
    .line 31
    const/16 v4, 0x22

    .line 32
    .line 33
    if-eq v3, v4, :cond_2

    .line 34
    .line 35
    const/16 v4, 0x5c

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x20

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    if-lt v3, v4, :cond_0

    .line 43
    .line 44
    const/16 v4, 0x7f

    .line 45
    .line 46
    if-gt v3, v4, :cond_0

    .line 47
    .line 48
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    new-array v4, v5, [Ljava/lang/Object;

    .line 55
    .line 56
    aget-byte v5, p0, v2

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    aput-object v5, v4, v1

    .line 63
    .line 64
    const-string v5, "%c"

    .line 65
    .line 66
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 83
    .line 84
    new-array v4, v5, [Ljava/lang/Object;

    .line 85
    .line 86
    aget-byte v5, p0, v2

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    aput-object v5, v4, v1

    .line 93
    .line 94
    const-string v5, "\\x%02x"

    .line 95
    .line 96
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const-string v3, "\\\\"

    .line 109
    .line 110
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    const-string v3, "\\\""

    .line 116
    .line 117
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-string v3, "\\e"

    .line 123
    .line 124
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const-string v3, "\\r"

    .line 130
    .line 131
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const-string v3, "\\n"

    .line 137
    .line 138
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    const-string v3, "\\t"

    .line 144
    .line 145
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_7
    return-object v0
.end method

.method private static isGb2312([B)Z
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v4, 0x1

    .line 6
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    aget-byte v5, p0, v2

    .line 9
    .line 10
    and-int/lit16 v6, v5, 0xff

    .line 11
    .line 12
    and-int/lit16 v6, v6, 0x80

    .line 13
    .line 14
    if-nez v6, :cond_0

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    and-int/lit16 v6, v5, 0xff

    .line 20
    .line 21
    const/16 v7, 0x81

    .line 22
    .line 23
    const/16 v8, 0xfe

    .line 24
    .line 25
    if-lt v6, v7, :cond_1

    .line 26
    .line 27
    and-int/lit16 v6, v5, 0xff

    .line 28
    .line 29
    if-gt v6, v8, :cond_1

    .line 30
    .line 31
    add-int/lit8 v6, v2, 0x1

    .line 32
    .line 33
    if-ge v6, v0, :cond_1

    .line 34
    .line 35
    aget-byte v6, p0, v6

    .line 36
    .line 37
    and-int/lit16 v9, v6, 0xff

    .line 38
    .line 39
    const/16 v10, 0x40

    .line 40
    .line 41
    if-lt v9, v10, :cond_1

    .line 42
    .line 43
    and-int/lit16 v6, v6, 0xff

    .line 44
    .line 45
    if-gt v6, v8, :cond_1

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    and-int/lit16 v6, v5, 0xff

    .line 51
    .line 52
    if-lt v6, v7, :cond_3

    .line 53
    .line 54
    and-int/lit16 v5, v5, 0xff

    .line 55
    .line 56
    if-gt v5, v8, :cond_3

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    if-lt v2, v0, :cond_3

    .line 61
    .line 62
    move v3, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v1, v4

    .line 65
    :cond_3
    const-string p0, "WifiSsidConverter"

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    const-string/jumbo v0, "is GB2312 Tuncated!!!!!"

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_4
    if-eqz v1, :cond_5

    .line 76
    .line 77
    const-string/jumbo v0, "is GB2312!!!!!"

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_5
    return v1
.end method

.method private static isGb2312Truncated([B)Z
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    and-int/lit16 v3, v3, 0xff

    .line 9
    .line 10
    and-int/lit16 v4, v3, 0x80

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v4, 0x81

    .line 18
    .line 19
    const/16 v5, 0xfe

    .line 20
    .line 21
    if-lt v3, v4, :cond_1

    .line 22
    .line 23
    if-gt v3, v5, :cond_1

    .line 24
    .line 25
    add-int/lit8 v6, v2, 0x1

    .line 26
    .line 27
    if-ge v6, v0, :cond_1

    .line 28
    .line 29
    aget-byte v6, p0, v6

    .line 30
    .line 31
    and-int/lit16 v7, v6, 0xff

    .line 32
    .line 33
    const/16 v8, 0x40

    .line 34
    .line 35
    if-lt v7, v8, :cond_1

    .line 36
    .line 37
    and-int/lit16 v6, v6, 0xff

    .line 38
    .line 39
    if-gt v6, v5, :cond_1

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-lt v3, v4, :cond_2

    .line 45
    .line 46
    if-gt v3, v5, :cond_2

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    add-int/2addr v2, p0

    .line 50
    if-lt v2, v0, :cond_2

    .line 51
    .line 52
    move v1, p0

    .line 53
    :cond_2
    if-eqz v1, :cond_3

    .line 54
    .line 55
    const-string p0, "WifiSsidConverter"

    .line 56
    .line 57
    const-string/jumbo v0, "is GB2312 Tuncated!!!!!"

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_3
    return v1
.end method

.method private static isSsidTruncated([B)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->containGb2312Byte([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->isGb2312Truncated([B)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->isUTF8Truncated([B)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method private static isUTF8Truncated([B)Z
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_5

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    and-int/lit16 v4, v3, 0xff

    .line 9
    .line 10
    const/16 v5, 0x80

    .line 11
    .line 12
    and-int/2addr v4, v5

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    and-int/lit16 v4, v3, 0xff

    .line 19
    .line 20
    const/16 v6, 0xe0

    .line 21
    .line 22
    and-int/2addr v4, v6

    .line 23
    const/16 v7, 0xc0

    .line 24
    .line 25
    if-ne v7, v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v4, v2, 0x1

    .line 28
    .line 29
    if-ge v4, v0, :cond_1

    .line 30
    .line 31
    aget-byte v4, p0, v4

    .line 32
    .line 33
    and-int/lit16 v4, v4, 0xff

    .line 34
    .line 35
    and-int/2addr v4, v7

    .line 36
    if-ne v5, v4, :cond_1

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    and-int/lit16 v4, v3, 0xff

    .line 42
    .line 43
    and-int/lit16 v4, v4, 0xf0

    .line 44
    .line 45
    if-ne v6, v4, :cond_2

    .line 46
    .line 47
    add-int/lit8 v4, v2, 0x2

    .line 48
    .line 49
    if-ge v4, v0, :cond_2

    .line 50
    .line 51
    add-int/lit8 v8, v2, 0x1

    .line 52
    .line 53
    aget-byte v8, p0, v8

    .line 54
    .line 55
    and-int/lit16 v8, v8, 0xff

    .line 56
    .line 57
    and-int/2addr v8, v7

    .line 58
    if-ne v5, v8, :cond_2

    .line 59
    .line 60
    aget-byte v4, p0, v4

    .line 61
    .line 62
    and-int/lit16 v4, v4, 0xff

    .line 63
    .line 64
    and-int/2addr v4, v7

    .line 65
    if-ne v5, v4, :cond_2

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    and-int/lit16 p0, v3, 0xff

    .line 71
    .line 72
    and-int/2addr p0, v6

    .line 73
    if-ne v7, p0, :cond_3

    .line 74
    .line 75
    add-int/lit8 p0, v2, 0x1

    .line 76
    .line 77
    if-ge p0, v0, :cond_4

    .line 78
    .line 79
    :cond_3
    and-int/lit16 p0, v3, 0xff

    .line 80
    .line 81
    and-int/lit16 p0, p0, 0xf0

    .line 82
    .line 83
    if-ne v6, p0, :cond_5

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x2

    .line 86
    .line 87
    if-lt v2, v0, :cond_5

    .line 88
    .line 89
    :cond_4
    const/4 v1, 0x1

    .line 90
    :cond_5
    if-eqz v1, :cond_6

    .line 91
    .line 92
    const-string p0, "WifiSsidConverter"

    .line 93
    .line 94
    const-string/jumbo v0, "is UTF-8 Tuncated!!!!!"

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_6
    return v1
.end method

.method public static makeSupplicantSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sget v3, Landroid/net/wifi/WifiSsidConverter;->GB2312_FLAG:I

    .line 16
    .line 17
    const-string v4, "%x"

    .line 18
    .line 19
    const-string v5, "WifiSsidConverter"

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "GB2312 String:"

    .line 29
    .line 30
    invoke-static {v0, p0, v5}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v2, Ljava/math/BigInteger;

    .line 36
    .line 37
    const-string v3, "GB2312"

    .line 38
    .line 39
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v2, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 48
    .line 49
    .line 50
    aput-object v2, v0, v6

    .line 51
    .line 52
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_0
    sget v3, Landroid/net/wifi/WifiSsidConverter;->INVALID_CHARTSET_FLAG:I

    .line 58
    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "encode String:"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "P\""

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, "\""

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    new-instance v2, Ljava/math/BigInteger;

    .line 105
    .line 106
    const-string v3, "UTF-8"

    .line 107
    .line 108
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {v2, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 117
    .line 118
    .line 119
    aput-object v2, v0, v6

    .line 120
    .line 121
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x22

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 8

    .line 1
    const-string/jumbo v0, "ssid = "

    .line 2
    .line 3
    .line 4
    const-string v1, "UTF-8"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x1

    .line 37
    invoke-virtual {v1, v4, v3, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string v1, "Try GB2312"

    .line 52
    .line 53
    const-string v6, "WifiSsidConverter"

    .line 54
    .line 55
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->isSsidTruncated([B)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->encodeSsid([B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object p0, Landroid/net/wifi/WifiSsidConverter;->INVALID_CHARSET_FLAG_STRING:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_0
    const-string v1, "GB2312"

    .line 87
    .line 88
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v7, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 97
    .line 98
    invoke-virtual {v1, v7}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v7, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 103
    .line 104
    invoke-virtual {v1, v7}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    array-length v7, p0

    .line 113
    invoke-static {p0, v4, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1, v4, v2, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_1

    .line 129
    .line 130
    const-string/jumbo v0, "ssid contain invalid charset "

    .line 131
    .line 132
    .line 133
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Landroid/net/wifi/WifiSsidConverter;->encodeSsid([B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget-object p0, Landroid/net/wifi/WifiSsidConverter;->INVALID_CHARSET_FLAG_STRING:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v0, ", result: "

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    sget-object v0, Landroid/net/wifi/WifiSsidConverter;->GB2312_FLAG_STRING:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-object p0

    .line 207
    :catch_0
    move-exception p0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v1, "exception = "

    .line 211
    .line 212
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_2
    move v5, v4

    .line 227
    :goto_0
    if-eqz v5, :cond_3

    .line 228
    .line 229
    const-string p0, "<unknown ssid>"

    .line 230
    .line 231
    return-object p0

    .line 232
    :cond_3
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0
.end method
