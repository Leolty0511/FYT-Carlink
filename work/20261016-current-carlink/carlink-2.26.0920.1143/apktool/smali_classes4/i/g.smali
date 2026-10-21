.class public final synthetic Li/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/syu/carlink/fragment/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/fragment/SettingsFragment;I)V
    .locals 0

    iput p2, p0, Li/g;->b:I

    iput-object p1, p0, Li/g;->c:Lcom/syu/carlink/fragment/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    .line 1
    iget v0, p0, Li/g;->b:I

    .line 2
    .line 3
    const-string v1, "HDL"

    .line 4
    .line 5
    const-string v2, "    checkedId: "

    .line 6
    .line 7
    const-string v3, "  group : "

    .line 8
    .line 9
    iget-object v4, p0, Li/g;->c:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 10
    .line 11
    const-string v5, "this$0"

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :pswitch_0
    sget v0, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 19
    .line 20
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget p1, Le/v;->fps_low:I

    .line 45
    .line 46
    if-ne p2, p1, :cond_0

    .line 47
    .line 48
    const/16 p1, 0x14

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget p1, Le/v;->fps_medium:I

    .line 52
    .line 53
    if-ne p2, p1, :cond_1

    .line 54
    .line 55
    sget p1, Le/m;->a:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget p1, Le/v;->fps_high:I

    .line 59
    .line 60
    if-ne p2, p1, :cond_2

    .line 61
    .line 62
    const/16 p1, 0x3c

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, -0x1

    .line 66
    :goto_0
    if-lez p1, :cond_6

    .line 67
    .line 68
    sget-object p2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    const-string v1, "me"

    .line 72
    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object p2, p2, Lp/b;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p2, Landroid/content/SharedPreferences;

    .line 82
    .line 83
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-string v2, "fps"

    .line 88
    .line 89
    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    sget-object p2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    if-eqz p2, :cond_6

    .line 111
    .line 112
    iget-object p2, p2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    instance-of p1, p1, Lcom/syu/carlink/MainActivity;

    .line 117
    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    new-instance v0, Landroid/util/Size;

    .line 131
    .line 132
    iget v1, p2, Lh/c;->b:I

    .line 133
    .line 134
    iget p2, p2, Lh/c;->c:I

    .line 135
    .line 136
    invoke-direct {v0, v1, p2}, Landroid/util/Size;-><init>(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/syu/carlink/CarLinkService;->k(Landroid/util/Size;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_4
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_5
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_6
    :goto_1
    return-void

    .line 156
    :goto_2
    sget v0, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 157
    .line 158
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sget p1, Le/v;->resolution_hd:I

    .line 183
    .line 184
    if-ne p2, p1, :cond_7

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    sget p1, Le/v;->resolution_fhd:I

    .line 188
    .line 189
    if-ne p2, p1, :cond_8

    .line 190
    .line 191
    const/4 p1, 0x1

    .line 192
    goto :goto_4

    .line 193
    :cond_8
    :goto_3
    const/4 p1, 0x0

    .line 194
    :goto_4
    iget-object p2, v4, Lcom/syu/carlink/fragment/SettingsFragment;->d:Ls/a;

    .line 195
    .line 196
    invoke-interface {p2}, Ls/a;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    check-cast p2, Lg/b;

    .line 201
    .line 202
    iget-object p2, p2, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 203
    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
