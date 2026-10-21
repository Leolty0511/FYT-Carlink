.class public abstract Lkotlin/text/a;
.super Lt/b;
.source "SourceFile"


# direct methods
.method public static final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "\r"

    .line 7
    .line 8
    const-string v2, "\r\n"

    .line 9
    .line 10
    const-string v3, "\n"

    .line 11
    .line 12
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "asList(this)"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lf0/c;

    .line 26
    .line 27
    new-instance v4, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-direct {v4, v1, v5}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>(Ljava/util/List;Z)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0, v5, v5, v4}, Lf0/c;-><init>(Ljava/lang/CharSequence;IILz/p;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Le0/f;

    .line 42
    .line 43
    invoke-direct {v4, v2, v1}, Le0/f;-><init>(Le0/g;Lz/l;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Lkotlin/sequences/b;->I(Le0/g;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x1

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    move-object v8, v6

    .line 71
    check-cast v8, Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v8}, Lf0/g;->H(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    xor-int/2addr v7, v8

    .line 78
    if-eqz v7, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/4 v8, -0x1

    .line 102
    if-eqz v6, :cond_5

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    move v10, v5

    .line 115
    :goto_2
    if-ge v10, v9, :cond_3

    .line 116
    .line 117
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    invoke-static {v11}, Lt/b;->r(C)Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    xor-int/2addr v11, v7

    .line 126
    if-eqz v11, :cond_2

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move v10, v8

    .line 133
    :goto_3
    if-ne v10, v8, :cond_4

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    const/4 v6, 0x0

    .line 156
    if-nez v4, :cond_6

    .line 157
    .line 158
    move-object v4, v6

    .line 159
    goto :goto_5

    .line 160
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/lang/Comparable;

    .line 165
    .line 166
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eqz v9, :cond_8

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Ljava/lang/Comparable;

    .line 177
    .line 178
    invoke-interface {v4, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-lez v10, :cond_7

    .line 183
    .line 184
    move-object v4, v9

    .line 185
    goto :goto_4

    .line 186
    :cond_8
    :goto_5
    check-cast v4, Ljava/lang/Integer;

    .line 187
    .line 188
    if-eqz v4, :cond_9

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    goto :goto_6

    .line 195
    :cond_9
    move v2, v5

    .line 196
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    mul-int/2addr v4, v5

    .line 205
    add-int/2addr v4, p0

    .line 206
    sget-object p0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    add-int/2addr v9, v8

    .line 213
    new-instance v8, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move v10, v5

    .line 223
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_12

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    add-int/lit8 v12, v10, 0x1

    .line 234
    .line 235
    if-ltz v10, :cond_11

    .line 236
    .line 237
    check-cast v11, Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v10, :cond_a

    .line 240
    .line 241
    if-ne v10, v9, :cond_b

    .line 242
    .line 243
    :cond_a
    invoke-static {v11}, Lf0/g;->H(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-eqz v10, :cond_b

    .line 248
    .line 249
    move-object v11, v6

    .line 250
    goto :goto_a

    .line 251
    :cond_b
    invoke-static {v11, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    if-ltz v2, :cond_c

    .line 255
    .line 256
    move v10, v7

    .line 257
    goto :goto_8

    .line 258
    :cond_c
    move v10, v5

    .line 259
    :goto_8
    if-eqz v10, :cond_10

    .line 260
    .line 261
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    if-le v2, v10, :cond_d

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_d
    move v10, v2

    .line 269
    :goto_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    const-string v13, "this as java.lang.String).substring(startIndex)"

    .line 274
    .line 275
    invoke-static {v10, v13}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {p0, v10}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    check-cast v10, Ljava/lang/String;

    .line 283
    .line 284
    if-nez v10, :cond_e

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_e
    move-object v11, v10

    .line 288
    :goto_a
    if-eqz v11, :cond_f

    .line 289
    .line 290
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    :cond_f
    move v10, v12

    .line 294
    goto :goto_7

    .line 295
    :cond_10
    const-string p0, "Requested character count "

    .line 296
    .line 297
    const-string v0, " is less than zero."

    .line 298
    .line 299
    invoke-static {p0, v2, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :cond_11
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 314
    .line 315
    const-string v0, "Index overflow has happened."

    .line 316
    .line 317
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p0

    .line 321
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 324
    .line 325
    .line 326
    const-string v0, ""

    .line 327
    .line 328
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_17

    .line 340
    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    add-int/2addr v5, v7

    .line 346
    if-le v5, v7, :cond_13

    .line 347
    .line 348
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 349
    .line 350
    .line 351
    :cond_13
    if-nez v2, :cond_14

    .line 352
    .line 353
    move v4, v7

    .line 354
    goto :goto_c

    .line 355
    :cond_14
    instance-of v4, v2, Ljava/lang/CharSequence;

    .line 356
    .line 357
    :goto_c
    if-eqz v4, :cond_15

    .line 358
    .line 359
    check-cast v2, Ljava/lang/CharSequence;

    .line 360
    .line 361
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 362
    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_15
    instance-of v4, v2, Ljava/lang/Character;

    .line 366
    .line 367
    if-eqz v4, :cond_16

    .line 368
    .line 369
    check-cast v2, Ljava/lang/Character;

    .line 370
    .line 371
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 376
    .line 377
    .line 378
    goto :goto_b

    .line 379
    :cond_16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 384
    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    const-string v0, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    .line 395
    .line 396
    invoke-static {p0, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-object p0
.end method
