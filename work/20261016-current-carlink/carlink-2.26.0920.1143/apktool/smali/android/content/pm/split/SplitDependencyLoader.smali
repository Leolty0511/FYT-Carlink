.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 5
    .line 6
    return-void
.end method

.method private static append([II)[I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-array p0, v0, [I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aput p1, p0, v0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    array-length v1, p0

    .line 11
    add-int/2addr v1, v0

    .line 12
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length p0, p0

    .line 17
    aput p1, v0, p0

    .line 18
    .line 19
    return-object v0
.end method

.method private collectConfigSplitIndices(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [I

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x1

    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v0, p1

    .line 17
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    :goto_0
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    .line 23
    .line 24
    return-object p1
.end method

.method public static createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, -0x1

    .line 11
    aput v4, v2, v3

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    move v2, v3

    .line 17
    :goto_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 18
    .line 19
    array-length v6, v5

    .line 20
    const-string v7, "\', which is missing."

    .line 21
    .line 22
    const-string v8, "Split \'"

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    if-ge v2, v6, :cond_3

    .line 26
    .line 27
    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    .line 28
    .line 29
    aget-boolean v6, v6, v2

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object v6, v6, v2

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ltz v5, :cond_1

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 57
    .line 58
    aget-object p0, p0, v2

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, "\' requires split \'"

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v0, p0, v9}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    move v5, v3

    .line 83
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .line 84
    .line 85
    new-array v7, v1, [I

    .line 86
    .line 87
    aput v5, v7, v3

    .line 88
    .line 89
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move v1, v3

    .line 96
    :goto_3
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 97
    .line 98
    array-length v5, v2

    .line 99
    if-ge v1, v5, :cond_8

    .line 100
    .line 101
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    .line 102
    .line 103
    aget-boolean v5, v5, v1

    .line 104
    .line 105
    if-eqz v5, :cond_4

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_4
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    .line 109
    .line 110
    aget-object v5, v5, v1

    .line 111
    .line 112
    if-eqz v5, :cond_7

    .line 113
    .line 114
    invoke-static {v2, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-ltz v2, :cond_6

    .line 119
    .line 120
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    .line 121
    .line 122
    aget-boolean v5, v5, v2

    .line 123
    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    new-instance v0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    .line 130
    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 137
    .line 138
    aget-object v1, v4, v1

    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, "\' declares itself as configuration split for a non-feature split \'"

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 149
    .line 150
    aget-object p0, p0, v2

    .line 151
    .line 152
    const-string v1, "\'"

    .line 153
    .line 154
    invoke-static {v3, p0, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-direct {v0, p0, v9}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_6
    new-instance v0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 170
    .line 171
    aget-object p0, p0, v1

    .line 172
    .line 173
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p0, "\' targets split \'"

    .line 177
    .line 178
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-direct {v0, p0, v9}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_7
    move v2, v3

    .line 196
    :goto_4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, [I

    .line 201
    .line 202
    add-int/lit8 v6, v1, 0x1

    .line 203
    .line 204
    invoke-static {v5, v6}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_8
    new-instance p0, Ljava/util/BitSet;

    .line 215
    .line 216
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    move v2, v3

    .line 224
    :goto_6
    if-ge v2, v1, :cond_c

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 231
    .line 232
    .line 233
    :goto_7
    if-eq v5, v4, :cond_b

    .line 234
    .line 235
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-nez v6, :cond_a

    .line 240
    .line 241
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->set(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, [I

    .line 249
    .line 250
    if-eqz v5, :cond_9

    .line 251
    .line 252
    aget v5, v5, v3

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_9
    move v5, v4

    .line 256
    goto :goto_7

    .line 257
    :cond_a
    new-instance p0, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    .line 258
    .line 259
    const-string v0, "Cycle detected in split dependencies."

    .line 260
    .line 261
    invoke-direct {p0, v0, v9}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    .line 262
    .line 263
    .line 264
    throw p0

    .line 265
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_c
    return-object v0
.end method


# virtual methods
.method public abstract constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation
.end method

.method public abstract isSplitCached(I)Z
.end method

.method public loadDependenciesForSplit(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, v1}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v2, Landroid/util/IntArray;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v3, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [I

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    array-length v3, p1

    .line 39
    if-lez v3, :cond_2

    .line 40
    .line 41
    aget p1, p1, v1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move p1, v0

    .line 45
    :goto_1
    if-ltz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    :goto_3
    if-ltz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-direct {p0, v1}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p0, v1, v3, p1}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 78
    .line 79
    move p1, v1

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    return-void
.end method
