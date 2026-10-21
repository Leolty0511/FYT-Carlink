.class public final synthetic Landroid/os/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroid/os/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    iget v2, p0, Landroid/os/b;->b:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "HDL"

    .line 11
    .line 12
    const-string/jumbo v5, "me"

    .line 13
    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "MainActivity  checkUsbDevice ============>>> CarLink.me.isPowerOn() : "

    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->v()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, "  CarLink.me.linkState()::"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    const-wide/16 v1, 0x1f4

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/syu/carlink/CarLinkService;->d(J)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_2
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_3
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :pswitch_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->t()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0}, Lh/c;->m()V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_5
    :goto_0
    return-void

    .line 122
    :cond_6
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :pswitch_2
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 127
    .line 128
    sget-object v0, Lf/k;->y:Lf/k;

    .line 129
    .line 130
    invoke-virtual {v0}, Lf/k;->l()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_3
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 135
    .line 136
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    iget-boolean v1, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 141
    .line 142
    if-nez v1, :cond_7

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Lh/c;->p(Z)V

    .line 155
    .line 156
    .line 157
    :cond_7
    return-void

    .line 158
    :cond_8
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :pswitch_4
    sget-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 163
    .line 164
    sget-object v0, Lf/k;->y:Lf/k;

    .line 165
    .line 166
    invoke-virtual {v0}, Lf/k;->l()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_5
    sget-object v2, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 171
    .line 172
    const-string v2, "============>>> handle Carplay TimeOut"

    .line 173
    .line 174
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 178
    .line 179
    if-eqz v2, :cond_a

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-object v2, v2, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 186
    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 195
    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iget-object v1, v1, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_9
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v1

    .line 212
    :cond_a
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v1

    .line 216
    :pswitch_6
    invoke-static {}, Landroid/os/Trace;->a()V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_7
    invoke-static {}, Landroid/os/GraphicsEnvironment;->a()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :goto_1
    sget-object v2, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 225
    .line 226
    const-string v2, "Usb"

    .line 227
    .line 228
    const-string v3, "==========>>> handleDevdetach Cut  auto"

    .line 229
    .line 230
    invoke-static {v2, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 234
    .line 235
    if-eqz v2, :cond_b

    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iget-object v1, v1, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 242
    .line 243
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    sget-object v0, Lf/k;->y:Lf/k;

    .line 247
    .line 248
    const-wide/16 v1, 0x0

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Lf/k;->e(J)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_b
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v1

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
