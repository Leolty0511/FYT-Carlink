.class public Landroid/content/pm/PackageParserExUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParserUtils"

.field private static mResult:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageParserExUtils;->asynccollectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Landroid/content/pm/PackageParserExUtils;->mResult:Z

    return p0
.end method

.method private static asynccollectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Landroid/util/jar/StrictJarFile;",
            "II)Z"
        }
    .end annotation

    .line 1
    :goto_0
    if-gt p3, p4, :cond_4

    .line 2
    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "META-INF/"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-static {p2, v0}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    invoke-static {v0}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 46
    .line 47
    invoke-static {v2, v0}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    return v1

    .line 58
    :cond_4
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public static collectNonSystemAppCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;Ljava/io/File;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v11

    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Landroid/content/pm/PackageParserExUtils;->mResult:Z

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "collectCertificates length = "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v12, "PackageParserUtils"

    .line 29
    .line 30
    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 34
    .line 35
    const-string v13, " has no certificates "

    .line 36
    .line 37
    const-string v14, "Package "

    .line 38
    .line 39
    const/16 v15, -0x67

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, v11, -0x1

    .line 45
    .line 46
    invoke-static {v8, v9, v10, v2, v1}, Landroid/content/pm/PackageParserExUtils;->initPkgCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v3, -0x1

    .line 51
    if-eq v1, v3, :cond_1

    .line 52
    .line 53
    if-ne v11, v1, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    move v7, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v15, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_2
    move v7, v2

    .line 84
    :goto_0
    const/16 v1, 0x64

    .line 85
    .line 86
    if-ge v11, v1, :cond_4

    .line 87
    .line 88
    sub-int/2addr v11, v0

    .line 89
    invoke-static {v8, v9, v10, v7, v11}, Landroid/content/pm/PackageParserExUtils;->asynccollectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v15, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_4
    const-string/jumbo v1, "sys.sprd.pkgverify.threadnum"

    .line 122
    .line 123
    .line 124
    const/4 v3, 0x4

    .line 125
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    .line 130
    .line 131
    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 132
    .line 133
    .line 134
    sub-int v1, v11, v7

    .line 135
    .line 136
    div-int v16, v1, v6

    .line 137
    .line 138
    move v4, v2

    .line 139
    :goto_1
    if-ge v4, v6, :cond_6

    .line 140
    .line 141
    mul-int v1, v4, v16

    .line 142
    .line 143
    add-int v17, v1, v7

    .line 144
    .line 145
    add-int/lit8 v1, v6, -0x1

    .line 146
    .line 147
    if-eq v4, v1, :cond_5

    .line 148
    .line 149
    add-int v1, v17, v16

    .line 150
    .line 151
    sub-int/2addr v1, v0

    .line 152
    move/from16 v18, v1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    add-int/lit8 v0, v11, -0x1

    .line 156
    .line 157
    move/from16 v18, v0

    .line 158
    .line 159
    :goto_2
    new-instance v19, Landroid/content/pm/PackageParserExUtils$1;

    .line 160
    .line 161
    const-string v0, "asynccollectCertificates"

    .line 162
    .line 163
    invoke-static {v0, v4}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    move-object/from16 v0, v19

    .line 168
    .line 169
    move-object/from16 v2, p0

    .line 170
    .line 171
    move-object/from16 v3, p1

    .line 172
    .line 173
    move/from16 v20, v4

    .line 174
    .line 175
    move-object/from16 v4, p2

    .line 176
    .line 177
    move-object/from16 v21, v5

    .line 178
    .line 179
    move/from16 v5, v17

    .line 180
    .line 181
    move/from16 v17, v6

    .line 182
    .line 183
    move/from16 v6, v18

    .line 184
    .line 185
    move/from16 v18, v7

    .line 186
    .line 187
    move-object/from16 v7, v21

    .line 188
    .line 189
    invoke-direct/range {v0 .. v7}, Landroid/content/pm/PackageParserExUtils$1;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;IILjava/util/concurrent/CountDownLatch;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v4, v20, 0x1

    .line 196
    .line 197
    const/4 v0, 0x1

    .line 198
    move/from16 v6, v17

    .line 199
    .line 200
    move/from16 v7, v18

    .line 201
    .line 202
    move-object/from16 v5, v21

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_6
    move-object/from16 v21, v5

    .line 206
    .line 207
    invoke-static/range {v21 .. v21}, Landroid/content/pm/PackageParserExUtils;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 208
    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v1, "mResult = "

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    sget-boolean v1, Landroid/content/pm/PackageParserExUtils;->mResult:Z

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    sget-boolean v0, Landroid/content/pm/PackageParserExUtils;->mResult:Z

    .line 231
    .line 232
    if-eqz v0, :cond_7

    .line 233
    .line 234
    return-void

    .line 235
    :cond_7
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v15, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0
.end method

.method private static initPkgCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Landroid/util/jar/StrictJarFile;",
            "II)I"
        }
    .end annotation

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    if-gt p3, p4, :cond_4

    .line 3
    .line 4
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "META-INF/"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    invoke-static {p2, v1}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 48
    .line 49
    iput-object p2, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 50
    .line 51
    new-instance p2, Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    move p4, p2

    .line 60
    :goto_2
    array-length v1, p1

    .line 61
    if-ge p4, v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 64
    .line 65
    aget-object v2, p1, p4

    .line 66
    .line 67
    aget-object v2, v2, p2

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    add-int/lit8 p4, p4, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 80
    .line 81
    return p3

    .line 82
    :catch_0
    :cond_4
    return v0
.end method

.method private static waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 1
    const-string v0, "PackageParserUtils"

    .line 2
    .line 3
    :goto_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/32 v2, 0x7a120

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "waitForLatch done!"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "Thread "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " still waiting for asynccollectCertificates ready..."

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const-string v1, "Interrupt while waiting for asynccollectCertificates to be ready."

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0
.end method
