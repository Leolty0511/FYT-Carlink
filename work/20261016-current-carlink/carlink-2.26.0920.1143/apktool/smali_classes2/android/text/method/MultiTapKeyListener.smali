.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "SourceFile"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoText:Z

.field private mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    .line 9
    .line 10
    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    const-string v2, ".,1!@#$%^&*:/?\'=()"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    const-string v2, "abc2ABC"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    const-string v2, "def3DEF"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0xb

    .line 41
    .line 42
    const-string v2, "ghi4GHI"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/16 v1, 0xc

    .line 48
    .line 49
    const-string v2, "jkl5JKL"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0xd

    .line 55
    .line 56
    const-string v2, "mno6MNO"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0xe

    .line 62
    .line 63
    const-string v2, "pqrs7PQRS"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0xf

    .line 69
    .line 70
    const-string/jumbo v2, "tuv8TUV"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x10

    .line 77
    .line 78
    const-string/jumbo v2, "wxyz9WXYZ"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x7

    .line 85
    const-string v2, "0+"

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0x12

    .line 91
    .line 92
    const-string v2, " "

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 9
    .line 10
    aget-object v2, v1, v0

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    .line 15
    .line 16
    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 17
    .line 18
    .line 19
    aput-object v2, v1, v0

    .line 20
    .line 21
    :cond_0
    sget-object p0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 22
    .line 23
    aget-object p0, p0, v0

    .line 24
    .line 25
    return-object p0
.end method

.method private static removeTimeouts(Landroid/text/Spannable;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 13
    .line 14
    :goto_0
    array-length v1, v0

    .line 15
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v1, v0, v2

    .line 18
    .line 19
    invoke-virtual {v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v1, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->access$002(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/BaseKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v8

    .line 22
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sget-object v4, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {p2, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-interface {p2, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-interface {p2, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/high16 v10, -0x1000000

    .line 53
    .line 54
    and-int/2addr v4, v10

    .line 55
    ushr-int/lit8 v4, v4, 0x18

    .line 56
    .line 57
    const/16 v10, 0x11

    .line 58
    .line 59
    const/4 v11, 0x1

    .line 60
    if-ne v6, v5, :cond_4

    .line 61
    .line 62
    if-ne v9, v3, :cond_4

    .line 63
    .line 64
    sub-int v6, v3, v5

    .line 65
    .line 66
    if-ne v6, v11, :cond_4

    .line 67
    .line 68
    if-ltz v4, :cond_4

    .line 69
    .line 70
    sget-object v6, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-ge v4, v9, :cond_4

    .line 77
    .line 78
    if-ne v1, v10, :cond_2

    .line 79
    .line 80
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_1

    .line 89
    .line 90
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {p2, v5, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 105
    .line 106
    invoke-direct {v1, p0, p2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 107
    .line 108
    .line 109
    return v11

    .line 110
    :cond_1
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_2

    .line 115
    .line 116
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {p2, v5, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 131
    .line 132
    invoke-direct {v1, p0, p2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 133
    .line 134
    .line 135
    return v11

    .line 136
    :cond_2
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-ne v9, v4, :cond_3

    .line 141
    .line 142
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-ltz v9, :cond_3

    .line 157
    .line 158
    add-int/2addr v9, v11

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    rem-int v6, v9, v1

    .line 164
    .line 165
    add-int/lit8 v8, v6, 0x1

    .line 166
    .line 167
    move-object v1, p2

    .line 168
    move v2, v5

    .line 169
    move v5, v6

    .line 170
    move v6, v8

    .line 171
    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 172
    .line 173
    .line 174
    invoke-static {p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 178
    .line 179
    invoke-direct {v1, p0, p2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 180
    .line 181
    .line 182
    return v11

    .line 183
    :cond_3
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-ltz v4, :cond_5

    .line 188
    .line 189
    invoke-static {p2, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 190
    .line 191
    .line 192
    move v5, v3

    .line 193
    goto :goto_1

    .line 194
    :cond_4
    sget-object v4, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 195
    .line 196
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    :cond_5
    :goto_1
    move v9, v4

    .line 201
    if-ltz v9, :cond_c

    .line 202
    .line 203
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    move-object v4, v1

    .line 210
    check-cast v4, Ljava/lang/String;

    .line 211
    .line 212
    and-int/lit8 v1, v2, 0x1

    .line 213
    .line 214
    if-eqz v1, :cond_7

    .line 215
    .line 216
    iget-object v1, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 217
    .line 218
    invoke-static {v1, p2, v5}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_7

    .line 223
    .line 224
    move v1, v8

    .line 225
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-ge v1, v2, :cond_7

    .line 230
    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_6

    .line 240
    .line 241
    move v6, v1

    .line 242
    goto :goto_3

    .line 243
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_7
    move v6, v8

    .line 247
    :goto_3
    if-eq v5, v3, :cond_8

    .line 248
    .line 249
    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 250
    .line 251
    .line 252
    :cond_8
    sget-object v12, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 253
    .line 254
    invoke-interface {p2, v12, v5, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 255
    .line 256
    .line 257
    add-int/lit8 v10, v6, 0x1

    .line 258
    .line 259
    move-object v1, p2

    .line 260
    move v2, v5

    .line 261
    move v5, v6

    .line 262
    move v6, v10

    .line 263
    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 264
    .line 265
    .line 266
    invoke-interface {p2, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eq v2, v1, :cond_9

    .line 275
    .line 276
    invoke-static {p2, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 277
    .line 278
    .line 279
    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    .line 280
    .line 281
    const/16 v4, 0x21

    .line 282
    .line 283
    invoke-interface {p2, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 284
    .line 285
    .line 286
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 287
    .line 288
    shl-int/lit8 v5, v9, 0x18

    .line 289
    .line 290
    or-int/2addr v4, v5

    .line 291
    invoke-interface {p2, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 292
    .line 293
    .line 294
    :cond_9
    invoke-static {p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 295
    .line 296
    .line 297
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 298
    .line 299
    invoke-direct {v1, p0, p2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {p2, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-gez v1, :cond_b

    .line 307
    .line 308
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const-class v2, Landroid/text/method/KeyListener;

    .line 313
    .line 314
    invoke-interface {p2, v8, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, [Landroid/text/method/KeyListener;

    .line 319
    .line 320
    array-length v2, v1

    .line 321
    move v3, v8

    .line 322
    :goto_4
    if-ge v3, v2, :cond_a

    .line 323
    .line 324
    aget-object v4, v1, v3

    .line 325
    .line 326
    invoke-interface {p2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_a
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    const/16 v2, 0x12

    .line 337
    .line 338
    invoke-interface {p2, p0, v8, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 339
    .line 340
    .line 341
    :cond_b
    return v11

    .line 342
    :cond_c
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    .line 1
    sget-object p3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p2, p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method
