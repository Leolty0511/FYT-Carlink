.class public final Le/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/hardware/usb/UsbManager;

.field public final synthetic c:Lcom/syu/carlink/CarLinkService;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/hardware/usb/UsbDevice;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Lcom/syu/carlink/CarLinkService;ZLandroid/hardware/usb/UsbDevice;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l;->b:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    iput-object p2, p0, Le/l;->c:Lcom/syu/carlink/CarLinkService;

    .line 4
    .line 5
    iput-boolean p3, p0, Le/l;->d:Z

    .line 6
    .line 7
    iput-object p4, p0, Le/l;->e:Landroid/hardware/usb/UsbDevice;

    .line 8
    .line 9
    iput-object p5, p0, Le/l;->f:Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/l;->b:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "usbManager.deviceList.values"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    iget-object v4, p0, Le/l;->e:Landroid/hardware/usb/UsbDevice;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    :cond_0
    move v0, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-ne v5, v6, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ne v1, v5, :cond_3

    .line 63
    .line 64
    move v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move v1, v3

    .line 67
    :goto_0
    if-eqz v1, :cond_2

    .line 68
    .line 69
    move v0, v2

    .line 70
    :goto_1
    const-string v1, "HDL"

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    const-string v0, " usbToAndroidAuto dev gone during wait, cancel dispatch"

    .line 75
    .line 76
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    const-string v0, "me"

    .line 99
    .line 100
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    throw v0

    .line 105
    :cond_5
    iget-object v0, p0, Le/l;->c:Lcom/syu/carlink/CarLinkService;

    .line 106
    .line 107
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->D:Le/g;

    .line 108
    .line 109
    iget-object v6, p0, Le/l;->f:Lkotlin/jvm/internal/Ref$IntRef;

    .line 110
    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v8, " usbToAndroidAuto dispatch on: "

    .line 116
    .line 117
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-boolean v8, p0, Le/l;->d:Z

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v9, "   dev: "

    .line 126
    .line 127
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/4 v9, 0x2

    .line 131
    new-array v10, v9, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    aput-object v11, v10, v3

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    aput-object v3, v10, v2

    .line 152
    .line 153
    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, " id: %04X, product id: %04X, "

    .line 158
    .line 159
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v3, "format(format, *args)"

    .line 164
    .line 165
    invoke-static {v2, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, " waited: "

    .line 172
    .line 173
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 177
    .line 178
    int-to-long v2, v2

    .line 179
    iget-wide v9, v0, Lcom/syu/carlink/CarLinkService;->x:J

    .line 180
    .line 181
    mul-long/2addr v2, v9

    .line 182
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, "ms"

    .line 186
    .line 187
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    check-cast v5, Lcom/syu/carlink/MainActivity;

    .line 198
    .line 199
    const-string v0, "dev"

    .line 200
    .line 201
    invoke-static {v4, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Le/o;

    .line 209
    .line 210
    invoke-direct {v1, v8}, Le/o;-><init>(Z)V

    .line 211
    .line 212
    .line 213
    const-wide/16 v2, 0x64

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    iget v2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 220
    .line 221
    add-int/lit8 v3, v2, 0x1

    .line 222
    .line 223
    iput v3, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 224
    .line 225
    iget v3, v0, Lcom/syu/carlink/CarLinkService;->y:I

    .line 226
    .line 227
    if-ge v2, v3, :cond_7

    .line 228
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v3, " usbToAndroidAuto uiCallback not ready, retry "

    .line 232
    .line 233
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget v3, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 237
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const/16 v3, 0x2f

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget v3, v0, Lcom/syu/carlink/CarLinkService;->y:I

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 259
    .line 260
    iget-wide v2, v0, Lcom/syu/carlink/CarLinkService;->x:J

    .line 261
    .line 262
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_7
    const-string v0, " usbToAndroidAuto uiCallback timeout, give up"

    .line 267
    .line 268
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :goto_2
    return-void
.end method
