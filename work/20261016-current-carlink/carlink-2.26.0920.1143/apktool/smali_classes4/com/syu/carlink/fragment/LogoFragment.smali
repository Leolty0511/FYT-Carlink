.class public final Lcom/syu/carlink/fragment/LogoFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:I

.field public final f:Le/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x5f

    .line 10
    .line 11
    iput v0, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 12
    .line 13
    new-instance v0, Le/n;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p0, v1}, Le/n;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/syu/carlink/fragment/LogoFragment;->f:Le/n;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/fragment/LogoFragment;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "msgTv"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
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
    sget-object p3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 7
    .line 8
    const-string v0, "me"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p3, :cond_7

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/syu/carlink/CarLink;->h()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iput p3, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    instance-of p3, p3, Lcom/syu/carlink/MainActivity;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p3, :cond_5

    .line 27
    .line 28
    const/4 p3, 0x2

    .line 29
    new-array v3, p3, [Ljava/lang/Class;

    .line 30
    .line 31
    const-class v4, Ljava/lang/String;

    .line 32
    .line 33
    aput-object v4, v3, v2

    .line 34
    .line 35
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-static {v4}, Lt/b;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    aput-object v4, v3, v5

    .line 42
    .line 43
    new-array v4, p3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v6, "sys.carlink.universal_skin"

    .line 46
    .line 47
    aput-object v6, v4, v2

    .line 48
    .line 49
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    aput-object v6, v4, v5

    .line 52
    .line 53
    const-string v6, "android.os.SystemProperties"

    .line 54
    .line 55
    const-string v7, "getBoolean"

    .line 56
    .line 57
    invoke-static {v6, v1, v7, v3, v4}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v3, v2

    .line 71
    :goto_0
    if-eqz v3, :cond_1

    .line 72
    .line 73
    sget p3, Le/w;->logo_fragment:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-array v3, v5, [I

    .line 77
    .line 78
    const/16 v4, 0x83

    .line 79
    .line 80
    aput v4, v3, v2

    .line 81
    .line 82
    iget v4, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 83
    .line 84
    invoke-static {v3, v4}, Lt/c;->H([II)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    sget p3, Le/w;->logo_fragment_dudu:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-array p3, p3, [I

    .line 94
    .line 95
    fill-array-data p3, :array_0

    .line 96
    .line 97
    .line 98
    iget v3, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 99
    .line 100
    invoke-static {p3, v3}, Lt/c;->H([II)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_3

    .line 105
    .line 106
    sget p3, Le/w;->logo_fragment_yuf:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    new-array p3, v5, [I

    .line 110
    .line 111
    const/16 v3, 0x5f

    .line 112
    .line 113
    aput v3, p3, v2

    .line 114
    .line 115
    iget v3, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 116
    .line 117
    invoke-static {p3, v3}, Lt/c;->H([II)Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_4

    .line 122
    .line 123
    sget p3, Le/w;->logo_fragment_tzy2:I

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    sget p3, Le/w;->logo_fragment:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    sget p3, Le/w;->logo_fragment:I

    .line 130
    .line 131
    :goto_1
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 132
    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/syu/carlink/fragment/LogoFragment;->f:Le/n;

    .line 142
    .line 143
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_6
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :cond_7
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :array_0
    .array-data 4
        0x70
        0x8c
    .end array-data
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
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
    iget-object v1, p0, Lcom/syu/carlink/fragment/LogoFragment;->f:Le/n;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "me"

    .line 21
    .line 22
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    throw v0
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "me"

    .line 13
    .line 14
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    throw v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

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
    sget p2, Le/v;->logo_layout:I

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
    iget v2, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

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
    sget p2, Le/v;->connecting_iv:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/syu/carlink/fragment/LogoFragment;->d:Landroid/widget/ImageView;

    .line 60
    .line 61
    sget p2, Le/v;->msg_tv:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "view.findViewById(R.id.msg_tv)"

    .line 68
    .line 69
    invoke-static {p2, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast p2, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object p2, p0, Lcom/syu/carlink/fragment/LogoFragment;->c:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/LogoFragment;->a()Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    sget v0, Le/x;->link_waitting:I

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    sget p2, Le/v;->setting_iv:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance v0, Li/d;

    .line 96
    .line 97
    invoke-direct {v0, p0, v1}, Li/d;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    sget v0, Le/v;->back_iv:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/4 v2, 0x1

    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    new-instance v3, Li/d;

    .line 113
    .line 114
    invoke-direct {v3, p0, v2}, Li/d;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    sget v0, Le/v;->support_msg:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/TextView;

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    const/16 v4, 0x8

    .line 130
    .line 131
    const/16 v5, 0x29

    .line 132
    .line 133
    const-string v6, "me"

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 138
    .line 139
    if-eqz v7, :cond_8

    .line 140
    .line 141
    invoke-static {}, Lcom/syu/carlink/CarLink;->H()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    sget-object v8, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 146
    .line 147
    if-eqz v8, :cond_7

    .line 148
    .line 149
    invoke-static {}, Lcom/syu/carlink/CarLink;->I()Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_3

    .line 154
    .line 155
    iget v8, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 156
    .line 157
    if-eq v8, v5, :cond_3

    .line 158
    .line 159
    move v8, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_3
    move v8, v1

    .line 162
    :goto_0
    sget v9, Le/x;->android_auto_title:I

    .line 163
    .line 164
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    const-string v10, "if(supportAuto) getStrin\u2026droid_auto_title) else \"\""

    .line 169
    .line 170
    invoke-static {v9, v10}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    if-eqz v7, :cond_4

    .line 174
    .line 175
    const-string v7, " + "

    .line 176
    .line 177
    invoke-static {v9, v7}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    sget v10, Le/x;->wire_carplay_title:I

    .line 182
    .line 183
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    if-eqz v8, :cond_4

    .line 195
    .line 196
    invoke-static {v9, v7}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    sget v8, Le/x;->wireless_carplay_title:I

    .line 201
    .line 202
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    :cond_4
    iget v7, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 214
    .line 215
    const/16 v8, 0x80

    .line 216
    .line 217
    if-ne v7, v8, :cond_5

    .line 218
    .line 219
    sget v7, Le/x;->wireless_carplay_title:I

    .line 220
    .line 221
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    :cond_5
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 229
    .line 230
    if-eqz v7, :cond_6

    .line 231
    .line 232
    invoke-static {}, Lcom/syu/carlink/CarLink;->w()Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-nez v7, :cond_9

    .line 237
    .line 238
    iget v7, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 239
    .line 240
    if-eq v7, v5, :cond_9

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    invoke-static {v6}, Lt/b;->B(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3

    .line 250
    :cond_7
    invoke-static {v6}, Lt/b;->B(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v3

    .line 254
    :cond_8
    invoke-static {v6}, Lt/b;->B(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v3

    .line 258
    :cond_9
    :goto_1
    iget v0, p0, Lcom/syu/carlink/fragment/LogoFragment;->e:I

    .line 259
    .line 260
    if-ne v0, v5, :cond_a

    .line 261
    .line 262
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :cond_a
    sget p2, Le/v;->textView11:I

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    instance-of v0, p2, Landroid/widget/TextView;

    .line 272
    .line 273
    if-eqz v0, :cond_b

    .line 274
    .line 275
    check-cast p2, Landroid/widget/TextView;

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_b
    move-object p2, v3

    .line 279
    :goto_2
    if-eqz p2, :cond_c

    .line 280
    .line 281
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    goto :goto_3

    .line 286
    :cond_c
    move-object p2, v3

    .line 287
    :goto_3
    if-nez p2, :cond_d

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_d
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 291
    .line 292
    .line 293
    :goto_4
    sget p2, Le/v;->help_msg_layout:I

    .line 294
    .line 295
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    instance-of v0, p2, Landroid/view/View;

    .line 300
    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_e
    move-object p2, v3

    .line 305
    :goto_5
    iput-object p2, p0, Lcom/syu/carlink/fragment/LogoFragment;->b:Landroid/view/View;

    .line 306
    .line 307
    if-eqz p2, :cond_f

    .line 308
    .line 309
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    sget v0, Le/v;->help_msg_close:I

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    new-instance v4, Li/e;

    .line 319
    .line 320
    invoke-direct {v4, p2, v1}, Li/e;-><init>(Landroid/view/View;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    sget v0, Le/v;->help_iv:I

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v1, Li/e;

    .line 333
    .line 334
    invoke-direct {v1, p2, v2}, Li/e;-><init>(Landroid/view/View;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    .line 339
    .line 340
    :cond_f
    sget p2, Le/v;->home_iv:I

    .line 341
    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    instance-of p2, p1, Landroid/widget/ImageView;

    .line 347
    .line 348
    if-eqz p2, :cond_10

    .line 349
    .line 350
    check-cast p1, Landroid/widget/ImageView;

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_10
    move-object p1, v3

    .line 354
    :goto_6
    if-eqz p1, :cond_11

    .line 355
    .line 356
    new-instance p2, Li/f;

    .line 357
    .line 358
    invoke-direct {p2}, Li/f;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .line 363
    .line 364
    :cond_11
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 365
    .line 366
    if-eqz p1, :cond_12

    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    iget-object p1, p1, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 373
    .line 374
    iget-object p2, p0, Lcom/syu/carlink/fragment/LogoFragment;->f:Le/n;

    .line 375
    .line 376
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_12
    invoke-static {v6}, Lt/b;->B(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v3

    .line 384
    nop

    .line 385
    :array_0
    .array-data 4
        0x5f
        0x70
        0x8c
    .end array-data
.end method
