.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 13
    .line 14
    iput v1, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 15
    .line 16
    iput v1, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 17
    .line 18
    iput v1, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 19
    .line 20
    iput v1, p0, Landroid/media/TimedText;->mWrapText:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 24
    .line 25
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 26
    .line 27
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 28
    .line 29
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 30
    .line 31
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 32
    .line 33
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 34
    .line 35
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string/jumbo v0, "parseParcel() fails"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method private containsKey(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v1, "Invalid key: "

    .line 21
    .line 22
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method private isValidKey(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x10

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_2

    const/16 v1, 0x6b

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x66

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const-string v4, "Invalid timed text key found: "

    .line 20
    .line 21
    const-string v5, "TimedText"

    .line 22
    .line 23
    if-ne v1, v2, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x7

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/16 v2, 0x10

    .line 55
    .line 56
    if-eq v1, v2, :cond_2

    .line 57
    .line 58
    return v0

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    array-length v2, v1

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_0
    iput-object v3, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const/16 v2, 0x65

    .line 84
    .line 85
    if-eq v1, v2, :cond_6

    .line 86
    .line 87
    invoke-static {v4, v1, v5}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-lez v1, :cond_9

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-direct {p0, v1}, Landroid/media/TimedText;->isValidKey(I)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_7

    .line 106
    .line 107
    invoke-static {v4, v1, v5}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v0

    .line 111
    :cond_7
    packed-switch v1, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    :pswitch_0
    goto/16 :goto_2

    .line 115
    .line 116
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    new-instance v7, Landroid/media/TimedText$Justification;

    .line 125
    .line 126
    invoke-direct {v7, v2, v6}, Landroid/media/TimedText$Justification;-><init>(II)V

    .line 127
    .line 128
    .line 129
    iput-object v7, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    new-instance v9, Landroid/graphics/Rect;

    .line 150
    .line 151
    invoke-direct {v9, v6, v2, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .line 153
    .line 154
    iput-object v9, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 158
    .line 159
    .line 160
    iget-object v7, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 164
    .line 165
    .line 166
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 170
    .line 171
    .line 172
    iget-object v7, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 176
    .line 177
    .line 178
    iget-object v7, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 182
    .line 183
    .line 184
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 188
    .line 189
    .line 190
    iget-object v7, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    goto :goto_3

    .line 204
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 209
    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    goto :goto_3

    .line 215
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    goto :goto_3

    .line 226
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 231
    .line 232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    goto :goto_3

    .line 237
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 242
    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    goto :goto_3

    .line 248
    :goto_2
    move-object v7, v3

    .line 249
    :goto_3
    if-eqz v7, :cond_6

    .line 250
    .line 251
    iget-object v2, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 252
    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_8

    .line 262
    .line 263
    iget-object v2, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    :cond_8
    iget-object v2, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :cond_9
    const/4 p1, 0x1

    .line 284
    return p1

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v1, Landroid/media/TimedText$CharPos;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    new-instance v6, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v6, v5, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroid/media/TimedText$Font;

    .line 27
    .line 28
    invoke-direct {v4, v3, v6}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 41
    .line 42
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v1, Landroid/media/TimedText$CharPos;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v3, p1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Landroid/media/TimedText$HyperText;

    .line 37
    .line 38
    invoke-direct {p1, v0, v1, v4, v3}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    new-instance v6, Landroid/media/TimedText$Karaoke;

    .line 25
    .line 26
    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 39
    .line 40
    :cond_0
    iget-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    move v6, v0

    .line 4
    move v7, v6

    .line 5
    move v8, v7

    .line 6
    move v3, v1

    .line 7
    move v4, v3

    .line 8
    move v5, v4

    .line 9
    move v9, v5

    .line 10
    move v10, v9

    .line 11
    move v1, v8

    .line 12
    :goto_0
    if-nez v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_4

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v11, 0x2

    .line 25
    const/4 v12, 0x1

    .line 26
    if-eq v2, v11, :cond_0

    .line 27
    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/lit8 v1, v1, -0x4

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    .line 39
    .line 40
    move v1, v12

    .line 41
    goto :goto_0

    .line 42
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v10, v2

    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    move v9, v2

    .line 53
    goto :goto_0

    .line 54
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    move v5, v2

    .line 59
    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    move v4, v2

    .line 65
    goto :goto_0

    .line 66
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    move v3, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    rem-int/lit8 v6, v2, 0x2

    .line 77
    .line 78
    if-ne v6, v12, :cond_1

    .line 79
    .line 80
    move v6, v12

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move v6, v0

    .line 83
    :goto_1
    rem-int/lit8 v7, v2, 0x4

    .line 84
    .line 85
    if-lt v7, v11, :cond_2

    .line 86
    .line 87
    move v7, v12

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v7, v0

    .line 90
    :goto_2
    div-int/lit8 v2, v2, 0x4

    .line 91
    .line 92
    if-ne v2, v12, :cond_3

    .line 93
    .line 94
    move v8, v12

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move v8, v0

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    new-instance p1, Landroid/media/TimedText$Style;

    .line 99
    .line 100
    move-object v2, p1

    .line 101
    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 105
    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 114
    .line 115
    :cond_5
    iget-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
