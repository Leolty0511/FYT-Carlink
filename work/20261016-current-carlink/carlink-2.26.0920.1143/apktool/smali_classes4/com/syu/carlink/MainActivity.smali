.class public final Lcom/syu/carlink/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Le/g;
.implements Lf/g;


# instance fields
.field public b:Lcom/syu/carlink/fragment/LogoFragment;

.field public c:Lcom/syu/carlink/fragment/CarplayFragment;

.field public d:Lcom/syu/carlink/fragment/CarMarkFragment;

.field public e:Lcom/syu/carlink/auto/AutoFragment;

.field public f:Lcom/syu/carlink/fragment/SettingsFragment;

.field public g:Landroid/content/res/Configuration;

.field public h:Landroid/view/View;

.field public i:Landroidx/fragment/app/Fragment;

.field public j:Landroid/os/Handler;

.field public k:Lcom/syu/carlink/ui/a;

.field public l:Lcom/syu/carlink/ui/a;

.field public m:Z

.field public final n:Lcom/syu/carlink/b;

.field public final o:Le/n;

.field public final p:Le/j;

.field public final q:Landroid/os/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/syu/carlink/b;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/syu/carlink/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->n:Lcom/syu/carlink/b;

    .line 11
    .line 12
    new-instance v0, Le/n;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Le/n;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->o:Le/n;

    .line 19
    .line 20
    new-instance v0, Le/j;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Le/j;-><init>(Lcom/syu/carlink/MainActivity;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->p:Le/j;

    .line 26
    .line 27
    new-instance v0, Landroid/os/b;

    .line 28
    .line 29
    const/4 v1, 0x7

    .line 30
    invoke-direct {v0, v1}, Landroid/os/b;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->q:Landroid/os/b;

    .line 34
    .line 35
    return-void
.end method

.method public static f()Lcom/syu/carlink/CarLinkService;
    .locals 1

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "me"

    .line 11
    .line 12
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    throw v0
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/syu/carlink/fragment/LogoFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/syu/carlink/fragment/LogoFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->b:Lcom/syu/carlink/fragment/LogoFragment;

    .line 7
    .line 8
    new-instance v0, Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/syu/carlink/fragment/CarMarkFragment;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->d:Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 14
    .line 15
    new-instance v0, Lcom/syu/carlink/fragment/SettingsFragment;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/syu/carlink/fragment/SettingsFragment;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 21
    .line 22
    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_7

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const-string v4, "me"

    .line 43
    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v5, 0x3

    .line 51
    if-eq v2, v5, :cond_1

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_8

    .line 60
    .line 61
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 62
    .line 63
    if-eqz v2, :cond_8

    .line 64
    .line 65
    invoke-virtual {v2, v0, v1}, Lh/c;->b(II)Landroid/util/Size;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v7, "setCarplayVideoSize  ============>>> window size : "

    .line 72
    .line 73
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v7, " x "

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v8, 0x20

    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string v8, "HDL"

    .line 97
    .line 98
    invoke-static {v8, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-lez v6, :cond_8

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-gtz v6, :cond_2

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_2
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    invoke-virtual {v2, v6, v9, v0, v1}, Lh/c;->c(IIII)[I

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->g()Lcom/syu/carlink/fragment/CarplayFragment;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/4 v6, 0x0

    .line 132
    aget v9, v0, v6

    .line 133
    .line 134
    const/4 v10, 0x1

    .line 135
    aget v0, v0, v10

    .line 136
    .line 137
    invoke-virtual {v1, v9, v0, v6}, Lcom/syu/carlink/fragment/CarplayFragment;->b(IIZ)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget v1, Le/m;->a:I

    .line 149
    .line 150
    iget-object v0, v0, Lp/b;->b:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Landroid/content/SharedPreferences;

    .line 153
    .line 154
    const-string v6, "fps"

    .line 155
    .line 156
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iget v1, v2, Lh/c;->b:I

    .line 161
    .line 162
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-ne v1, v6, :cond_3

    .line 167
    .line 168
    iget v1, v2, Lh/c;->c:I

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-ne v1, v6, :cond_3

    .line 175
    .line 176
    iget v1, v2, Lh/c;->h:I

    .line 177
    .line 178
    if-eq v0, v1, :cond_8

    .line 179
    .line 180
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v1, "setCarplayVideoSize  ============>>> old size : "

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget v1, v2, Lh/c;->b:I

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget v1, v2, Lh/c;->c:I

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, "  new size: "

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v8, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    sget-object v5, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 245
    .line 246
    if-eqz v5, :cond_4

    .line 247
    .line 248
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->s()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    xor-int/2addr v3, v10

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Lcom/syu/carlink/CarLinkService;->v(III)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_4
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v3

    .line 261
    :cond_5
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v3

    .line 265
    :cond_6
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v3

    .line 269
    :cond_7
    :goto_0
    new-instance v0, Lcom/syu/carlink/e;

    .line 270
    .line 271
    const/4 v1, 0x6

    .line 272
    invoke-direct {v0, p0, v1}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    .line 277
    .line 278
    :cond_8
    :goto_1
    return-void
.end method

.method public final e()Lcom/syu/carlink/auto/AutoFragment;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->e:Lcom/syu/carlink/auto/AutoFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "autoFragment"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()Lcom/syu/carlink/fragment/CarplayFragment;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->c:Lcom/syu/carlink/fragment/CarplayFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "carplayFragment"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->g:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lastConfig"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mHandler"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "root"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->b:Lcom/syu/carlink/fragment/LogoFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "logoFragment"

    .line 10
    .line 11
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    throw v0
.end method

.method public final l()V
    .locals 5

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "me"

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const-string v3, "com.syu.air"

    .line 9
    .line 10
    invoke-virtual {v0, v3}, Lcom/syu/carlink/CarLink;->r(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 15
    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    const-string v1, "com.syu.window"

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Lcom/syu/carlink/CarLink;->r(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, "persist.launcher.toobar_height"

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-static {v3, v2}, Lt/b;->p(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-lez v2, :cond_0

    .line 33
    .line 34
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    const-string v4, "persist.carlink.hide_systemui"

    .line 38
    .line 39
    invoke-static {v4, v3}, Lt/b;->o(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x1302

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v0, 0x1100

    .line 53
    .line 54
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "MainActivity ============>>> onCreate flags: "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, "  hideSystemUI: "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "HDL"

    .line 77
    .line 78
    invoke-static {v2, v1}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x400

    .line 84
    .line 85
    or-int/lit8 v0, v0, 0x4

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    and-int/2addr v2, v0

    .line 100
    if-ne v2, v0, :cond_3

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_5
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1
.end method

.method public final m(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->i:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "supportFragmentManager.beginTransaction()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "to Fragment : "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "  "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "  currentFragment: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/syu/carlink/MainActivity;->i:Landroidx/fragment/app/Fragment;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "HDL"

    .line 60
    .line 61
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v3, 0x1001

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    sget v1, Le/v;->fragment_container:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sget v1, Le/v;->fragment_container:I

    .line 92
    .line 93
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 106
    .line 107
    .line 108
    :goto_0
    iput-object p1, p0, Lcom/syu/carlink/MainActivity;->i:Landroidx/fragment/app/Fragment;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->g()Lcom/syu/carlink/fragment/CarplayFragment;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const/4 v0, 0x0

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    const-string p1, "====================>>> CarLink.me?.keyboardController(carplayFragment, true)!!"

    .line 122
    .line 123
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    invoke-virtual {v1, p1}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    const/4 p1, 0x2

    .line 146
    new-array v1, p1, [Ljava/lang/Class;

    .line 147
    .line 148
    const-class v2, Ljava/lang/String;

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aput-object v2, v1, v3

    .line 152
    .line 153
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 154
    .line 155
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    aput-object v2, v1, v4

    .line 159
    .line 160
    new-array v2, p1, [Ljava/lang/Object;

    .line 161
    .line 162
    const-string v5, "persist.lsec.carlink.ionger"

    .line 163
    .line 164
    aput-object v5, v2, v3

    .line 165
    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    aput-object v5, v2, v4

    .line 171
    .line 172
    const-string v5, "android.os.SystemProperties"

    .line 173
    .line 174
    const-string v6, "getInt"

    .line 175
    .line 176
    invoke-static {v5, v0, v6, v1, v2}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Ljava/lang/Integer;

    .line 181
    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    move v0, v3

    .line 190
    :goto_1
    if-nez v0, :cond_4

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    move v4, v3

    .line 194
    :goto_2
    if-eqz v4, :cond_7

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Lcom/syu/carlink/e;

    .line 201
    .line 202
    invoke-direct {v1, p0, p1}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 203
    .line 204
    .line 205
    const-wide/16 v2, 0x12c

    .line 206
    .line 207
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    iget-object p1, p0, Lcom/syu/carlink/MainActivity;->i:Landroidx/fragment/app/Fragment;

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {p1, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_7

    .line 228
    .line 229
    sget-object v0, Lf/k;->y:Lf/k;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_6
    const-string p1, "====================>>> CarLink.me?.keyboardController(null, false)!!"

    .line 236
    .line 237
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_7

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    :goto_3
    return-void
.end method

.method public final onBackPressed()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->k:Lcom/syu/carlink/ui/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/syu/carlink/ui/a;->i:Z

    .line 8
    .line 9
    if-ne v3, v1, :cond_0

    .line 10
    .line 11
    move v3, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_0
    if-nez v3, :cond_d

    .line 15
    .line 16
    iget-object v3, p0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-boolean v3, v3, Lcom/syu/carlink/ui/a;->i:Z

    .line 21
    .line 22
    if-ne v3, v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v1, v2

    .line 26
    :goto_1
    if-eqz v1, :cond_2

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_2
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const-string v3, "me"

    .line 34
    .line 35
    if-eqz v0, :cond_c

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->o()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 45
    .line 46
    if-eqz v0, :cond_b

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_9

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->l()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_4
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v4, "HDL"

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v0, v5, v6}, Lh/c;->b(II)Landroid/util/Size;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget v6, v0, Lh/c;->b:I

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-ne v6, v7, :cond_5

    .line 101
    .line 102
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    iget v7, v0, Lh/c;->c:I

    .line 107
    .line 108
    if-eq v6, v7, :cond_6

    .line 109
    .line 110
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v7, "onBackPressed  ============>>> old size : "

    .line 113
    .line 114
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v7, v0, Lh/c;->b:I

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v7, " x "

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v0, v0, Lh/c;->c:I

    .line 128
    .line 129
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, "  new size: "

    .line 133
    .line 134
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    invoke-virtual {v0, v5}, Lcom/syu/carlink/CarLinkService;->k(Landroid/util/Size;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    const-string v0, "MainActivity ============>>> onBackPressed"

    .line 171
    .line 172
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 176
    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    iput-boolean v2, v0, Lcom/syu/carlink/CarLink;->e:Z

    .line 180
    .line 181
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 182
    .line 183
    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 185
    .line 186
    const/16 v1, 0x1f

    .line 187
    .line 188
    if-lt v0, v1, :cond_7

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 191
    .line 192
    .line 193
    :cond_7
    return-void

    .line 194
    :cond_8
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v1

    .line 198
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz v0, :cond_a

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/16 v1, 0x1010

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lg/d;->a(I)V

    .line 211
    .line 212
    .line 213
    :cond_a
    return-void

    .line 214
    :cond_b
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v1

    .line 218
    :cond_c
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1

    .line 222
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/syu/carlink/ui/a;->a()V

    .line 225
    .line 226
    .line 227
    :cond_e
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 228
    .line 229
    if-eqz v0, :cond_f

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/syu/carlink/ui/a;->a()V

    .line 232
    .line 233
    .line 234
    :cond_f
    return-void
.end method

.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, " MainActivity ============>>> orientation: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " -> "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "HDL"

    .line 37
    .line 38
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, " MainActivity ============>>> layoutDirection: "

    .line 44
    .line 45
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "MainActivity ============>>> onConfigurationChanged \n"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " \n"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "  \n"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1, p1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    xor-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0, p1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_9

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "MainActivity ============>>> 11 onConfigurationChanged  "

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 155
    .line 156
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 157
    .line 158
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    .line 164
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->i:Landroidx/fragment/app/Fragment;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/syu/carlink/MainActivity;->b:Lcom/syu/carlink/fragment/LogoFragment;

    .line 167
    .line 168
    const-string v3, "logoFragment"

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->c()V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->b:Lcom/syu/carlink/fragment/LogoFragment;

    .line 183
    .line 184
    if-eqz v0, :cond_0

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v4

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 195
    .line 196
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_2

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->c()V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 206
    .line 207
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/syu/carlink/MainActivity;->d:Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 215
    .line 216
    const-string v3, "carMarkFragment"

    .line 217
    .line 218
    if-eqz v1, :cond_5

    .line 219
    .line 220
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_4

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->c()V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->d:Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 230
    .line 231
    if-eqz v0, :cond_3

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_3
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v4

    .line 241
    :cond_4
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->g()Lcom/syu/carlink/fragment/CarplayFragment;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->c()V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_5
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v4

    .line 259
    :cond_6
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v4

    .line 263
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 268
    .line 269
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 270
    .line 271
    if-eq v0, v1, :cond_8

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 278
    .line 279
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 280
    .line 281
    if-eq v0, v1, :cond_8

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v1, Lcom/syu/carlink/e;

    .line 288
    .line 289
    const/4 v3, 0x4

    .line 290
    invoke-direct {v1, p0, v3}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 291
    .line 292
    .line 293
    const-wide/16 v3, 0x12c

    .line 294
    .line 295
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    .line 297
    .line 298
    :cond_8
    new-instance v0, Landroid/content/res/Configuration;

    .line 299
    .line 300
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 301
    .line 302
    .line 303
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->g:Landroid/content/res/Configuration;

    .line 304
    .line 305
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v1, "MainActivity ============>>> 22 onConfigurationChanged  "

    .line 308
    .line 309
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->l()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/syu/carlink/MainActivity;->j:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/syu/carlink/MainActivity;->i:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    new-instance v0, Lcom/syu/carlink/fragment/LogoFragment;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/syu/carlink/fragment/LogoFragment;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->b:Lcom/syu/carlink/fragment/LogoFragment;

    .line 27
    .line 28
    new-instance v0, Lcom/syu/carlink/fragment/CarplayFragment;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/syu/carlink/fragment/CarplayFragment;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->c:Lcom/syu/carlink/fragment/CarplayFragment;

    .line 34
    .line 35
    new-instance v0, Lcom/syu/carlink/auto/AutoFragment;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/syu/carlink/auto/AutoFragment;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->e:Lcom/syu/carlink/auto/AutoFragment;

    .line 41
    .line 42
    new-instance v0, Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/syu/carlink/fragment/CarMarkFragment;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->d:Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "resources.configuration"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->g:Landroid/content/res/Configuration;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "MainActivity ============>>> onCreate locale: "

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->h()Landroid/content/res/Configuration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "HDL"

    .line 83
    .line 84
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/syu/carlink/fragment/SettingsFragment;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/syu/carlink/fragment/SettingsFragment;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 93
    .line 94
    sget-object v0, Lf/k;->y:Lf/k;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iput-object v2, v0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 101
    .line 102
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 103
    .line 104
    const-string v2, "me"

    .line 105
    .line 106
    if-eqz v0, :cond_15

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->h()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v3, 0x2

    .line 113
    new-array v4, v3, [Ljava/lang/Class;

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    const-class v6, Ljava/lang/String;

    .line 117
    .line 118
    aput-object v6, v4, v5

    .line 119
    .line 120
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    invoke-static {v6}, Lt/b;->e(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 v7, 0x1

    .line 126
    aput-object v6, v4, v7

    .line 127
    .line 128
    new-array v6, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    const-string v8, "sys.carlink.universal_skin"

    .line 131
    .line 132
    aput-object v8, v6, v5

    .line 133
    .line 134
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 135
    .line 136
    aput-object v8, v6, v7

    .line 137
    .line 138
    const-string v8, "android.os.SystemProperties"

    .line 139
    .line 140
    const-string v9, "getBoolean"

    .line 141
    .line 142
    invoke-static {v8, p1, v9, v4, v6}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/lang/Boolean;

    .line 147
    .line 148
    if-eqz v4, :cond_0

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    move v4, v5

    .line 156
    :goto_0
    if-eqz v4, :cond_1

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget v3, Le/u;->logo_backgroud:I

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_1
    new-array v4, v3, [I

    .line 173
    .line 174
    fill-array-data v4, :array_0

    .line 175
    .line 176
    .line 177
    invoke-static {v4, v0}, Lt/c;->H([II)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_2

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sget v3, Le/t;->background_color_yuf:I

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    new-array v3, v3, [I

    .line 198
    .line 199
    fill-array-data v3, :array_1

    .line 200
    .line 201
    .line 202
    invoke-static {v3, v0}, Lt/c;->H([II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_3

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget v3, Le/u;->bg_tzy:I

    .line 217
    .line 218
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    sget v3, Le/u;->logo_backgroud:I

    .line 231
    .line 232
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    .line 234
    .line 235
    :goto_1
    sget v0, Le/w;->activity_link:I

    .line 236
    .line 237
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 238
    .line 239
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v3, "MainActivity ============>>> start time -1: "

    .line 243
    .line 244
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 248
    .line 249
    .line 250
    move-result-wide v3

    .line 251
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const/16 v3, 0x20

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    sget-object v4, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 260
    .line 261
    if-eqz v4, :cond_14

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->B()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sget v0, Le/v;->root:I

    .line 278
    .line 279
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v4, "findViewById<View>(R.id.root)"

    .line 284
    .line 285
    invoke-static {v0, v4}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->setRoot(Landroid/view/View;)V

    .line 289
    .line 290
    .line 291
    sget-object v0, Lf/k;->y:Lf/k;

    .line 292
    .line 293
    iput-object p0, v0, Lf/k;->k:Lf/g;

    .line 294
    .line 295
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 296
    .line 297
    if-eqz v0, :cond_13

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->B()I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    const/4 v0, 0x5

    .line 304
    if-eq p1, v0, :cond_4

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->k()V

    .line 307
    .line 308
    .line 309
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    const/16 v0, 0x17

    .line 312
    .line 313
    if-lt p1, v0, :cond_12

    .line 314
    .line 315
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 316
    .line 317
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_5

    .line 322
    .line 323
    move p1, v7

    .line 324
    goto :goto_2

    .line 325
    :cond_5
    move p1, v5

    .line 326
    :goto_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 327
    .line 328
    if-nez p1, :cond_7

    .line 329
    .line 330
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_6

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_6
    move p1, v5

    .line 338
    goto :goto_4

    .line 339
    :cond_7
    :goto_3
    move p1, v7

    .line 340
    :goto_4
    if-nez p1, :cond_9

    .line 341
    .line 342
    const-string p1, "android.permission.ACCESS_WIFI_STATE"

    .line 343
    .line 344
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-eqz p1, :cond_8

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_8
    move p1, v5

    .line 352
    goto :goto_6

    .line 353
    :cond_9
    :goto_5
    move p1, v7

    .line 354
    :goto_6
    if-nez p1, :cond_b

    .line 355
    .line 356
    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    .line 357
    .line 358
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_a

    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_a
    move p1, v5

    .line 366
    goto :goto_8

    .line 367
    :cond_b
    :goto_7
    move p1, v7

    .line 368
    :goto_8
    if-nez p1, :cond_d

    .line 369
    .line 370
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_c

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_c
    move p1, v5

    .line 378
    goto :goto_a

    .line 379
    :cond_d
    :goto_9
    move p1, v7

    .line 380
    :goto_a
    if-nez p1, :cond_f

    .line 381
    .line 382
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 383
    .line 384
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-eqz p1, :cond_e

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_e
    move p1, v5

    .line 392
    goto :goto_c

    .line 393
    :cond_f
    :goto_b
    move p1, v7

    .line 394
    :goto_c
    if-nez p1, :cond_10

    .line 395
    .line 396
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 397
    .line 398
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-eqz p1, :cond_11

    .line 403
    .line 404
    :cond_10
    move v5, v7

    .line 405
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v0, " MainActivity android.Manifest.permission.ACCESS_FINE_LOCATION -------->>  result:"

    .line 408
    .line 409
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    if-eqz v5, :cond_12

    .line 423
    .line 424
    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 425
    .line 426
    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    .line 427
    .line 428
    const-string v10, "android.permission.ACCESS_WIFI_STATE"

    .line 429
    .line 430
    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    .line 431
    .line 432
    const-string v12, "android.permission.ACCESS_COARSE_LOCATION"

    .line 433
    .line 434
    const-string v13, "android.permission.RECORD_AUDIO"

    .line 435
    .line 436
    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    const/16 v0, 0x65

    .line 441
    .line 442
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 443
    .line 444
    .line 445
    const-string p1, " MainActivity requestPermissions -------->>  101"

    .line 446
    .line 447
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :cond_12
    iput-boolean v7, p0, Lcom/syu/carlink/MainActivity;->m:Z

    .line 451
    .line 452
    new-instance p1, Landroid/content/Intent;

    .line 453
    .line 454
    const-class v0, Lcom/syu/carlink/CarLinkService;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, p1, p0, v7}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 471
    .line 472
    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v0, "MainActivity onCreate ----------------->> "

    .line 476
    .line 477
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return-void

    .line 498
    :cond_13
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    throw p1

    .line 502
    :cond_14
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw p1

    .line 506
    :cond_15
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw p1

    .line 510
    nop

    .line 511
    :array_0
    .array-data 4
        0x70
        0x8c
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_1
    .array-data 4
        0x5f
        0x6b
    .end array-data
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    const-string v0, "HDL"

    .line 2
    .line 3
    const-string v1, "MainActivity ============>>> onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->e()V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {v0}, Lh/c;->i(Lh/c;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->g()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lf/k;->y:Lf/k;

    .line 49
    .line 50
    const-wide/16 v2, 0xa

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Lf/k;->e(J)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v2, v0, Ll/b;->a:Ll/a;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    new-instance v3, Landroid/accessibilityservice/a;

    .line 70
    .line 71
    const/16 v4, 0x8

    .line 72
    .line 73
    iget-object v5, v2, Ll/a;->e:Ll/b;

    .line 74
    .line 75
    invoke-direct {v3, v2, v5, v4}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v2, Ll/a;->b:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    iput-object v1, v0, Ll/b;->a:Ll/a;

    .line 84
    .line 85
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/syu/carlink/MainActivity;->m:Z

    .line 94
    .line 95
    invoke-virtual {p0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "value"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "sys.carlink.type"

    .line 108
    .line 109
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    const-string v0, "me"

    .line 117
    .line 118
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v1
.end method

.method public final onPause()V
    .locals 7

    .line 1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/syu/carlink/MainActivity;->o:Le/n;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lcom/syu/carlink/CarLink;->e:Z

    .line 22
    .line 23
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v2, p0, Lcom/syu/carlink/MainActivity;->n:Lcom/syu/carlink/b;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/syu/carlink/CarLinkService;->f(Z)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/syu/carlink/MainActivity;->p:Le/j;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/syu/carlink/ui/a;->a()V

    .line 65
    .line 66
    .line 67
    :cond_1
    const/high16 v0, -0x80000000

    .line 68
    .line 69
    iput v0, v3, Le/j;->b:I

    .line 70
    .line 71
    iget-object v3, p0, Lcom/syu/carlink/MainActivity;->k:Lcom/syu/carlink/ui/a;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/syu/carlink/ui/a;->a()V

    .line 76
    .line 77
    .line 78
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "MainActivity ============>>> onPause "

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->C()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, "  "

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->B()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/16 v4, 0x20

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v4, "HDL"

    .line 122
    .line 123
    invoke-static {v4, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->C()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-ne v3, v2, :cond_4

    .line 135
    .line 136
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v6, "LinkStart handleCut =====>> topIsMainActivity : "

    .line 157
    .line 158
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 162
    .line 163
    if-eqz v6, :cond_3

    .line 164
    .line 165
    iget-boolean v6, v6, Lcom/syu/carlink/CarLink;->d:Z

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v6, "  state: "

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v4, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x5

    .line 186
    if-eq v3, v5, :cond_4

    .line 187
    .line 188
    const/4 v5, 0x7

    .line 189
    if-eq v3, v5, :cond_4

    .line 190
    .line 191
    iget-object v3, v2, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 192
    .line 193
    iget-object v5, v2, Lcom/syu/carlink/CarLinkService;->l0:Lcom/syu/carlink/a;

    .line 194
    .line 195
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/syu/carlink/CarLinkService;->c()V

    .line 199
    .line 200
    .line 201
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 202
    .line 203
    if-eqz v2, :cond_4

    .line 204
    .line 205
    invoke-static {v2}, Lh/c;->i(Lh/c;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_3
    const-string v0, "me"

    .line 210
    .line 211
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    throw v0

    .line 216
    :cond_4
    :goto_0
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    const/4 v3, 0x3

    .line 225
    if-ne v2, v3, :cond_5

    .line 226
    .line 227
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    iget-object v2, v2, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 236
    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_5
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-boolean v1, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 249
    .line 250
    const-string v0, "MainActivity ============>>> onPause"

    .line 251
    .line 252
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "onRequestPermissionsResult  permissions: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x20

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "HDL"

    .line 37
    .line 38
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onResume()V
    .locals 6

    .line 1
    const-string v0, "HDL"

    .line 2
    .line 3
    const-string v1, "MainActivity ============>>> onResume START"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/syu/carlink/MainActivity;->o:Le/n;

    .line 19
    .line 20
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, v1, Lcom/syu/carlink/CarLink;->e:Z

    .line 29
    .line 30
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-boolean v2, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 35
    .line 36
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/syu/carlink/MainActivity;->n:Lcom/syu/carlink/b;

    .line 44
    .line 45
    const-wide/16 v4, 0xc8

    .line 46
    .line 47
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "MainActivity ============>>> onResume     "

    .line 53
    .line 54
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x3

    .line 85
    if-eq v1, v4, :cond_0

    .line 86
    .line 87
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Lcom/syu/carlink/CarLinkService;->f(Z)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-ne v1, v4, :cond_1

    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "value"

    .line 111
    .line 112
    invoke-static {v1, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v2, "sys.carlink.type"

    .line 116
    .line 117
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->k()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v2, "MainActivity ============>>> onResume"

    .line 128
    .line 129
    invoke-static {v0, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/syu/carlink/e;

    .line 133
    .line 134
    invoke-direct {v0, p0, v4}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 135
    .line 136
    .line 137
    const-wide/16 v2, 0x3e8

    .line 138
    .line 139
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->v()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p0, Lcom/syu/carlink/MainActivity;->q:Landroid/os/b;

    .line 153
    .line 154
    const-wide/16 v2, 0x5dc

    .line 155
    .line 156
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 175
    .line 176
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 177
    .line 178
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->m0:Lcom/syu/carlink/b;

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->r()V

    .line 184
    .line 185
    .line 186
    :cond_2
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_3

    .line 194
    .line 195
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->t()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_4

    .line 204
    .line 205
    :cond_3
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_4

    .line 210
    .line 211
    const/16 v1, 0xa

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 214
    .line 215
    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->g()Lcom/syu/carlink/fragment/CarplayFragment;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_5
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->l()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 239
    .line 240
    .line 241
    :cond_6
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    check-cast p2, Le/f;

    .line 4
    .line 5
    iget-object p1, p2, Le/f;->b:Lcom/syu/carlink/CarLinkService;

    .line 6
    .line 7
    iput-object p0, p1, Lcom/syu/carlink/CarLinkService;->D:Le/g;

    .line 8
    .line 9
    new-instance p2, Lcom/syu/carlink/MainActivity$onServiceConnected$1$1;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/syu/carlink/MainActivity$onServiceConnected$1$1;-><init>(Lcom/syu/carlink/MainActivity;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p1, Lcom/syu/carlink/CarLinkService;->E:Lz/a;

    .line 15
    .line 16
    new-instance p1, Lcom/syu/carlink/e;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p1, p0, p2}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/syu/carlink/MainActivity;->m:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/syu/carlink/e;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x12c

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity;->l()V

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "onWindowFocusChanged ============>>> hasFocus: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x20

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "HDL"

    .line 36
    .line 37
    invoke-static {v0, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setRoot(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/syu/carlink/MainActivity;->h:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method
