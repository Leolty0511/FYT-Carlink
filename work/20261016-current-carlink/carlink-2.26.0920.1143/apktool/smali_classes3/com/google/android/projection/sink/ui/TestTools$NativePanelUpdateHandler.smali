.class Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/TestTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativePanelUpdateHandler"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/projection/sink/ui/TestTools;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;Lcom/google/android/projection/sink/ui/TestTools$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_9

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_7

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Phone Status String"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v3, Lcom/google/android/projection/sink/R$id;->phone_status_text:I

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "Phone Status Photo"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lcom/google/android/projection/sink/R$id;->phone_status_photo:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    array-length v1, p1

    .line 77
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_2
    const/16 p1, 0x8

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "Media Browser Root String"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget v2, Lcom/google/android/projection/sink/R$id;->media_browser_root_text:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "Media Browser Source String"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sget v2, Lcom/google/android/projection/sink/R$id;->media_browser_source_text:I

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "Media Browser List String"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    sget v2, Lcom/google/android/projection/sink/R$id;->media_browser_list_text:I

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v0, "Media Browser Song String"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_d

    .line 194
    .line 195
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sget v1, Lcom/google/android/projection/sink/R$id;->media_browser_song_text:I

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v1, "Media Status String"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_8

    .line 225
    .line 226
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 227
    .line 228
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    sget v3, Lcom/google/android/projection/sink/R$id;->media_status_text:I

    .line 233
    .line 234
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string v0, "Media Album Art"

    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_d

    .line 254
    .line 255
    array-length v0, p1

    .line 256
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 261
    .line 262
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    sget v1, Lcom/google/android/projection/sink/R$id;->media_album_art:I

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/ImageView;

    .line 273
    .line 274
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v1, "Navigation String"

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    const-string v1, "Navigation Bitmap"

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-eqz v0, :cond_a

    .line 300
    .line 301
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 302
    .line 303
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    sget v3, Lcom/google/android/projection/sink/R$id;->navigation_text:I

    .line 308
    .line 309
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    :cond_a
    if-eqz p1, :cond_d

    .line 319
    .line 320
    array-length v0, p1

    .line 321
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 326
    .line 327
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    sget v1, Lcom/google/android/projection/sink/R$id;->navigation_image:I

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroid/widget/ImageView;

    .line 338
    .line 339
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_b
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 344
    .line 345
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    sget v0, Lcom/google/android/projection/sink/R$id;->video_focus:I

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Landroid/widget/ToggleButton;

    .line 356
    .line 357
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 358
    .line 359
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, " ("

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->mLabel:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v2, ")"

    .line 385
    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 394
    .line 395
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->mLabel:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_c

    .line 431
    .line 432
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    goto :goto_0

    .line 440
    :cond_c
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    :cond_d
    :goto_0
    return-void
.end method

.method public setApplicationIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->mLabel:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
