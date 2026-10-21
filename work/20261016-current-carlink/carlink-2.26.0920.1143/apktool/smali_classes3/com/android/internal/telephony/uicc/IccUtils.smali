.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt p2, v2, :cond_2

    .line 9
    .line 10
    aget-byte v3, p0, p1

    .line 11
    .line 12
    const/16 v4, -0x80

    .line 13
    .line 14
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    add-int/lit8 v3, p2, -0x1

    .line 17
    .line 18
    div-int/lit8 v3, v3, 0x2

    .line 19
    .line 20
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .line 21
    .line 22
    add-int/lit8 v5, p1, 0x1

    .line 23
    .line 24
    mul-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    const-string v6, "utf-16be"

    .line 27
    .line 28
    invoke-direct {v4, p0, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v3

    .line 33
    const-string v4, "IccUtils"

    .line 34
    .line 35
    const-string v5, "implausible UnsupportedEncodingException"

    .line 36
    .line 37
    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_1
    if-lez p0, :cond_1

    .line 48
    .line 49
    add-int/lit8 p1, p0, -0x1

    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const p2, 0xffff

    .line 56
    .line 57
    .line 58
    if-ne p1, p2, :cond_1

    .line 59
    .line 60
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v4, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_2
    const/4 v3, 0x3

    .line 69
    if-lt p2, v3, :cond_4

    .line 70
    .line 71
    aget-byte v3, p0, p1

    .line 72
    .line 73
    const/16 v4, -0x7f

    .line 74
    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    add-int/lit8 v3, p1, 0x1

    .line 78
    .line 79
    aget-byte v3, p0, v3

    .line 80
    .line 81
    and-int/lit16 v3, v3, 0xff

    .line 82
    .line 83
    add-int/lit8 v4, p2, -0x3

    .line 84
    .line 85
    if-le v3, v4, :cond_3

    .line 86
    .line 87
    move v3, v4

    .line 88
    :cond_3
    add-int/lit8 v4, p1, 0x2

    .line 89
    .line 90
    aget-byte v4, p0, v4

    .line 91
    .line 92
    and-int/lit16 v4, v4, 0xff

    .line 93
    .line 94
    shl-int/lit8 v4, v4, 0x7

    .line 95
    .line 96
    int-to-char v4, v4

    .line 97
    add-int/lit8 p1, p1, 0x3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v3, 0x4

    .line 101
    if-lt p2, v3, :cond_6

    .line 102
    .line 103
    aget-byte v3, p0, p1

    .line 104
    .line 105
    const/16 v4, -0x7e

    .line 106
    .line 107
    if-ne v3, v4, :cond_6

    .line 108
    .line 109
    add-int/lit8 v3, p1, 0x1

    .line 110
    .line 111
    aget-byte v3, p0, v3

    .line 112
    .line 113
    and-int/lit16 v3, v3, 0xff

    .line 114
    .line 115
    add-int/lit8 v4, p2, -0x4

    .line 116
    .line 117
    if-le v3, v4, :cond_5

    .line 118
    .line 119
    move v3, v4

    .line 120
    :cond_5
    add-int/lit8 v4, p1, 0x2

    .line 121
    .line 122
    aget-byte v4, p0, v4

    .line 123
    .line 124
    and-int/lit16 v4, v4, 0xff

    .line 125
    .line 126
    shl-int/lit8 v4, v4, 0x8

    .line 127
    .line 128
    add-int/lit8 v5, p1, 0x3

    .line 129
    .line 130
    aget-byte v5, p0, v5

    .line 131
    .line 132
    and-int/lit16 v5, v5, 0xff

    .line 133
    .line 134
    or-int/2addr v4, v5

    .line 135
    int-to-char v4, v4

    .line 136
    add-int/lit8 p1, p1, 0x4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    move v2, v1

    .line 140
    move v3, v2

    .line 141
    move v4, v3

    .line 142
    :goto_2
    if-eqz v2, :cond_a

    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    :goto_3
    if-lez v3, :cond_9

    .line 150
    .line 151
    aget-byte v0, p0, p1

    .line 152
    .line 153
    if-gez v0, :cond_7

    .line 154
    .line 155
    and-int/lit8 v0, v0, 0x7f

    .line 156
    .line 157
    add-int/2addr v0, v4

    .line 158
    int-to-char v0, v0

    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    add-int/lit8 p1, p1, 0x1

    .line 163
    .line 164
    add-int/lit8 v3, v3, -0x1

    .line 165
    .line 166
    :cond_7
    move v0, v1

    .line 167
    :goto_4
    if-ge v0, v3, :cond_8

    .line 168
    .line 169
    add-int v2, p1, v0

    .line 170
    .line 171
    aget-byte v2, p0, v2

    .line 172
    .line 173
    if-ltz v2, :cond_8

    .line 174
    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    add-int/2addr p1, v0

    .line 186
    sub-int/2addr v3, v0

    .line 187
    goto :goto_3

    .line 188
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0

    .line 193
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const v2, 0x1040257

    .line 198
    .line 199
    .line 200
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :catch_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0
.end method

.method public static bcdPlmnToString([BI)Ljava/lang/String;
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x0

    .line 12
    .line 13
    aget-byte v1, p0, v1

    .line 14
    .line 15
    shl-int/lit8 v2, v1, 0x4

    .line 16
    .line 17
    shr-int/lit8 v1, v1, 0x4

    .line 18
    .line 19
    and-int/lit8 v1, v1, 0xf

    .line 20
    .line 21
    or-int/2addr v1, v2

    .line 22
    int-to-byte v1, v1

    .line 23
    const/4 v2, 0x0

    .line 24
    aput-byte v1, v0, v2

    .line 25
    .line 26
    add-int/lit8 v1, p1, 0x1

    .line 27
    .line 28
    aget-byte v3, p0, v1

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x4

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    add-int/2addr p1, v4

    .line 34
    aget-byte v5, p0, p1

    .line 35
    .line 36
    and-int/lit8 v5, v5, 0xf

    .line 37
    .line 38
    or-int/2addr v3, v5

    .line 39
    int-to-byte v3, v3

    .line 40
    const/4 v5, 0x1

    .line 41
    aput-byte v3, v0, v5

    .line 42
    .line 43
    aget-byte p1, p0, p1

    .line 44
    .line 45
    and-int/lit16 p1, p1, 0xf0

    .line 46
    .line 47
    aget-byte p0, p0, v1

    .line 48
    .line 49
    shr-int/lit8 p0, p0, 0x4

    .line 50
    .line 51
    and-int/lit8 p0, p0, 0xf

    .line 52
    .line 53
    or-int/2addr p0, p1

    .line 54
    int-to-byte p0, p0

    .line 55
    aput-byte p0, v0, v4

    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "f"

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    sub-int/2addr p1, v5

    .line 74
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_1
    return-object p0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x2

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    move v1, p1

    .line 9
    :goto_0
    add-int v2, p1, p2

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    aget-byte v2, p0, v1

    .line 14
    .line 15
    const/16 v3, 0xf

    .line 16
    .line 17
    and-int/2addr v2, v3

    .line 18
    const/16 v4, 0x9

    .line 19
    .line 20
    if-le v2, v4, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x30

    .line 24
    .line 25
    int-to-char v2, v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    aget-byte v2, p0, v1

    .line 30
    .line 31
    shr-int/lit8 v2, v2, 0x4

    .line 32
    .line 33
    and-int/2addr v2, v3

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-le v2, v4, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    add-int/lit8 v2, v2, 0x30

    .line 41
    .line 42
    int-to-char v2, v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static bchToString([BII)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x2

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    move v1, p1

    .line 9
    :goto_0
    add-int v2, p1, p2

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    aget-byte v2, p0, v1

    .line 14
    .line 15
    and-int/lit8 v2, v2, 0xf

    .line 16
    .line 17
    const-string v3, "0123456789abcdef"

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    aget-byte v2, p0, v1

    .line 27
    .line 28
    shr-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0xf

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private static bitToRGB(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p0, -0x1000000

    return p0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p0

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    aget-byte v2, p0, v1

    .line 18
    .line 19
    shr-int/lit8 v2, v2, 0x4

    .line 20
    .line 21
    and-int/lit8 v2, v2, 0xf

    .line 22
    .line 23
    const-string v3, "0123456789abcdef"

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    aget-byte v2, p0, v1

    .line 33
    .line 34
    and-int/lit8 v2, v2, 0xf

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 2

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x9

    if-gt p0, v1, :cond_1

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, p2, :cond_3

    .line 9
    .line 10
    aget-byte v3, p0, p1

    .line 11
    .line 12
    and-int/lit8 v3, v3, 0xf

    .line 13
    .line 14
    const/16 v4, 0x9

    .line 15
    .line 16
    if-le v3, v4, :cond_0

    .line 17
    .line 18
    move v3, v1

    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x30

    .line 20
    .line 21
    int-to-char v3, v3

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    if-ne v2, p2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    aget-byte v3, p0, p1

    .line 31
    .line 32
    shr-int/lit8 v3, v3, 0x4

    .line 33
    .line 34
    and-int/lit8 v3, v3, 0xf

    .line 35
    .line 36
    if-le v3, v4, :cond_2

    .line 37
    .line 38
    move v3, v1

    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x30

    .line 40
    .line 41
    int-to-char v3, v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private static getCLUT([BII)[I
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-array v0, p2, [I

    .line 6
    .line 7
    mul-int/lit8 p2, p2, 0x3

    .line 8
    .line 9
    add-int/2addr p2, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    add-int/lit8 v3, p1, 0x1

    .line 14
    .line 15
    aget-byte p1, p0, p1

    .line 16
    .line 17
    and-int/lit16 p1, p1, 0xff

    .line 18
    .line 19
    shl-int/lit8 p1, p1, 0x10

    .line 20
    .line 21
    const/high16 v4, -0x1000000

    .line 22
    .line 23
    or-int/2addr p1, v4

    .line 24
    add-int/lit8 v4, v3, 0x1

    .line 25
    .line 26
    aget-byte v3, p0, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x8

    .line 31
    .line 32
    or-int/2addr p1, v3

    .line 33
    add-int/lit8 v3, v4, 0x1

    .line 34
    .line 35
    aget-byte v4, p0, v4

    .line 36
    .line 37
    and-int/lit16 v4, v4, 0xff

    .line 38
    .line 39
    or-int/2addr p1, v4

    .line 40
    aput p1, v0, v1

    .line 41
    .line 42
    if-lt v3, p2, :cond_1

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    move v1, v2

    .line 46
    move p1, v3

    .line 47
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 2

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x9

    if-gt p0, v1, :cond_1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static hexCharToInt(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid hex char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    div-int/lit8 v1, v0, 0x2

    .line 10
    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    div-int/lit8 v3, v2, 0x2

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    shl-int/lit8 v4, v4, 0x4

    .line 27
    .line 28
    add-int/lit8 v5, v2, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    or-int/2addr v4, v5

    .line 39
    int-to-byte v4, v4

    .line 40
    aput-byte v4, v1, v3

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v1
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    rem-int v1, v0, p4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v0, "IccUtils"

    .line 8
    .line 9
    const-string v1, "not event number of color"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    if-eq p4, v1, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p4, v2, :cond_4

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-eq p4, v2, :cond_3

    .line 27
    .line 28
    if-eq p4, v0, :cond_2

    .line 29
    .line 30
    :cond_1
    move v2, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v2, 0xff

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/16 v2, 0xf

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    const/4 v2, 0x3

    .line 39
    :goto_0
    new-array v3, p2, [I

    .line 40
    .line 41
    div-int/2addr v0, p4

    .line 42
    const/4 v4, 0x0

    .line 43
    move v5, v4

    .line 44
    :goto_1
    if-ge v5, p2, :cond_6

    .line 45
    .line 46
    add-int/lit8 v6, p1, 0x1

    .line 47
    .line 48
    aget-byte p1, p0, p1

    .line 49
    .line 50
    move v7, v4

    .line 51
    :goto_2
    if-ge v7, v0, :cond_5

    .line 52
    .line 53
    sub-int v8, v0, v7

    .line 54
    .line 55
    sub-int/2addr v8, v1

    .line 56
    add-int/lit8 v9, v5, 0x1

    .line 57
    .line 58
    mul-int/2addr v8, p4

    .line 59
    shr-int v8, p1, v8

    .line 60
    .line 61
    and-int/2addr v8, v2

    .line 62
    aget v8, p3, v8

    .line 63
    .line 64
    aput v8, v3, v5

    .line 65
    .line 66
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    move v5, v9

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    move p1, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    return-object v3
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    rem-int/2addr v0, p4

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "IccUtils"

    .line 7
    .line 8
    const-string v1, "not odd number of color"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-array p0, p2, [I

    .line 19
    .line 20
    return-object p0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 4

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/16 v3, 0x80

    .line 8
    .line 9
    if-ne v1, v3, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ge p2, v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    ushr-int/lit8 v3, v0, 0x4

    .line 16
    .line 17
    and-int/lit8 v3, v3, 0x7

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    if-eq v3, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 25
    .line 26
    add-int/lit8 v3, p1, 0x1

    .line 27
    .line 28
    sub-int/2addr p2, v1

    .line 29
    const-string v1, "utf-16"

    .line 30
    .line 31
    invoke-direct {v0, p0, v3, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    move-object v2, v0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p2

    .line 37
    const-string v0, "IccUtils"

    .line 38
    .line 39
    const-string v1, "implausible UnsupportedEncodingException"

    .line 40
    .line 41
    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    and-int/lit8 v0, v0, 0x7

    .line 46
    .line 47
    sub-int/2addr p2, v1

    .line 48
    mul-int/lit8 p2, p2, 0x8

    .line 49
    .line 50
    sub-int/2addr p2, v0

    .line 51
    div-int/lit8 p2, p2, 0x7

    .line 52
    .line 53
    add-int/lit8 v0, p1, 0x1

    .line 54
    .line 55
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_0
    aget-byte p0, p0, p1

    .line 60
    .line 61
    :cond_3
    :goto_1
    return-object v2
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    const/4 p1, 0x0

    .line 2
    aget-byte v0, p0, p1

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget-byte v2, p0, v1

    .line 8
    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 10
    .line 11
    mul-int v3, v0, v2

    .line 12
    .line 13
    new-array v4, v3, [I

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x7

    .line 17
    move v7, v5

    .line 18
    move v8, v6

    .line 19
    move v5, p1

    .line 20
    :goto_0
    if-ge p1, v3, :cond_1

    .line 21
    .line 22
    rem-int/lit8 v9, p1, 0x8

    .line 23
    .line 24
    if-nez v9, :cond_0

    .line 25
    .line 26
    add-int/lit8 v5, v7, 0x1

    .line 27
    .line 28
    aget-byte v7, p0, v7

    .line 29
    .line 30
    move v8, v6

    .line 31
    move v11, v7

    .line 32
    move v7, v5

    .line 33
    move v5, v11

    .line 34
    :cond_0
    add-int/lit8 v9, p1, 0x1

    .line 35
    .line 36
    add-int/lit8 v10, v8, -0x1

    .line 37
    .line 38
    shr-int v8, v5, v8

    .line 39
    .line 40
    and-int/2addr v8, v1

    .line 41
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    aput v8, v4, p1

    .line 46
    .line 47
    move p1, v9

    .line 48
    move v8, v10

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eq p1, v3, :cond_2

    .line 51
    .line 52
    const-string p0, "IccUtils"

    .line 53
    .line 54
    const-string p1, "parse end and size error"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    invoke-static {v4, v0, v2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    aget-byte v0, p0, p1

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget-byte v2, p0, v1

    .line 8
    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    aget-byte v3, p0, v3

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    aget-byte v4, p0, v4

    .line 18
    .line 19
    and-int/lit16 v4, v4, 0xff

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    aget-byte v5, p0, v5

    .line 23
    .line 24
    and-int/lit16 v5, v5, 0xff

    .line 25
    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    shl-int/2addr v5, v6

    .line 29
    const/4 v7, 0x5

    .line 30
    aget-byte v7, p0, v7

    .line 31
    .line 32
    and-int/lit16 v7, v7, 0xff

    .line 33
    .line 34
    or-int/2addr v5, v7

    .line 35
    invoke-static {p0, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-ne v1, p2, :cond_0

    .line 40
    .line 41
    sub-int/2addr v4, v1

    .line 42
    aput p1, v5, v4

    .line 43
    .line 44
    :cond_0
    rem-int/2addr v6, v3

    .line 45
    const/4 p1, 0x6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    mul-int p2, v0, v2

    .line 49
    .line 50
    invoke-static {p0, p1, p2, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    mul-int p2, v0, v2

    .line 56
    .line 57
    invoke-static {p0, p1, p2, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 62
    .line 63
    invoke-static {p0, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static spdiPlmnBcdToString([BII)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 p2, p2, 0x2

    .line 4
    .line 5
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    aget-byte p2, p0, p1

    .line 9
    .line 10
    and-int/lit8 p2, p2, 0xf

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    if-le p2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    add-int/lit8 p2, p2, 0x30

    .line 22
    .line 23
    int-to-char p2, p2

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    aget-byte p2, p0, p1

    .line 28
    .line 29
    shr-int/lit8 p2, p2, 0x4

    .line 30
    .line 31
    and-int/lit8 p2, p2, 0xf

    .line 32
    .line 33
    if-le p2, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    add-int/lit8 p2, p2, 0x30

    .line 41
    .line 42
    int-to-char p2, p2

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    add-int/lit8 p2, p1, 0x1

    .line 47
    .line 48
    aget-byte v2, p0, p2

    .line 49
    .line 50
    and-int/lit8 v2, v2, 0xf

    .line 51
    .line 52
    if-le v2, v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x30

    .line 60
    .line 61
    int-to-char v2, v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x2

    .line 66
    .line 67
    aget-byte v2, p0, p1

    .line 68
    .line 69
    and-int/lit8 v2, v2, 0xf

    .line 70
    .line 71
    if-le v2, v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_3
    add-int/lit8 v2, v2, 0x30

    .line 79
    .line 80
    int-to-char v2, v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    aget-byte p1, p0, p1

    .line 85
    .line 86
    shr-int/lit8 p1, p1, 0x4

    .line 87
    .line 88
    and-int/lit8 p1, p1, 0xf

    .line 89
    .line 90
    if-le p1, v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_4
    add-int/lit8 p1, p1, 0x30

    .line 98
    .line 99
    int-to-char p1, p1

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    aget-byte p0, p0, p2

    .line 104
    .line 105
    shr-int/lit8 p0, p0, 0x4

    .line 106
    .line 107
    and-int/lit8 p0, p0, 0xf

    .line 108
    .line 109
    if-le p0, v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_5
    add-int/lit8 p0, p0, 0x30

    .line 117
    .line 118
    int-to-char p0, p0

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method
