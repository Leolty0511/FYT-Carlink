.class public final Lcom/syu/carlink/fragment/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final b:I

.field public final c:Ls/a;

.field public final d:Ls/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/syu/carlink/fragment/SettingsFragment;->b:I

    .line 6
    .line 7
    sget-object v0, Lcom/syu/carlink/fragment/SettingsFragment$mHandler$2;->INSTANCE:Lcom/syu/carlink/fragment/SettingsFragment$mHandler$2;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/syu/carlink/fragment/SettingsFragment;->c:Ls/a;

    .line 14
    .line 15
    sget-object v0, Lcom/syu/carlink/fragment/SettingsFragment$appModel$2;->INSTANCE:Lcom/syu/carlink/fragment/SettingsFragment$appModel$2;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/syu/carlink/fragment/SettingsFragment;->d:Ls/a;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v2, Le/v;->car_logo_iv:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    instance-of v2, v0, Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    :cond_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/syu/carlink/fragment/SettingsFragment;->c:Ls/a;

    .line 26
    .line 27
    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v2, Landroid/net/b;

    .line 34
    .line 35
    const/16 v3, 0xd

    .line 36
    .line 37
    invoke-direct {v2, v1, v3}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    instance-of p3, p3, Lcom/syu/carlink/MainActivity;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p3, :cond_6

    .line 14
    .line 15
    sget-object p3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p3, :cond_5

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/syu/carlink/CarLink;->h()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v3, v2, [Ljava/lang/Class;

    .line 26
    .line 27
    const-class v4, Ljava/lang/String;

    .line 28
    .line 29
    aput-object v4, v3, v0

    .line 30
    .line 31
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {v4}, Lt/b;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    aput-object v4, v3, v5

    .line 38
    .line 39
    new-array v4, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v6, "sys.carlink.universal_skin"

    .line 42
    .line 43
    aput-object v6, v4, v0

    .line 44
    .line 45
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    aput-object v6, v4, v5

    .line 48
    .line 49
    const-string v6, "android.os.SystemProperties"

    .line 50
    .line 51
    const-string v7, "getBoolean"

    .line 52
    .line 53
    invoke-static {v6, v1, v7, v3, v4}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Boolean;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v1, v0

    .line 67
    :goto_0
    if-eqz v1, :cond_1

    .line 68
    .line 69
    sget p3, Le/w;->settings_fragment_layout:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-array v1, v5, [I

    .line 73
    .line 74
    const/16 v3, 0x83

    .line 75
    .line 76
    aput v3, v1, v0

    .line 77
    .line 78
    invoke-static {v1, p3}, Lt/c;->H([II)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    sget p3, Le/w;->settings_fragment_layout_dudu:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-array v1, v2, [I

    .line 88
    .line 89
    fill-array-data v1, :array_0

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p3}, Lt/c;->H([II)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    sget p3, Le/w;->settings_fragment_layout_yuf:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-array v1, v5, [I

    .line 102
    .line 103
    const/16 v2, 0x5f

    .line 104
    .line 105
    aput v2, v1, v0

    .line 106
    .line 107
    invoke-static {v1, p3}, Lt/c;->H([II)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_4

    .line 112
    .line 113
    sget p3, Le/w;->settings_fragment_layout_tzy:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    sget p3, Le/w;->settings_fragment_layout:I

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const-string p1, "me"

    .line 120
    .line 121
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :cond_6
    sget p3, Le/w;->settings_fragment_layout:I

    .line 126
    .line 127
    :goto_1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    nop

    .line 133
    :array_0
    .array-data 4
        0x70
        0x8c
    .end array-data
.end method

.method public final onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/SettingsFragment;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p2, Le/v;->settings_root:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "sys.carlink.universal_skin"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lt/b;->o(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    fill-array-data v0, :array_0

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/syu/carlink/fragment/SettingsFragment;->b:I

    .line 31
    .line 32
    invoke-static {v0, v2}, Lt/c;->H([II)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const-string v0, "sys.carlink.solid_bk"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lt/b;->o(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    sget v0, Le/t;->background_color_common:I

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 p2, 0x2

    .line 52
    const-string v0, "persist.lsec.cp.micLR"

    .line 53
    .line 54
    invoke-static {p2, v0}, Lt/b;->p(ILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget v2, Le/v;->noise_group:I

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/widget/RadioGroup;

    .line 65
    .line 66
    new-instance v3, Landroid/os/a;

    .line 67
    .line 68
    const/16 v4, 0xe

    .line 69
    .line 70
    invoke-direct {v3, v4}, Landroid/os/a;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    if-eq v0, v3, :cond_3

    .line 80
    .line 81
    if-eq v0, p2, :cond_2

    .line 82
    .line 83
    sget p2, Le/v;->noise_left:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    sget p2, Le/v;->noise_left:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    sget p2, Le/v;->noise_right:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    sget p2, Le/v;->noise_null:I

    .line 93
    .line 94
    :goto_0
    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 95
    .line 96
    .line 97
    sget p2, Le/v;->band_layout:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/syu/carlink/CarLink;->G()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/16 v2, 0x8

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    move v0, v2

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    move v0, v1

    .line 117
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    sget p2, Le/v;->ap_band_group:I

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Landroid/widget/RadioGroup;

    .line 127
    .line 128
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/syu/carlink/CarLink;->i()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const-string v4, "persist.lsec.carlink.apband"

    .line 136
    .line 137
    invoke-static {v0, v4}, Lt/b;->p(ILjava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    new-instance v4, Landroid/os/a;

    .line 142
    .line 143
    const/16 v5, 0xf

    .line 144
    .line 145
    invoke-direct {v4, v5}, Landroid/os/a;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 149
    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    if-eq v0, v3, :cond_6

    .line 154
    .line 155
    sget v0, Le/v;->apband_2_4g:I

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    sget v0, Le/v;->apband_2_4g:I

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    sget v0, Le/v;->apband_5g:I

    .line 162
    .line 163
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 164
    .line 165
    .line 166
    sget p2, Le/v;->fps_group:I

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Landroid/widget/RadioGroup;

    .line 173
    .line 174
    new-instance v0, Li/g;

    .line 175
    .line 176
    invoke-direct {v0, p0, v1}, Li/g;-><init>(Lcom/syu/carlink/fragment/SettingsFragment;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sget v4, Le/m;->a:I

    .line 191
    .line 192
    iget-object v0, v0, Lp/b;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Landroid/content/SharedPreferences;

    .line 195
    .line 196
    const-string v5, "fps"

    .line 197
    .line 198
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/16 v4, 0x14

    .line 203
    .line 204
    if-ne v0, v4, :cond_8

    .line 205
    .line 206
    sget v0, Le/v;->fps_low:I

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    sget v4, Le/m;->a:I

    .line 210
    .line 211
    if-ne v0, v4, :cond_9

    .line 212
    .line 213
    sget v0, Le/v;->fps_medium:I

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    const/16 v4, 0x3c

    .line 217
    .line 218
    if-ne v0, v4, :cond_a

    .line 219
    .line 220
    sget v0, Le/v;->fps_high:I

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_a
    sget v0, Le/v;->fps_medium:I

    .line 224
    .line 225
    :goto_3
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 226
    .line 227
    .line 228
    sget p2, Le/v;->resolution_group:I

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Landroid/widget/RadioGroup;

    .line 235
    .line 236
    new-instance v0, Li/g;

    .line 237
    .line 238
    invoke-direct {v0, p0, v3}, Li/g;-><init>(Lcom/syu/carlink/fragment/SettingsFragment;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/syu/carlink/fragment/SettingsFragment;->d:Ls/a;

    .line 245
    .line 246
    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lg/b;

    .line 251
    .line 252
    iget-object v0, v0, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Ljava/lang/Integer;

    .line 259
    .line 260
    if-nez v0, :cond_b

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-nez v4, :cond_c

    .line 268
    .line 269
    sget v0, Le/v;->resolution_hd:I

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_c
    :goto_4
    if-nez v0, :cond_d

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-ne v0, v3, :cond_e

    .line 280
    .line 281
    sget v0, Le/v;->resolution_fhd:I

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_e
    :goto_5
    sget v0, Le/v;->resolution_hd:I

    .line 285
    .line 286
    :goto_6
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 287
    .line 288
    .line 289
    sget p2, Le/v;->auto_switch:I

    .line 290
    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    check-cast p2, Landroid/widget/Switch;

    .line 296
    .line 297
    new-instance v0, Landroid/os/a;

    .line 298
    .line 299
    const/16 v4, 0x10

    .line 300
    .line 301
    invoke-direct {v0, v4}, Landroid/os/a;-><init>(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->z()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 316
    .line 317
    .line 318
    sget p2, Le/v;->active_layout:I

    .line 319
    .line 320
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    sget v0, Le/v;->wireless_active_title:I

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/widget/TextView;

    .line 331
    .line 332
    sget v4, Le/v;->mode_tv:I

    .line 333
    .line 334
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    check-cast v4, Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    const/16 v6, 0x17

    .line 345
    .line 346
    if-eqz v5, :cond_17

    .line 347
    .line 348
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lcom/syu/carlink/CarLink;->H()Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lcom/syu/carlink/CarLink;->I()Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    if-eqz v7, :cond_f

    .line 363
    .line 364
    if-nez v8, :cond_f

    .line 365
    .line 366
    move v9, v3

    .line 367
    goto :goto_7

    .line 368
    :cond_f
    move v9, v1

    .line 369
    :goto_7
    invoke-virtual {p2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    .line 371
    .line 372
    if-eqz v7, :cond_10

    .line 373
    .line 374
    if-nez v8, :cond_10

    .line 375
    .line 376
    move p2, v3

    .line 377
    goto :goto_8

    .line 378
    :cond_10
    move p2, v1

    .line 379
    :goto_8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 380
    .line 381
    .line 382
    if-eqz v7, :cond_11

    .line 383
    .line 384
    if-nez v8, :cond_11

    .line 385
    .line 386
    move p2, v3

    .line 387
    goto :goto_9

    .line 388
    :cond_11
    move p2, v1

    .line 389
    :goto_9
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 390
    .line 391
    .line 392
    if-nez v7, :cond_12

    .line 393
    .line 394
    sget p2, Le/x;->not_supprot_carplay:I

    .line 395
    .line 396
    invoke-virtual {v5, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 397
    .line 398
    .line 399
    move-result-object p2

    .line 400
    goto :goto_a

    .line 401
    :cond_12
    if-eqz v8, :cond_13

    .line 402
    .line 403
    sget p2, Le/x;->activated_msg:I

    .line 404
    .line 405
    invoke-virtual {v5, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    goto :goto_a

    .line 410
    :cond_13
    sget p2, Le/x;->inactivated_msg:I

    .line 411
    .line 412
    invoke-virtual {v5, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    :goto_a
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    if-eqz v7, :cond_14

    .line 420
    .line 421
    if-nez v8, :cond_14

    .line 422
    .line 423
    sget p2, Le/t;->itemColor:I

    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_14
    sget p2, Le/t;->disenableitemColor:I

    .line 427
    .line 428
    :goto_b
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 429
    .line 430
    const/4 v8, 0x0

    .line 431
    if-lt v7, v6, :cond_15

    .line 432
    .line 433
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    invoke-virtual {v9, p2, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    .line 443
    .line 444
    goto :goto_c

    .line 445
    :cond_15
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    .line 455
    .line 456
    :goto_c
    if-lt v7, v6, :cond_16

    .line 457
    .line 458
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0, p2, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 463
    .line 464
    .line 465
    move-result p2

    .line 466
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_16
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    .line 480
    .line 481
    :goto_d
    sget p2, Le/v;->version_name_tv:I

    .line 482
    .line 483
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 484
    .line 485
    .line 486
    move-result-object p2

    .line 487
    check-cast p2, Landroid/widget/TextView;

    .line 488
    .line 489
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 502
    .line 503
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    :cond_17
    sget p2, Le/v;->back_iv:I

    .line 511
    .line 512
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    if-eqz p2, :cond_18

    .line 517
    .line 518
    new-instance v0, Li/h;

    .line 519
    .line 520
    invoke-direct {v0, p0, v1}, Li/h;-><init>(Lcom/syu/carlink/fragment/SettingsFragment;I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    .line 525
    .line 526
    :cond_18
    sget p2, Le/v;->car_mark_settings:I

    .line 527
    .line 528
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 529
    .line 530
    .line 531
    move-result-object p2

    .line 532
    if-eqz p2, :cond_1a

    .line 533
    .line 534
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 535
    .line 536
    .line 537
    invoke-static {}, Lcom/syu/carlink/CarLink;->w()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_19

    .line 542
    .line 543
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    :cond_19
    new-instance v0, Li/h;

    .line 547
    .line 548
    invoke-direct {v0, p0, v3}, Li/h;-><init>(Lcom/syu/carlink/fragment/SettingsFragment;I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    .line 553
    .line 554
    :cond_1a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 555
    .line 556
    if-gt p2, v6, :cond_1b

    .line 557
    .line 558
    sget p2, Le/v;->band_layout:I

    .line 559
    .line 560
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object p2

    .line 564
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    :cond_1b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 568
    .line 569
    .line 570
    move-result-object p2

    .line 571
    instance-of p2, p2, Lcom/syu/carlink/MainActivity;

    .line 572
    .line 573
    if-eqz p2, :cond_1d

    .line 574
    .line 575
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    invoke-virtual {p2}, Lcom/syu/carlink/CarLink;->h()I

    .line 580
    .line 581
    .line 582
    move-result p2

    .line 583
    const/16 v0, 0x80

    .line 584
    .line 585
    if-ne p2, v0, :cond_1c

    .line 586
    .line 587
    sget p2, Le/v;->constraintLayout:I

    .line 588
    .line 589
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object p2

    .line 593
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    .line 595
    .line 596
    sget p2, Le/v;->car_mark_settings:I

    .line 597
    .line 598
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 603
    .line 604
    .line 605
    goto :goto_e

    .line 606
    :cond_1c
    const-string p2, "sys.carlink.logo_enable"

    .line 607
    .line 608
    invoke-static {p2, v3}, Lt/b;->o(Ljava/lang/String;Z)Z

    .line 609
    .line 610
    .line 611
    move-result p2

    .line 612
    if-nez p2, :cond_1d

    .line 613
    .line 614
    sget p2, Le/v;->car_mark_settings:I

    .line 615
    .line 616
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 621
    .line 622
    .line 623
    :cond_1d
    :goto_e
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/SettingsFragment;->a()V

    .line 624
    .line 625
    .line 626
    return-void

    .line 627
    :array_0
    .array-data 4
        0x5f
        0x70
        0x8c
    .end array-data
.end method
