.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "\u266b"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 13
    .line 14
    new-instance v0, Landroid/media/Cea708CCParser$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 10
    .line 11
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private parseC0([BI)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    if-gt v0, v2, :cond_2

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :try_start_0
    aget-byte v0, p1, p2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 18
    .line 19
    add-int/lit8 v1, p2, 0x1

    .line 20
    .line 21
    aget-byte p1, p1, v1

    .line 22
    .line 23
    int-to-char p1, p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 29
    .line 30
    add-int/lit8 v1, p2, 0x2

    .line 31
    .line 32
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "EUC-KR"

    .line 37
    .line 38
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const-string v0, "Cea708CCParser"

    .line 49
    .line 50
    const-string v1, "P16 Code - Could not find supported encoding"

    .line 51
    .line 52
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/16 p1, 0x10

    .line 59
    .line 60
    if-lt v0, p1, :cond_3

    .line 61
    .line 62
    const/16 p1, 0x17

    .line 63
    .line 64
    if-gt v0, p1, :cond_3

    .line 65
    .line 66
    add-int/lit8 p2, p2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 p1, 0x3

    .line 70
    const/4 v1, 0x2

    .line 71
    if-eq v0, p1, :cond_5

    .line 72
    .line 73
    const/16 p1, 0x8

    .line 74
    .line 75
    if-eq v0, p1, :cond_4

    .line 76
    .line 77
    packed-switch v0, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 82
    .line 83
    int-to-char v0, v0

    .line 84
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_1
    iget-object p1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 96
    .line 97
    const/16 v0, 0xa

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_2
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 104
    .line 105
    int-to-char v0, v0

    .line 106
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 118
    .line 119
    int-to-char v0, v0

    .line 120
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 132
    .line 133
    int-to-char v0, v0

    .line 134
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    return p2

    .line 145
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseC1([BI)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xf

    .line 7
    .line 8
    const/4 v4, 0x5

    .line 9
    const/4 v5, 0x7

    .line 10
    const/4 v6, 0x6

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x4

    .line 13
    const/4 v9, 0x3

    .line 14
    const/4 v10, 0x1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    goto/16 :goto_8

    .line 19
    .line 20
    :pswitch_1
    add-int/lit16 v12, v1, -0x98

    .line 21
    .line 22
    aget-byte v1, p1, p2

    .line 23
    .line 24
    and-int/lit8 v2, v1, 0x20

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v13, v10

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v13, v7

    .line 31
    :goto_0
    and-int/lit8 v2, v1, 0x10

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move v14, v10

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v14, v7

    .line 38
    :goto_1
    and-int/lit8 v2, v1, 0x8

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    move v15, v10

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v15, v7

    .line 45
    :goto_2
    and-int/lit8 v16, v1, 0x7

    .line 46
    .line 47
    add-int/lit8 v1, p2, 0x1

    .line 48
    .line 49
    aget-byte v1, p1, v1

    .line 50
    .line 51
    and-int/lit16 v2, v1, 0x80

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    move/from16 v17, v10

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move/from16 v17, v7

    .line 59
    .line 60
    :goto_3
    and-int/lit8 v18, v1, 0x7f

    .line 61
    .line 62
    add-int/lit8 v1, p2, 0x2

    .line 63
    .line 64
    aget-byte v1, p1, v1

    .line 65
    .line 66
    and-int/lit16 v1, v1, 0xff

    .line 67
    .line 68
    add-int/lit8 v2, p2, 0x3

    .line 69
    .line 70
    aget-byte v2, p1, v2

    .line 71
    .line 72
    and-int/lit16 v4, v2, 0xf0

    .line 73
    .line 74
    shr-int/lit8 v20, v4, 0x4

    .line 75
    .line 76
    and-int/lit8 v21, v2, 0xf

    .line 77
    .line 78
    add-int/lit8 v2, p2, 0x4

    .line 79
    .line 80
    aget-byte v2, p1, v2

    .line 81
    .line 82
    and-int/lit8 v22, v2, 0x3f

    .line 83
    .line 84
    add-int/lit8 v2, p2, 0x5

    .line 85
    .line 86
    aget-byte v2, p1, v2

    .line 87
    .line 88
    and-int/lit8 v3, v2, 0x38

    .line 89
    .line 90
    shr-int/lit8 v24, v3, 0x3

    .line 91
    .line 92
    and-int/lit8 v23, v2, 0x7

    .line 93
    .line 94
    add-int/lit8 v2, p2, 0x6

    .line 95
    .line 96
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 97
    .line 98
    new-instance v4, Landroid/media/Cea708CCParser$CaptionWindow;

    .line 99
    .line 100
    move-object v11, v4

    .line 101
    move/from16 v19, v1

    .line 102
    .line 103
    invoke-direct/range {v11 .. v24}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x10

    .line 107
    .line 108
    invoke-direct {v3, v1, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :pswitch_2
    aget-byte v1, p1, p2

    .line 117
    .line 118
    and-int/lit16 v2, v1, 0xc0

    .line 119
    .line 120
    shr-int/2addr v2, v6

    .line 121
    and-int/lit8 v5, v1, 0x30

    .line 122
    .line 123
    shr-int/2addr v5, v8

    .line 124
    and-int/lit8 v11, v1, 0xc

    .line 125
    .line 126
    shr-int/lit8 v11, v11, 0x2

    .line 127
    .line 128
    and-int/2addr v1, v9

    .line 129
    new-instance v13, Landroid/media/Cea708CCParser$CaptionColor;

    .line 130
    .line 131
    invoke-direct {v13, v2, v5, v11, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v1, p2, 0x1

    .line 135
    .line 136
    aget-byte v1, p1, v1

    .line 137
    .line 138
    and-int/lit16 v2, v1, 0xc0

    .line 139
    .line 140
    shr-int/2addr v2, v6

    .line 141
    add-int/lit8 v5, p2, 0x2

    .line 142
    .line 143
    aget-byte v6, p1, v5

    .line 144
    .line 145
    and-int/lit16 v6, v6, 0x80

    .line 146
    .line 147
    shr-int/lit8 v4, v6, 0x5

    .line 148
    .line 149
    or-int v15, v2, v4

    .line 150
    .line 151
    and-int/lit8 v2, v1, 0x30

    .line 152
    .line 153
    shr-int/2addr v2, v8

    .line 154
    and-int/lit8 v4, v1, 0xc

    .line 155
    .line 156
    shr-int/lit8 v4, v4, 0x2

    .line 157
    .line 158
    and-int/2addr v1, v9

    .line 159
    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    .line 160
    .line 161
    invoke-direct {v14, v7, v2, v4, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 162
    .line 163
    .line 164
    aget-byte v1, p1, v5

    .line 165
    .line 166
    and-int/lit8 v2, v1, 0x40

    .line 167
    .line 168
    if-eqz v2, :cond_4

    .line 169
    .line 170
    move/from16 v16, v10

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_4
    move/from16 v16, v7

    .line 174
    .line 175
    :goto_4
    and-int/lit8 v2, v1, 0x30

    .line 176
    .line 177
    shr-int/lit8 v17, v2, 0x4

    .line 178
    .line 179
    and-int/lit8 v2, v1, 0xc

    .line 180
    .line 181
    shr-int/lit8 v18, v2, 0x2

    .line 182
    .line 183
    and-int/lit8 v19, v1, 0x3

    .line 184
    .line 185
    add-int/lit8 v1, p2, 0x3

    .line 186
    .line 187
    aget-byte v1, p1, v1

    .line 188
    .line 189
    and-int/lit16 v2, v1, 0xf0

    .line 190
    .line 191
    shr-int/lit8 v21, v2, 0x4

    .line 192
    .line 193
    and-int/lit8 v2, v1, 0xc

    .line 194
    .line 195
    shr-int/lit8 v20, v2, 0x2

    .line 196
    .line 197
    and-int/lit8 v22, v1, 0x3

    .line 198
    .line 199
    add-int/lit8 v1, p2, 0x4

    .line 200
    .line 201
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 202
    .line 203
    new-instance v4, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    .line 204
    .line 205
    move-object v12, v4

    .line 206
    invoke-direct/range {v12 .. v22}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :pswitch_3
    aget-byte v1, p1, p2

    .line 217
    .line 218
    and-int/2addr v1, v3

    .line 219
    add-int/lit8 v2, p2, 0x1

    .line 220
    .line 221
    aget-byte v2, p1, v2

    .line 222
    .line 223
    and-int/lit8 v2, v2, 0x3f

    .line 224
    .line 225
    add-int/lit8 v3, p2, 0x2

    .line 226
    .line 227
    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 228
    .line 229
    new-instance v5, Landroid/media/Cea708CCParser$CaptionPenLocation;

    .line 230
    .line 231
    invoke-direct {v5, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    .line 232
    .line 233
    .line 234
    const/16 v1, 0xe

    .line 235
    .line 236
    invoke-direct {v4, v1, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 240
    .line 241
    .line 242
    move v2, v3

    .line 243
    goto/16 :goto_9

    .line 244
    .line 245
    :pswitch_4
    aget-byte v1, p1, p2

    .line 246
    .line 247
    and-int/lit16 v2, v1, 0xc0

    .line 248
    .line 249
    shr-int/2addr v2, v6

    .line 250
    and-int/lit8 v3, v1, 0x30

    .line 251
    .line 252
    shr-int/2addr v3, v8

    .line 253
    and-int/lit8 v4, v1, 0xc

    .line 254
    .line 255
    shr-int/lit8 v4, v4, 0x2

    .line 256
    .line 257
    and-int/2addr v1, v9

    .line 258
    new-instance v5, Landroid/media/Cea708CCParser$CaptionColor;

    .line 259
    .line 260
    invoke-direct {v5, v2, v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v1, p2, 0x1

    .line 264
    .line 265
    aget-byte v2, p1, v1

    .line 266
    .line 267
    and-int/lit16 v3, v2, 0xc0

    .line 268
    .line 269
    shr-int/2addr v3, v6

    .line 270
    and-int/lit8 v4, v2, 0x30

    .line 271
    .line 272
    shr-int/2addr v4, v8

    .line 273
    and-int/lit8 v6, v2, 0xc

    .line 274
    .line 275
    shr-int/lit8 v6, v6, 0x2

    .line 276
    .line 277
    and-int/2addr v2, v9

    .line 278
    new-instance v11, Landroid/media/Cea708CCParser$CaptionColor;

    .line 279
    .line 280
    invoke-direct {v11, v3, v4, v6, v2}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 281
    .line 282
    .line 283
    add-int/2addr v1, v10

    .line 284
    aget-byte v2, p1, v1

    .line 285
    .line 286
    and-int/lit8 v3, v2, 0x30

    .line 287
    .line 288
    shr-int/2addr v3, v8

    .line 289
    and-int/lit8 v4, v2, 0xc

    .line 290
    .line 291
    shr-int/lit8 v4, v4, 0x2

    .line 292
    .line 293
    and-int/2addr v2, v9

    .line 294
    new-instance v6, Landroid/media/Cea708CCParser$CaptionColor;

    .line 295
    .line 296
    invoke-direct {v6, v7, v3, v4, v2}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 297
    .line 298
    .line 299
    add-int/2addr v1, v10

    .line 300
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 301
    .line 302
    new-instance v3, Landroid/media/Cea708CCParser$CaptionPenColor;

    .line 303
    .line 304
    invoke-direct {v3, v5, v11, v6}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    .line 305
    .line 306
    .line 307
    const/16 v4, 0xd

    .line 308
    .line 309
    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 313
    .line 314
    .line 315
    :goto_5
    move v2, v1

    .line 316
    goto/16 :goto_9

    .line 317
    .line 318
    :pswitch_5
    aget-byte v1, p1, p2

    .line 319
    .line 320
    and-int/lit16 v2, v1, 0xf0

    .line 321
    .line 322
    shr-int/lit8 v14, v2, 0x4

    .line 323
    .line 324
    and-int/lit8 v12, v1, 0x3

    .line 325
    .line 326
    const/16 v2, 0xc

    .line 327
    .line 328
    and-int/2addr v1, v2

    .line 329
    shr-int/lit8 v13, v1, 0x2

    .line 330
    .line 331
    add-int/lit8 v1, p2, 0x1

    .line 332
    .line 333
    aget-byte v1, p1, v1

    .line 334
    .line 335
    and-int/lit16 v3, v1, 0x80

    .line 336
    .line 337
    if-eqz v3, :cond_5

    .line 338
    .line 339
    move/from16 v18, v10

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_5
    move/from16 v18, v7

    .line 343
    .line 344
    :goto_6
    and-int/lit8 v3, v1, 0x40

    .line 345
    .line 346
    if-eqz v3, :cond_6

    .line 347
    .line 348
    move/from16 v17, v10

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_6
    move/from16 v17, v7

    .line 352
    .line 353
    :goto_7
    and-int/lit8 v3, v1, 0x38

    .line 354
    .line 355
    shr-int/lit8 v16, v3, 0x3

    .line 356
    .line 357
    and-int/lit8 v15, v1, 0x7

    .line 358
    .line 359
    add-int/lit8 v1, p2, 0x2

    .line 360
    .line 361
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 362
    .line 363
    new-instance v4, Landroid/media/Cea708CCParser$CaptionPenAttr;

    .line 364
    .line 365
    move-object v11, v4

    .line 366
    invoke-direct/range {v11 .. v18}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    .line 367
    .line 368
    .line 369
    invoke-direct {v3, v2, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 373
    .line 374
    .line 375
    goto :goto_5

    .line 376
    :pswitch_6
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 377
    .line 378
    const/16 v3, 0xb

    .line 379
    .line 380
    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_8

    .line 387
    .line 388
    :pswitch_7
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 389
    .line 390
    const/16 v3, 0xa

    .line 391
    .line 392
    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_8

    .line 399
    .line 400
    :pswitch_8
    aget-byte v1, p1, p2

    .line 401
    .line 402
    and-int/lit16 v1, v1, 0xff

    .line 403
    .line 404
    add-int/lit8 v2, p2, 0x1

    .line 405
    .line 406
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 407
    .line 408
    const/16 v4, 0x9

    .line 409
    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-direct {v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :pswitch_9
    aget-byte v1, p1, p2

    .line 422
    .line 423
    and-int/lit16 v1, v1, 0xff

    .line 424
    .line 425
    add-int/lit8 v2, p2, 0x1

    .line 426
    .line 427
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 428
    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    const/16 v4, 0x8

    .line 434
    .line 435
    invoke-direct {v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 439
    .line 440
    .line 441
    goto :goto_9

    .line 442
    :pswitch_a
    aget-byte v1, p1, p2

    .line 443
    .line 444
    and-int/lit16 v1, v1, 0xff

    .line 445
    .line 446
    add-int/lit8 v2, p2, 0x1

    .line 447
    .line 448
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 449
    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-direct {v3, v5, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 458
    .line 459
    .line 460
    goto :goto_9

    .line 461
    :pswitch_b
    aget-byte v1, p1, p2

    .line 462
    .line 463
    and-int/lit16 v1, v1, 0xff

    .line 464
    .line 465
    add-int/lit8 v2, p2, 0x1

    .line 466
    .line 467
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 468
    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-direct {v3, v6, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 477
    .line 478
    .line 479
    goto :goto_9

    .line 480
    :pswitch_c
    aget-byte v1, p1, p2

    .line 481
    .line 482
    and-int/lit16 v1, v1, 0xff

    .line 483
    .line 484
    add-int/lit8 v2, p2, 0x1

    .line 485
    .line 486
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 487
    .line 488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-direct {v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 496
    .line 497
    .line 498
    goto :goto_9

    .line 499
    :pswitch_d
    aget-byte v1, p1, p2

    .line 500
    .line 501
    and-int/lit16 v1, v1, 0xff

    .line 502
    .line 503
    add-int/lit8 v2, p2, 0x1

    .line 504
    .line 505
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 506
    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-direct {v3, v8, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 515
    .line 516
    .line 517
    goto :goto_9

    .line 518
    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    .line 519
    .line 520
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 521
    .line 522
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-direct {v2, v9, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 530
    .line 531
    .line 532
    :goto_8
    move/from16 v2, p2

    .line 533
    .line 534
    :goto_9
    return v2

    .line 535
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseC2([BI)I
    .locals 1

    iget p1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    add-int/lit8 p2, p2, 0x3

    :cond_3
    :goto_0
    return p2
.end method

.method private parseC3([BI)I
    .locals 1

    iget p1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x88

    if-lt p1, v0, :cond_1

    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x5

    :cond_1
    :goto_0
    return p2
.end method

.method private parseExt1([BI)I
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 7
    .line 8
    add-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x1f

    .line 13
    .line 14
    if-gt v0, v2, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v2, 0x80

    .line 22
    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x9f

    .line 26
    .line 27
    if-gt v0, v2, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v2, 0x20

    .line 35
    .line 36
    if-lt v0, v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x7f

    .line 39
    .line 40
    if-gt v0, v2, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/16 v2, 0xa0

    .line 48
    .line 49
    if-lt v0, v2, :cond_3

    .line 50
    .line 51
    if-gt v0, v1, :cond_3

    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    :cond_3
    :goto_0
    return p2
.end method

.method private parseG0([BI)I
    .locals 1

    .line 1
    iget p1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 2
    .line 3
    const/16 v0, 0x7f

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 8
    .line 9
    sget-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 16
    .line 17
    int-to-char p1, p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :goto_0
    return p2
.end method

.method private parseG1([BI)I
    .locals 1

    iget-object p1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2
.end method

.method private parseG2([BI)I
    .locals 0

    return p2
.end method

.method private parseG3([BI)I
    .locals 0

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 7
    .line 8
    add-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    const/16 v2, 0x10

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-ltz v0, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x1f

    .line 22
    .line 23
    if-gt v0, v2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v2, 0x80

    .line 31
    .line 32
    if-lt v0, v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x9f

    .line 35
    .line 36
    if-gt v0, v2, :cond_2

    .line 37
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/16 v2, 0x20

    .line 44
    .line 45
    if-lt v0, v2, :cond_3

    .line 46
    .line 47
    const/16 v2, 0x7f

    .line 48
    .line 49
    if-gt v0, v2, :cond_3

    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/16 v2, 0xa0

    .line 57
    .line 58
    if-lt v0, v2, :cond_4

    .line 59
    .line 60
    if-gt v0, v1, :cond_4

    .line 61
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    :cond_4
    :goto_0
    return p2
.end method


# virtual methods
.method public parse([B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
