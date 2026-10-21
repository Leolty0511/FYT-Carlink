.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;,
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/emoji2/text/e;->t(Landroid/icu/util/ULocale;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/net/lowpan/b;->j(Landroid/icu/util/ULocale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_4

    .line 18
    .line 19
    invoke-static {p1}, Landroid/net/lowpan/b;->j(Landroid/icu/util/ULocale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p0}, Landroidx/emoji2/text/e;->g(Landroid/icu/util/ULocale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    invoke-static {p1}, Landroidx/emoji2/text/e;->g(Landroid/icu/util/ULocale;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return v1

    .line 52
    :cond_3
    :goto_0
    const/4 p0, 0x2

    .line 53
    return p0

    .line 54
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 55
    return p0
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<",
            "TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-array v3, v1, [B

    .line 20
    .line 21
    new-array v4, v1, [Landroid/icu/util/ULocale;

    .line 22
    .line 23
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    move v7, v6

    .line 29
    :goto_0
    if-ge v7, v5, :cond_8

    .line 30
    .line 31
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    move-object/from16 v9, p1

    .line 36
    .line 37
    invoke-interface {v9, v8}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    if-nez v8, :cond_1

    .line 42
    .line 43
    move-object/from16 v12, p2

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    const/4 v10, 0x1

    .line 47
    move v11, v6

    .line 48
    :goto_1
    if-ge v11, v1, :cond_5

    .line 49
    .line 50
    move-object/from16 v12, p2

    .line 51
    .line 52
    invoke-virtual {v12, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v14

    .line 60
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    if-nez v14, :cond_2

    .line 69
    .line 70
    aput-byte v6, v3, v11

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    aget-object v14, v4, v11

    .line 74
    .line 75
    if-nez v14, :cond_3

    .line 76
    .line 77
    invoke-static {v13}, Landroid/net/lowpan/b;->d(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-static {v13}, Landroid/net/lowpan/b;->c(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    aput-object v13, v4, v11

    .line 86
    .line 87
    :cond_3
    aget-object v13, v4, v11

    .line 88
    .line 89
    invoke-static {v8}, Landroid/net/lowpan/b;->d(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-static {v14}, Landroid/net/lowpan/b;->c(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-static {v13, v14}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    aput-byte v13, v3, v11

    .line 102
    .line 103
    if-eqz v10, :cond_4

    .line 104
    .line 105
    if-eqz v13, :cond_4

    .line 106
    .line 107
    move v10, v6

    .line 108
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    move-object/from16 v12, p2

    .line 112
    .line 113
    if-eqz v10, :cond_6

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 125
    .line 126
    if-nez v10, :cond_7

    .line 127
    .line 128
    new-instance v10, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 129
    .line 130
    invoke-direct {v10, v3, v7}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    invoke-virtual {v10, v3, v7}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    .line 138
    .line 139
    .line 140
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    new-array v2, v2, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 152
    .line 153
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 158
    .line 159
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    array-length v2, v1

    .line 163
    :goto_4
    if-ge v6, v2, :cond_9

    .line 164
    .line 165
    aget-object v3, v1, v6

    .line 166
    .line 167
    iget v3, v3, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 168
    .line 169
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    move-object/from16 v4, p3

    .line 174
    .line 175
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    add-int/lit8 v6, v6, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_9
    return-void
.end method
