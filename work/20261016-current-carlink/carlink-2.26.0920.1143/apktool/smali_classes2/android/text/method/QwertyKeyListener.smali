.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    .line 9
    .line 10
    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/16 v1, 0x41

    .line 20
    .line 21
    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 28
    .line 29
    const/16 v1, 0x43

    .line 30
    .line 31
    const-string/jumbo v2, "\u00c7\u0106\u010c"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 38
    .line 39
    const/16 v1, 0x44

    .line 40
    .line 41
    const-string/jumbo v2, "\u010e"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 48
    .line 49
    const/16 v1, 0x45

    .line 50
    .line 51
    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 58
    .line 59
    const/16 v1, 0x47

    .line 60
    .line 61
    const-string/jumbo v2, "\u011e"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 68
    .line 69
    const/16 v1, 0x4c

    .line 70
    .line 71
    const-string/jumbo v2, "\u0141"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 78
    .line 79
    const/16 v1, 0x49

    .line 80
    .line 81
    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 88
    .line 89
    const/16 v1, 0x4e

    .line 90
    .line 91
    const-string/jumbo v2, "\u00d1\u0143\u0147"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 98
    .line 99
    const/16 v1, 0x4f

    .line 100
    .line 101
    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 108
    .line 109
    const/16 v1, 0x52

    .line 110
    .line 111
    const-string/jumbo v2, "\u0158"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 118
    .line 119
    const/16 v1, 0x53

    .line 120
    .line 121
    const-string/jumbo v2, "\u015a\u0160\u015e"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 128
    .line 129
    const/16 v1, 0x54

    .line 130
    .line 131
    const-string/jumbo v2, "\u0164"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 138
    .line 139
    const/16 v1, 0x55

    .line 140
    .line 141
    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 148
    .line 149
    const/16 v1, 0x59

    .line 150
    .line 151
    const-string/jumbo v2, "\u00dd\u0178"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 158
    .line 159
    const/16 v1, 0x5a

    .line 160
    .line 161
    const-string/jumbo v2, "\u0179\u017b\u017d"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 168
    .line 169
    const/16 v1, 0x61

    .line 170
    .line 171
    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 178
    .line 179
    const/16 v1, 0x63

    .line 180
    .line 181
    const-string/jumbo v2, "\u00e7\u0107\u010d"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 188
    .line 189
    const/16 v1, 0x64

    .line 190
    .line 191
    const-string/jumbo v2, "\u010f"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 198
    .line 199
    const/16 v1, 0x65

    .line 200
    .line 201
    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 208
    .line 209
    const/16 v1, 0x67

    .line 210
    .line 211
    const-string/jumbo v2, "\u011f"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 218
    .line 219
    const/16 v1, 0x69

    .line 220
    .line 221
    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 228
    .line 229
    const/16 v1, 0x6c

    .line 230
    .line 231
    const-string/jumbo v2, "\u0142"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 238
    .line 239
    const/16 v1, 0x6e

    .line 240
    .line 241
    const-string/jumbo v2, "\u00f1\u0144\u0148"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 248
    .line 249
    const/16 v1, 0x6f

    .line 250
    .line 251
    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 258
    .line 259
    const/16 v1, 0x72

    .line 260
    .line 261
    const-string/jumbo v2, "\u0159"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 268
    .line 269
    const/16 v1, 0x73

    .line 270
    .line 271
    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 278
    .line 279
    const/16 v1, 0x74

    .line 280
    .line 281
    const-string/jumbo v2, "\u0165"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 288
    .line 289
    const/16 v1, 0x75

    .line 290
    .line 291
    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 298
    .line 299
    const/16 v1, 0x79

    .line 300
    .line 301
    const-string/jumbo v2, "\u00fd\u00ff"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 308
    .line 309
    const/16 v1, 0x7a

    .line 310
    .line 311
    const-string/jumbo v2, "\u017a\u017c\u017e"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 318
    .line 319
    const v1, 0xef01

    .line 320
    .line 321
    .line 322
    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 329
    .line 330
    const/16 v1, 0x2f

    .line 331
    .line 332
    const-string v2, "\\"

    .line 333
    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 338
    .line 339
    const/16 v1, 0x31

    .line 340
    .line 341
    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 348
    .line 349
    const/16 v1, 0x32

    .line 350
    .line 351
    const-string/jumbo v2, "\u00b2\u2154"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 358
    .line 359
    const/16 v1, 0x33

    .line 360
    .line 361
    const-string/jumbo v2, "\u00b3\u00be\u215c"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 368
    .line 369
    const/16 v1, 0x34

    .line 370
    .line 371
    const-string/jumbo v2, "\u2074"

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 378
    .line 379
    const/16 v1, 0x35

    .line 380
    .line 381
    const-string/jumbo v2, "\u215d"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 388
    .line 389
    const/16 v1, 0x37

    .line 390
    .line 391
    const-string/jumbo v2, "\u215e"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 398
    .line 399
    const/16 v1, 0x30

    .line 400
    .line 401
    const-string/jumbo v2, "\u207f\u2205"

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 408
    .line 409
    const/16 v1, 0x24

    .line 410
    .line 411
    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 418
    .line 419
    const/16 v1, 0x25

    .line 420
    .line 421
    const-string/jumbo v2, "\u2030"

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 428
    .line 429
    const/16 v1, 0x2a

    .line 430
    .line 431
    const-string/jumbo v2, "\u2020\u2021"

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 438
    .line 439
    const/16 v1, 0x2d

    .line 440
    .line 441
    const-string/jumbo v2, "\u2013\u2014"

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 448
    .line 449
    const/16 v1, 0x2b

    .line 450
    .line 451
    const-string/jumbo v2, "\u00b1"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 458
    .line 459
    const/16 v1, 0x28

    .line 460
    .line 461
    const-string v2, "[{<"

    .line 462
    .line 463
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 467
    .line 468
    const/16 v1, 0x29

    .line 469
    .line 470
    const-string v2, "]}>"

    .line 471
    .line 472
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 476
    .line 477
    const/16 v1, 0x21

    .line 478
    .line 479
    const-string/jumbo v2, "\u00a1"

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 486
    .line 487
    const/16 v1, 0x22

    .line 488
    .line 489
    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 496
    .line 497
    const/16 v1, 0x3f

    .line 498
    .line 499
    const-string/jumbo v2, "\u00bf"

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 506
    .line 507
    const/16 v1, 0x2c

    .line 508
    .line 509
    const-string/jumbo v2, "\u201a\u201e"

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 516
    .line 517
    const/16 v1, 0x3d

    .line 518
    .line 519
    const-string/jumbo v2, "\u2260\u2248\u221e"

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 526
    .line 527
    const/16 v1, 0x3c

    .line 528
    .line 529
    const-string/jumbo v2, "\u2264\u00ab\u2039"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 536
    .line 537
    const/16 v1, 0x3e

    .line 538
    .line 539
    const-string/jumbo v2, "\u2265\u00bb\u203a"

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 4
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 9
    .line 10
    aget-object v2, v1, v0

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroid/text/method/QwertyKeyListener;

    .line 15
    .line 16
    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 17
    .line 18
    .line 19
    aput-object v2, v1, v0

    .line 20
    .line 21
    :cond_0
    sget-object p0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 22
    .line 23
    aget-object p0, p0, v0

    .line 24
    .line 25
    return-object p0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .line 1
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    .line 6
    .line 7
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 15
    .line 16
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 17
    .line 18
    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 7

    .line 1
    sub-int v0, p3, p2

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v4, v0, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    move p4, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p4, v4

    .line 30
    :goto_0
    if-eqz p4, :cond_3

    .line 31
    .line 32
    move p4, p2

    .line 33
    move v5, v4

    .line 34
    :goto_1
    if-ge p4, p3, :cond_4

    .line 35
    .line 36
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    :cond_2
    add-int/lit8 p4, p4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move v5, v4

    .line 52
    :cond_4
    if-nez v5, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    if-ne v5, v3, :cond_6

    .line 56
    .line 57
    invoke-static {v1}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_2

    .line 62
    :cond_6
    if-ne v5, v0, :cond_7

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_2

    .line 69
    :cond_7
    invoke-static {v1}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-ne p3, v0, :cond_8

    .line 78
    .line 79
    invoke-static {p1, p2, v1, v4, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_8

    .line 84
    .line 85
    return-object v2

    .line 86
    :cond_8
    return-object v1
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 13
    .line 14
    move v1, v2

    .line 15
    :goto_0
    array-length v3, v0

    .line 16
    if-ge v1, v3, :cond_0

    .line 17
    .line 18
    aget-object v3, v0, v1

    .line 19
    .line 20
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v1, v0, [C

    .line 31
    .line 32
    invoke-virtual {p3, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 33
    .line 34
    .line 35
    new-instance p3, Landroid/text/method/QwertyKeyListener$Replaced;

    .line 36
    .line 37
    invoke-direct {p3, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x21

    .line 41
    .line 42
    invoke-interface {p0, p3, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 6

    .line 1
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    move-object v4, p3

    .line 8
    check-cast v4, Ljava/lang/String;

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p3, 0x1

    .line 15
    if-ne p5, p3, :cond_1

    .line 16
    .line 17
    new-instance p5, Landroid/text/method/CharacterPickerDialog;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v0, p5

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    move v5, p4

    .line 27
    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p5}, Landroid/app/Dialog;->show()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return p3
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/BaseKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    if-eqz v7, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    move v11, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v11, v10

    .line 27
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ltz v2, :cond_2

    .line 44
    .line 45
    if-gez v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v12, v0

    .line 49
    move v13, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    invoke-static {v8, v10, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 52
    .line 53
    .line 54
    move v12, v10

    .line 55
    move v13, v12

    .line 56
    :goto_2
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    invoke-static {v8, v9}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v9, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iget-boolean v0, v6, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 75
    .line 76
    const/16 v16, 0x1

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 81
    .line 82
    .line 83
    move-result v17

    .line 84
    if-lez v17, :cond_4

    .line 85
    .line 86
    if-ne v13, v12, :cond_4

    .line 87
    .line 88
    if-lez v13, :cond_4

    .line 89
    .line 90
    add-int/lit8 v0, v13, -0x1

    .line 91
    .line 92
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eq v3, v5, :cond_3

    .line 97
    .line 98
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ne v3, v0, :cond_4

    .line 103
    .line 104
    :cond_3
    if-eqz v7, :cond_4

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    move-object/from16 v2, p2

    .line 112
    .line 113
    move v10, v5

    .line 114
    move/from16 v5, v17

    .line 115
    .line 116
    invoke-direct/range {v0 .. v5}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 123
    .line 124
    .line 125
    return v16

    .line 126
    :cond_4
    move v10, v5

    .line 127
    :cond_5
    const v0, 0xef01

    .line 128
    .line 129
    .line 130
    if-ne v10, v0, :cond_7

    .line 131
    .line 132
    if-eqz v7, :cond_6

    .line 133
    .line 134
    const v3, 0xef01

    .line 135
    .line 136
    .line 137
    const/4 v4, 0x1

    .line 138
    const/4 v5, 0x1

    .line 139
    move-object/from16 v0, p0

    .line 140
    .line 141
    move-object/from16 v1, p1

    .line 142
    .line 143
    move-object/from16 v2, p2

    .line 144
    .line 145
    invoke-direct/range {v0 .. v5}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 149
    .line 150
    .line 151
    return v16

    .line 152
    :cond_7
    const v0, 0xef00

    .line 153
    .line 154
    .line 155
    const/4 v1, 0x4

    .line 156
    const/16 v2, 0x10

    .line 157
    .line 158
    if-ne v10, v0, :cond_b

    .line 159
    .line 160
    if-ne v13, v12, :cond_8

    .line 161
    .line 162
    move v0, v12

    .line 163
    :goto_3
    if-lez v0, :cond_9

    .line 164
    .line 165
    sub-int v3, v12, v0

    .line 166
    .line 167
    if-ge v3, v1, :cond_9

    .line 168
    .line 169
    add-int/lit8 v3, v0, -0x1

    .line 170
    .line 171
    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-ltz v3, :cond_9

    .line 180
    .line 181
    add-int/lit8 v0, v0, -0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    move v0, v13

    .line 185
    :cond_9
    :try_start_0
    invoke-static {v8, v0, v12}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_4

    .line 194
    :catch_0
    const/4 v3, -0x1

    .line 195
    :goto_4
    move v5, v3

    .line 196
    if-ltz v5, :cond_a

    .line 197
    .line 198
    invoke-static {v8, v0, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 199
    .line 200
    .line 201
    move v13, v0

    .line 202
    goto :goto_5

    .line 203
    :cond_a
    const/4 v5, 0x0

    .line 204
    goto :goto_5

    .line 205
    :cond_b
    move v5, v10

    .line 206
    :goto_5
    const/16 v0, 0xa

    .line 207
    .line 208
    const-class v3, Landroid/text/method/QwertyKeyListener$Replaced;

    .line 209
    .line 210
    const/16 v4, 0x22

    .line 211
    .line 212
    const/16 v10, 0x21

    .line 213
    .line 214
    if-eqz v5, :cond_1e

    .line 215
    .line 216
    const/high16 v9, -0x80000000

    .line 217
    .line 218
    and-int/2addr v9, v5

    .line 219
    if-eqz v9, :cond_c

    .line 220
    .line 221
    const v9, 0x7fffffff

    .line 222
    .line 223
    .line 224
    and-int/2addr v5, v9

    .line 225
    move/from16 v9, v16

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_c
    const/4 v9, 0x0

    .line 229
    :goto_6
    if-ne v14, v13, :cond_f

    .line 230
    .line 231
    if-ne v15, v12, :cond_f

    .line 232
    .line 233
    sub-int v14, v12, v13

    .line 234
    .line 235
    add-int/lit8 v14, v14, -0x1

    .line 236
    .line 237
    if-nez v14, :cond_d

    .line 238
    .line 239
    invoke-interface {v8, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    invoke-static {v14, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    if-eqz v14, :cond_d

    .line 248
    .line 249
    move v5, v14

    .line 250
    move/from16 v9, v16

    .line 251
    .line 252
    const/4 v14, 0x0

    .line 253
    goto :goto_7

    .line 254
    :cond_d
    move v14, v9

    .line 255
    const/4 v9, 0x0

    .line 256
    :goto_7
    if-nez v9, :cond_e

    .line 257
    .line 258
    invoke-static {v8, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 259
    .line 260
    .line 261
    sget-object v9, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 262
    .line 263
    invoke-interface {v8, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    move v13, v12

    .line 267
    :cond_e
    move v9, v14

    .line 268
    :cond_f
    and-int/lit8 v14, v11, 0x1

    .line 269
    .line 270
    const/16 v15, 0x11

    .line 271
    .line 272
    if-eqz v14, :cond_12

    .line 273
    .line 274
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    if-eqz v14, :cond_12

    .line 279
    .line 280
    iget-object v14, v6, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 281
    .line 282
    invoke-static {v14, v8, v13}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    if-eqz v14, :cond_12

    .line 287
    .line 288
    sget-object v14, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 289
    .line 290
    invoke-interface {v8, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    invoke-interface {v8, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 295
    .line 296
    .line 297
    move-result v18

    .line 298
    if-ne v1, v13, :cond_10

    .line 299
    .line 300
    shr-int/lit8 v1, v18, 0x10

    .line 301
    .line 302
    const v2, 0xffff

    .line 303
    .line 304
    .line 305
    and-int/2addr v1, v2

    .line 306
    if-ne v1, v5, :cond_10

    .line 307
    .line 308
    invoke-interface {v8, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_10
    shl-int/lit8 v1, v5, 0x10

    .line 313
    .line 314
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v13, :cond_11

    .line 319
    .line 320
    or-int/2addr v1, v15

    .line 321
    const/4 v2, 0x0

    .line 322
    invoke-interface {v8, v14, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_11
    add-int/lit8 v2, v13, -0x1

    .line 327
    .line 328
    or-int/2addr v1, v10

    .line 329
    invoke-interface {v8, v14, v2, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 330
    .line 331
    .line 332
    :cond_12
    :goto_8
    if-eq v13, v12, :cond_13

    .line 333
    .line 334
    invoke-static {v8, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 335
    .line 336
    .line 337
    :cond_13
    sget-object v1, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 338
    .line 339
    invoke-interface {v8, v1, v13, v13, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 340
    .line 341
    .line 342
    int-to-char v2, v5

    .line 343
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-interface {v8, v13, v12, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 348
    .line 349
    .line 350
    invoke-interface {v8, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-ge v1, v2, :cond_14

    .line 359
    .line 360
    sget-object v12, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    .line 361
    .line 362
    invoke-interface {v8, v12, v1, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 363
    .line 364
    .line 365
    if-eqz v9, :cond_14

    .line 366
    .line 367
    invoke-static {v8, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 368
    .line 369
    .line 370
    sget-object v9, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 371
    .line 372
    invoke-interface {v8, v9, v1, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 373
    .line 374
    .line 375
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 376
    .line 377
    .line 378
    and-int/lit8 v2, v11, 0x2

    .line 379
    .line 380
    const/16 v9, 0x16

    .line 381
    .line 382
    const/16 v12, 0x20

    .line 383
    .line 384
    if-eqz v2, :cond_19

    .line 385
    .line 386
    iget-boolean v2, v6, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 387
    .line 388
    if-eqz v2, :cond_19

    .line 389
    .line 390
    if-eq v5, v12, :cond_15

    .line 391
    .line 392
    const/16 v2, 0x9

    .line 393
    .line 394
    if-eq v5, v2, :cond_15

    .line 395
    .line 396
    if-eq v5, v0, :cond_15

    .line 397
    .line 398
    const/16 v0, 0x2c

    .line 399
    .line 400
    if-eq v5, v0, :cond_15

    .line 401
    .line 402
    const/16 v0, 0x2e

    .line 403
    .line 404
    if-eq v5, v0, :cond_15

    .line 405
    .line 406
    if-eq v5, v10, :cond_15

    .line 407
    .line 408
    const/16 v0, 0x3f

    .line 409
    .line 410
    if-eq v5, v0, :cond_15

    .line 411
    .line 412
    if-eq v5, v4, :cond_15

    .line 413
    .line 414
    invoke-static {v5}, Ljava/lang/Character;->getType(I)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-ne v0, v9, :cond_19

    .line 419
    .line 420
    :cond_15
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 421
    .line 422
    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eq v0, v1, :cond_19

    .line 427
    .line 428
    move v0, v1

    .line 429
    :goto_9
    if-lez v0, :cond_17

    .line 430
    .line 431
    add-int/lit8 v2, v0, -0x1

    .line 432
    .line 433
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    const/16 v5, 0x27

    .line 438
    .line 439
    if-eq v2, v5, :cond_16

    .line 440
    .line 441
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-nez v2, :cond_16

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_16
    add-int/lit8 v0, v0, -0x1

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_17
    :goto_a
    invoke-direct {v6, v8, v0, v1, v7}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    if-eqz v2, :cond_19

    .line 456
    .line 457
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    const/4 v7, 0x0

    .line 462
    invoke-interface {v8, v7, v5, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 467
    .line 468
    const/4 v5, 0x0

    .line 469
    :goto_b
    array-length v7, v3

    .line 470
    if-ge v5, v7, :cond_18

    .line 471
    .line 472
    aget-object v7, v3, v5

    .line 473
    .line 474
    invoke-interface {v8, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    add-int/lit8 v5, v5, 0x1

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_18
    sub-int v3, v1, v0

    .line 481
    .line 482
    new-array v3, v3, [C

    .line 483
    .line 484
    const/4 v5, 0x0

    .line 485
    invoke-static {v8, v0, v1, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 486
    .line 487
    .line 488
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    .line 489
    .line 490
    invoke-direct {v5, v3}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    .line 491
    .line 492
    .line 493
    invoke-interface {v8, v5, v0, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v8, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 497
    .line 498
    .line 499
    :cond_19
    const/4 v0, 0x4

    .line 500
    and-int/2addr v0, v11

    .line 501
    if-eqz v0, :cond_1d

    .line 502
    .line 503
    iget-boolean v0, v6, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 504
    .line 505
    if-eqz v0, :cond_1d

    .line 506
    .line 507
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    add-int/lit8 v1, v0, -0x3

    .line 512
    .line 513
    if-ltz v1, :cond_1d

    .line 514
    .line 515
    add-int/lit8 v2, v0, -0x1

    .line 516
    .line 517
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-ne v3, v12, :cond_1d

    .line 522
    .line 523
    const/4 v3, 0x2

    .line 524
    sub-int/2addr v0, v3

    .line 525
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-ne v3, v12, :cond_1d

    .line 530
    .line 531
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    :goto_c
    if-lez v1, :cond_1b

    .line 536
    .line 537
    if-eq v3, v4, :cond_1a

    .line 538
    .line 539
    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    if-ne v5, v9, :cond_1b

    .line 544
    .line 545
    :cond_1a
    add-int/lit8 v3, v1, -0x1

    .line 546
    .line 547
    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    add-int/lit8 v1, v1, -0x1

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_1b
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-nez v1, :cond_1c

    .line 559
    .line 560
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-eqz v1, :cond_1d

    .line 565
    .line 566
    :cond_1c
    const-string v1, "."

    .line 567
    .line 568
    invoke-interface {v8, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 569
    .line 570
    .line 571
    :cond_1d
    return v16

    .line 572
    :cond_1e
    const/16 v1, 0x43

    .line 573
    .line 574
    move/from16 v2, p3

    .line 575
    .line 576
    if-ne v2, v1, :cond_23

    .line 577
    .line 578
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-nez v1, :cond_1f

    .line 583
    .line 584
    const/4 v1, 0x2

    .line 585
    invoke-virtual {v9, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    if-eqz v5, :cond_23

    .line 590
    .line 591
    goto :goto_d

    .line 592
    :cond_1f
    const/4 v1, 0x2

    .line 593
    :goto_d
    if-ne v13, v12, :cond_23

    .line 594
    .line 595
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    .line 596
    .line 597
    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    if-ne v5, v13, :cond_20

    .line 602
    .line 603
    add-int/lit8 v5, v13, -0x1

    .line 604
    .line 605
    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-eq v5, v0, :cond_20

    .line 610
    .line 611
    goto :goto_e

    .line 612
    :cond_20
    move/from16 v1, v16

    .line 613
    .line 614
    :goto_e
    sub-int v0, v13, v1

    .line 615
    .line 616
    invoke-interface {v8, v0, v13, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 621
    .line 622
    array-length v1, v0

    .line 623
    if-lez v1, :cond_23

    .line 624
    .line 625
    const/4 v1, 0x0

    .line 626
    aget-object v3, v0, v1

    .line 627
    .line 628
    invoke-interface {v8, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    aget-object v5, v0, v1

    .line 633
    .line 634
    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 635
    .line 636
    .line 637
    move-result v5

    .line 638
    new-instance v11, Ljava/lang/String;

    .line 639
    .line 640
    aget-object v12, v0, v1

    .line 641
    .line 642
    invoke-static {v12}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    .line 643
    .line 644
    .line 645
    move-result-object v12

    .line 646
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    .line 647
    .line 648
    .line 649
    aget-object v0, v0, v1

    .line 650
    .line 651
    invoke-interface {v8, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    if-lt v13, v5, :cond_22

    .line 655
    .line 656
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 657
    .line 658
    invoke-interface {v8, v0, v5, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 659
    .line 660
    .line 661
    invoke-interface {v8, v3, v5, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 662
    .line 663
    .line 664
    invoke-interface {v8, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    add-int/lit8 v2, v1, -0x1

    .line 669
    .line 670
    if-ltz v2, :cond_21

    .line 671
    .line 672
    invoke-interface {v8, v0, v2, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 673
    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_21
    invoke-interface {v8, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    :goto_f
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 680
    .line 681
    .line 682
    return v16

    .line 683
    :cond_22
    invoke-static/range {p2 .. p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 684
    .line 685
    .line 686
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    return v0

    .line 691
    :cond_23
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    return v0
.end method
