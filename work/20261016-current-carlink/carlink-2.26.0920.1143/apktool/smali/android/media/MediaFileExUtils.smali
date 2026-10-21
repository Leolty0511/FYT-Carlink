.class public Landroid/media/MediaFileExUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_TYPE_AMC:I = 0xce

.field public static final FILE_TYPE_AUDIO_3G2:I = 0x196

.field public static final FILE_TYPE_AUDIO_3GP:I = 0x195

.field public static final FILE_TYPE_AUDIO_BP3:I = 0x191

.field public static final FILE_TYPE_AUDIO_M4B:I = 0x194

.field public static final FILE_TYPE_AUDIO_M4R:I = 0x193

.field public static final FILE_TYPE_AUDIO_MP4:I = 0x192

.field public static final FILE_TYPE_AUDIO_OGA:I = 0x197

.field public static final FILE_TYPE_DIVX:I = 0xcc

.field public static final FILE_TYPE_F4V:I = 0xcb

.field public static final FILE_TYPE_FLV:I = 0xca

.field public static final FILE_TYPE_K3G:I = 0xcd

.field public static final FILE_TYPE_MMID:I = 0xe

.field public static final FILE_TYPE_OPUS:I = 0x190

.field public static final FILE_TYPE_VOB:I = 0xcf

.field public static final FILE_TYPE_XMID:I = 0xf

.field protected static final SPRD_FIRST_AUDIO_FILE_TYPE2:I = 0x190

.field protected static final SPRD_FIRST_MIDI_FILE_TYPE:I = 0xe

.field protected static final SPRD_FIRST_VIDEO_FILE_TYPE2:I = 0xca

.field protected static final SPRD_LAST_AUDIO_FILE_TYPE2:I = 0x197

.field protected static final SPRD_LAST_MIDI_FILE_TYPE:I = 0xf

.field protected static final SPRD_LAST_VIDEO_FILE_TYPE2:I = 0xcf


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFileType()V
    .locals 5

    .line 1
    const-string v0, "audio/x-mp3"

    .line 2
    .line 3
    const-string v1, "MP3"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2, v0}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "audio/mpeg3"

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "audio/mp3"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "audio/mpg3"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "M4R"

    .line 25
    .line 26
    const/16 v1, 0x193

    .line 27
    .line 28
    const-string v2, "audio/mp4"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "M4B"

    .line 34
    .line 35
    const/16 v1, 0x194

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x195

    .line 41
    .line 42
    const-string v1, "audio/3gpp"

    .line 43
    .line 44
    const-string v2, "3GP"

    .line 45
    .line 46
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x196

    .line 50
    .line 51
    const-string v1, "audio/3gpp2"

    .line 52
    .line 53
    const-string v2, "3G2"

    .line 54
    .line 55
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 v0, 0x190

    .line 59
    .line 60
    const-string v1, "audio/opus"

    .line 61
    .line 62
    const-string v3, "OPUS"

    .line 63
    .line 64
    invoke-static {v3, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x197

    .line 68
    .line 69
    const-string v1, "audio/ogg"

    .line 70
    .line 71
    const-string v3, "OGA"

    .line 72
    .line 73
    invoke-static {v3, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v0, 0xe

    .line 77
    .line 78
    const-string v1, "audio/mid"

    .line 79
    .line 80
    const-string v3, "MMID"

    .line 81
    .line 82
    invoke-static {v3, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/16 v0, 0xf

    .line 86
    .line 87
    const-string v1, "audio/x-midi"

    .line 88
    .line 89
    const-string v3, "XMID"

    .line 90
    .line 91
    invoke-static {v3, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/16 v0, 0xd

    .line 95
    .line 96
    const-string v1, "audio/imy"

    .line 97
    .line 98
    const-string v3, "IMY"

    .line 99
    .line 100
    invoke-static {v3, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0x191

    .line 104
    .line 105
    const-string v1, "audio/bp3"

    .line 106
    .line 107
    const-string v3, "BP3"

    .line 108
    .line 109
    invoke-static {v3, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/16 v0, 0x18

    .line 113
    .line 114
    const-string/jumbo v1, "video/3g2"

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v0, 0xca

    .line 121
    .line 122
    const-string/jumbo v1, "video/flv"

    .line 123
    .line 124
    .line 125
    const-string v2, "FLV"

    .line 126
    .line 127
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/16 v0, 0xcb

    .line 131
    .line 132
    const-string/jumbo v1, "video/mp4"

    .line 133
    .line 134
    .line 135
    const-string v2, "F4V"

    .line 136
    .line 137
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/16 v0, 0xcc

    .line 141
    .line 142
    const-string/jumbo v1, "video/avi"

    .line 143
    .line 144
    .line 145
    const-string v2, "DIVX"

    .line 146
    .line 147
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/16 v0, 0xce

    .line 151
    .line 152
    const-string/jumbo v1, "video/amc"

    .line 153
    .line 154
    .line 155
    const-string v2, "AMC"

    .line 156
    .line 157
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/16 v0, 0xcd

    .line 161
    .line 162
    const-string/jumbo v1, "video/k3g"

    .line 163
    .line 164
    .line 165
    const-string v2, "K3G"

    .line 166
    .line 167
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/16 v0, 0xcf

    .line 171
    .line 172
    const-string/jumbo v1, "video/mp2p"

    .line 173
    .line 174
    .line 175
    const-string v2, "VOB"

    .line 176
    .line 177
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v0, "JPE"

    .line 181
    .line 182
    const/16 v1, 0x1f

    .line 183
    .line 184
    const-string/jumbo v2, "image/jpeg"

    .line 185
    .line 186
    .line 187
    const/16 v3, 0x3801

    .line 188
    .line 189
    const/4 v4, 0x0

    .line 190
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 191
    .line 192
    .line 193
    const/16 v0, 0x22

    .line 194
    .line 195
    const-string/jumbo v1, "image/bmp"

    .line 196
    .line 197
    .line 198
    const-string v2, "DRMBMP"

    .line 199
    .line 200
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v0, "audio/wav"

    .line 204
    .line 205
    const/16 v1, 0x3008

    .line 206
    .line 207
    const-string v2, "WAV"

    .line 208
    .line 209
    const/4 v3, 0x3

    .line 210
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 211
    .line 212
    .line 213
    const-string v0, "audio/x-aac"

    .line 214
    .line 215
    const v1, 0xb903

    .line 216
    .line 217
    .line 218
    const-string v2, "AAC"

    .line 219
    .line 220
    const/16 v3, 0x8

    .line 221
    .line 222
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 223
    .line 224
    .line 225
    const/16 v0, 0x1d

    .line 226
    .line 227
    const-string/jumbo v1, "video/x-msvideo"

    .line 228
    .line 229
    .line 230
    const-string v2, "AVI"

    .line 231
    .line 232
    invoke-static {v2, v0, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method
