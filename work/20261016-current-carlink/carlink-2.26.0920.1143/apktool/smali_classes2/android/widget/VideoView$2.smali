.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_6

    .line 15
    .line 16
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Landroid/media/Metadata;->has(I)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v6, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v6, v4

    .line 34
    :goto_1
    invoke-static {v5, v6}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/media/Metadata;->has(I)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/media/Metadata;->getBoolean(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v1, v0

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    move v1, v4

    .line 55
    :goto_3
    invoke-static {v5, v1}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/media/Metadata;->has(I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move v2, v0

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    :goto_4
    move v2, v4

    .line 76
    :goto_5
    invoke-static {v1, v2}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    .line 77
    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_6
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 81
    .line 82
    invoke-static {v1, v4}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-static {v1, v2}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v1, v2}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 91
    .line 92
    .line 93
    :goto_6
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 94
    .line 95
    invoke-static {v1}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 102
    .line 103
    invoke-static {v1}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 108
    .line 109
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 114
    .line 115
    .line 116
    :cond_7
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 117
    .line 118
    invoke-static {v1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 125
    .line 126
    invoke-static {v1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-static {v1, v2}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-static {v1, p1}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 152
    .line 153
    invoke-static {p1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 162
    .line 163
    .line 164
    :cond_9
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 165
    .line 166
    invoke-static {v1}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_c

    .line 171
    .line 172
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 173
    .line 174
    invoke-static {v1}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_c

    .line 179
    .line 180
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 187
    .line 188
    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 193
    .line 194
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    invoke-interface {v1, v2, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 202
    .line 203
    invoke-static {v1}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 208
    .line 209
    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-ne v1, v2, :cond_d

    .line 214
    .line 215
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 216
    .line 217
    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 222
    .line 223
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-ne v1, v2, :cond_d

    .line 228
    .line 229
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 230
    .line 231
    invoke-static {v1}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-ne v1, v3, :cond_a

    .line 236
    .line 237
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 243
    .line 244
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-eqz p1, :cond_d

    .line 249
    .line 250
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 251
    .line 252
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 257
    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_a
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_d

    .line 267
    .line 268
    if-nez p1, :cond_b

    .line 269
    .line 270
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-lez p1, :cond_d

    .line 277
    .line 278
    :cond_b
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 279
    .line 280
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-eqz p1, :cond_d

    .line 285
    .line 286
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 287
    .line 288
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_c
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 297
    .line 298
    invoke-static {p1}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-ne p1, v3, :cond_d

    .line 303
    .line 304
    iget-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 307
    .line 308
    .line 309
    :cond_d
    :goto_7
    return-void
.end method
