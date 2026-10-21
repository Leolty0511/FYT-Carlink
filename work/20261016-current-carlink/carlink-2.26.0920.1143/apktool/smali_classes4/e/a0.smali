.class public final Le/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroid/hardware/usb/UsbDevice;

.field public final c:I

.field public d:Z

.field public final synthetic e:Lcom/syu/carlink/UsbScanner;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/UsbScanner;Landroid/hardware/usb/UsbDevice;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/a0;->e:Lcom/syu/carlink/UsbScanner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Le/a0;->b:Landroid/hardware/usb/UsbDevice;

    .line 7
    .line 8
    iput p3, p0, Le/a0;->c:I

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    if-ne p3, p1, :cond_1

    .line 12
    .line 13
    sget-object p1, Lf/k;->y:Lf/k;

    .line 14
    .line 15
    invoke-virtual {p1}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, 0x0

    .line 23
    iput p3, p1, Lf/k;->v:I

    .line 24
    .line 25
    iget-object p2, p2, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object p3, p1, Lf/k;->q:Lf/b;

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lf/k;->s:Lf/b;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v0, 0x1f4

    .line 38
    .line 39
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v7, v0, Le/a0;->b:Landroid/hardware/usb/UsbDevice;

    .line 7
    .line 8
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v9, 0x1

    .line 28
    aput-object v3, v2, v9

    .line 29
    .line 30
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, " id: %04X, product id: %04X, "

    .line 35
    .line 36
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "format(format, *args)"

    .line 41
    .line 42
    invoke-static {v2, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v3, "CheckUsb  run dev: "

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "Usb"

    .line 52
    .line 53
    invoke-static {v3, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v2, v0, Le/a0;->c:I

    .line 57
    .line 58
    if-ne v2, v9, :cond_0

    .line 59
    .line 60
    move v6, v9

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v6, v4

    .line 63
    :goto_0
    if-eqz v2, :cond_2

    .line 64
    .line 65
    if-eq v2, v9, :cond_2

    .line 66
    .line 67
    if-eq v2, v1, :cond_1

    .line 68
    .line 69
    move v11, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v11, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v11, v1

    .line 74
    :goto_1
    iget-object v2, v0, Le/a0;->e:Lcom/syu/carlink/UsbScanner;

    .line 75
    .line 76
    if-lez v11, :cond_3

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget-object v8, v2, Lcom/syu/carlink/UsbScanner;->e:Landroid/os/b;

    .line 83
    .line 84
    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    if-eq v11, v9, :cond_7

    .line 88
    .line 89
    if-eq v11, v1, :cond_4

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_4
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    const-string v5, "me"

    .line 97
    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eq v1, v9, :cond_8

    .line 105
    .line 106
    const-string v1, "==========>>> Linked  Android Auto"

    .line 107
    .line 108
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 112
    .line 113
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v3, Lg/a;

    .line 118
    .line 119
    const/4 v12, 0x7

    .line 120
    const/4 v13, 0x1

    .line 121
    const/4 v14, 0x0

    .line 122
    const/4 v15, 0x0

    .line 123
    const/16 v16, 0x18

    .line 124
    .line 125
    move-object v10, v3

    .line 126
    invoke-direct/range {v10 .. v16}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 143
    .line 144
    .line 145
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 146
    .line 147
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v2, "usb"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v3, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    .line 157
    .line 158
    invoke-static {v2, v3}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v4, v2

    .line 162
    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 163
    .line 164
    new-instance v2, Le/l;

    .line 165
    .line 166
    move-object v3, v2

    .line 167
    move-object v5, v1

    .line 168
    invoke-direct/range {v3 .. v8}, Le/l;-><init>(Landroid/hardware/usb/UsbManager;Lcom/syu/carlink/CarLinkService;ZLandroid/hardware/usb/UsbDevice;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 172
    .line 173
    const-wide/16 v3, 0xc8

    .line 174
    .line 175
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v2

    .line 183
    :cond_6
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v2

    .line 187
    :cond_7
    const-string v1, "==========>>> Linked  Carplay"

    .line 188
    .line 189
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/syu/carlink/UsbScanner;->c()Landroid/os/Handler;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v2, v2, Lcom/syu/carlink/UsbScanner;->e:Landroid/os/b;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 202
    .line 203
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    new-instance v2, Lg/a;

    .line 208
    .line 209
    const/4 v12, 0x7

    .line 210
    const/4 v13, 0x1

    .line 211
    const/4 v14, 0x0

    .line 212
    const/4 v15, 0x0

    .line 213
    const/16 v16, 0x18

    .line 214
    .line 215
    move-object v10, v2

    .line 216
    invoke-direct/range {v10 .. v16}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    :goto_2
    iput-boolean v9, v0, Le/a0;->d:Z

    .line 223
    .line 224
    return-void
.end method
