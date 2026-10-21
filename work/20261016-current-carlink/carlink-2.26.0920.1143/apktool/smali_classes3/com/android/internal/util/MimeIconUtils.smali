.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sMimeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    .line 7
    .line 8
    const v0, 0x1080343

    .line 9
    .line 10
    .line 11
    const-string v1, "application/vnd.android.package-archive"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "application/ogg"

    .line 17
    .line 18
    const v1, 0x1080344

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "application/x-flac"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "application/pgp-keys"

    .line 30
    .line 31
    const v1, 0x1080345

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string v0, "application/pgp-signature"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v0, "application/x-pkcs12"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v0, "application/x-pkcs7-certreqresp"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-string v0, "application/x-pkcs7-crl"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "application/x-x509-ca-cert"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string v0, "application/x-x509-user-cert"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v0, "application/x-pkcs7-certificates"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const-string v0, "application/x-pkcs7-mime"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string v0, "application/x-pkcs7-signature"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    const-string v0, "application/rdf+xml"

    .line 83
    .line 84
    const v1, 0x1080346

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    const-string v0, "application/rss+xml"

    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string v0, "application/x-object"

    .line 96
    .line 97
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    const-string v0, "application/xhtml+xml"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    const-string v0, "text/css"

    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    const-string v0, "text/html"

    .line 111
    .line 112
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    const-string v0, "text/xml"

    .line 116
    .line 117
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "text/x-c++hdr"

    .line 121
    .line 122
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    const-string v0, "text/x-c++src"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string v0, "text/x-chdr"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    const-string v0, "text/x-csrc"

    .line 136
    .line 137
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    const-string v0, "text/x-dsrc"

    .line 141
    .line 142
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    const-string v0, "text/x-csh"

    .line 146
    .line 147
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    const-string v0, "text/x-haskell"

    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    const-string v0, "text/x-java"

    .line 156
    .line 157
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    const-string v0, "text/x-literate-haskell"

    .line 161
    .line 162
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    const-string v0, "text/x-pascal"

    .line 166
    .line 167
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    const-string v0, "text/x-tcl"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    const-string v0, "text/x-tex"

    .line 176
    .line 177
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    const-string v0, "application/x-latex"

    .line 181
    .line 182
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    const-string v0, "application/x-texinfo"

    .line 186
    .line 187
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string v0, "application/atom+xml"

    .line 191
    .line 192
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    const-string v0, "application/ecmascript"

    .line 196
    .line 197
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const-string v0, "application/json"

    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string v0, "application/javascript"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    const-string v0, "application/xml"

    .line 211
    .line 212
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    const-string v0, "text/javascript"

    .line 216
    .line 217
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    const-string v0, "application/x-javascript"

    .line 221
    .line 222
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    const-string v0, "application/mac-binhex40"

    .line 226
    .line 227
    const v1, 0x1080347

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    const-string v0, "application/rar"

    .line 234
    .line 235
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    const-string v0, "application/zip"

    .line 239
    .line 240
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    const-string v0, "application/x-apple-diskimage"

    .line 244
    .line 245
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    const-string v0, "application/x-debian-package"

    .line 249
    .line 250
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    const-string v0, "application/x-gtar"

    .line 254
    .line 255
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    const-string v0, "application/x-iso9660-image"

    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    const-string v0, "application/x-lha"

    .line 264
    .line 265
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    const-string v0, "application/x-lzh"

    .line 269
    .line 270
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    const-string v0, "application/x-lzx"

    .line 274
    .line 275
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 276
    .line 277
    .line 278
    const-string v0, "application/x-stuffit"

    .line 279
    .line 280
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    const-string v0, "application/x-tar"

    .line 284
    .line 285
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    const-string v0, "application/x-webarchive"

    .line 289
    .line 290
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string v0, "application/x-webarchive-xml"

    .line 294
    .line 295
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    const-string v0, "application/gzip"

    .line 299
    .line 300
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    const-string v0, "application/x-7z-compressed"

    .line 304
    .line 305
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    const-string v0, "application/x-deb"

    .line 309
    .line 310
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 311
    .line 312
    .line 313
    const-string v0, "application/x-rar-compressed"

    .line 314
    .line 315
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    const-string v0, "text/x-vcard"

    .line 319
    .line 320
    const v1, 0x1080348

    .line 321
    .line 322
    .line 323
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    const-string v0, "text/vcard"

    .line 327
    .line 328
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 329
    .line 330
    .line 331
    const-string v0, "text/calendar"

    .line 332
    .line 333
    const v1, 0x108034a

    .line 334
    .line 335
    .line 336
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    const-string v0, "text/x-vcalendar"

    .line 340
    .line 341
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    const-string v0, "application/x-font"

    .line 345
    .line 346
    const v1, 0x108034d

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    const-string v0, "application/font-woff"

    .line 353
    .line 354
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    const-string v0, "application/x-font-woff"

    .line 358
    .line 359
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    const-string v0, "application/x-font-ttf"

    .line 363
    .line 364
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    const-string v0, "application/vnd.oasis.opendocument.graphics"

    .line 368
    .line 369
    const v1, 0x108034f

    .line 370
    .line 371
    .line 372
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    .line 376
    .line 377
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 378
    .line 379
    .line 380
    const-string v0, "application/vnd.oasis.opendocument.image"

    .line 381
    .line 382
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 383
    .line 384
    .line 385
    const-string v0, "application/vnd.stardivision.draw"

    .line 386
    .line 387
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    const-string v0, "application/vnd.sun.xml.draw"

    .line 391
    .line 392
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 393
    .line 394
    .line 395
    const-string v0, "application/vnd.sun.xml.draw.template"

    .line 396
    .line 397
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 398
    .line 399
    .line 400
    const v0, 0x1080350

    .line 401
    .line 402
    .line 403
    const-string v1, "application/pdf"

    .line 404
    .line 405
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 406
    .line 407
    .line 408
    const-string v0, "application/vnd.stardivision.impress"

    .line 409
    .line 410
    const v1, 0x1080352

    .line 411
    .line 412
    .line 413
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 414
    .line 415
    .line 416
    const-string v0, "application/vnd.sun.xml.impress"

    .line 417
    .line 418
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 419
    .line 420
    .line 421
    const-string v0, "application/vnd.sun.xml.impress.template"

    .line 422
    .line 423
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 424
    .line 425
    .line 426
    const-string v0, "application/x-kpresenter"

    .line 427
    .line 428
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    const-string v0, "application/vnd.oasis.opendocument.presentation"

    .line 432
    .line 433
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 434
    .line 435
    .line 436
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    .line 437
    .line 438
    const v1, 0x1080353

    .line 439
    .line 440
    .line 441
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    .line 445
    .line 446
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 447
    .line 448
    .line 449
    const-string v0, "application/vnd.stardivision.calc"

    .line 450
    .line 451
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    const-string v0, "application/vnd.sun.xml.calc"

    .line 455
    .line 456
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    const-string v0, "application/vnd.sun.xml.calc.template"

    .line 460
    .line 461
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 462
    .line 463
    .line 464
    const-string v0, "application/x-kspread"

    .line 465
    .line 466
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 467
    .line 468
    .line 469
    const-string v0, "application/vnd.oasis.opendocument.text"

    .line 470
    .line 471
    const v1, 0x1080349

    .line 472
    .line 473
    .line 474
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 475
    .line 476
    .line 477
    const-string v0, "application/vnd.oasis.opendocument.text-master"

    .line 478
    .line 479
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 480
    .line 481
    .line 482
    const-string v0, "application/vnd.oasis.opendocument.text-template"

    .line 483
    .line 484
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 485
    .line 486
    .line 487
    const-string v0, "application/vnd.oasis.opendocument.text-web"

    .line 488
    .line 489
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 490
    .line 491
    .line 492
    const-string v0, "application/vnd.stardivision.writer"

    .line 493
    .line 494
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    const-string v0, "application/vnd.stardivision.writer-global"

    .line 498
    .line 499
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    const-string v0, "application/vnd.sun.xml.writer"

    .line 503
    .line 504
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 505
    .line 506
    .line 507
    const-string v0, "application/vnd.sun.xml.writer.global"

    .line 508
    .line 509
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 510
    .line 511
    .line 512
    const-string v0, "application/vnd.sun.xml.writer.template"

    .line 513
    .line 514
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 515
    .line 516
    .line 517
    const-string v0, "application/x-abiword"

    .line 518
    .line 519
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 520
    .line 521
    .line 522
    const-string v0, "application/x-kword"

    .line 523
    .line 524
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    const-string v0, "application/x-quicktimeplayer"

    .line 528
    .line 529
    const v1, 0x1080355

    .line 530
    .line 531
    .line 532
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 533
    .line 534
    .line 535
    const-string v0, "application/x-shockwave-flash"

    .line 536
    .line 537
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 538
    .line 539
    .line 540
    const-string v0, "application/msword"

    .line 541
    .line 542
    const v1, 0x1080356

    .line 543
    .line 544
    .line 545
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 546
    .line 547
    .line 548
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 549
    .line 550
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 551
    .line 552
    .line 553
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    .line 554
    .line 555
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 556
    .line 557
    .line 558
    const-string v0, "application/vnd.ms-excel"

    .line 559
    .line 560
    const v1, 0x108034b

    .line 561
    .line 562
    .line 563
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 564
    .line 565
    .line 566
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 567
    .line 568
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    .line 572
    .line 573
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 574
    .line 575
    .line 576
    const-string v0, "application/vnd.ms-powerpoint"

    .line 577
    .line 578
    const v1, 0x1080351

    .line 579
    .line 580
    .line 581
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 582
    .line 583
    .line 584
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 585
    .line 586
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 587
    .line 588
    .line 589
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    .line 590
    .line 591
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 592
    .line 593
    .line 594
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    .line 595
    .line 596
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 597
    .line 598
    .line 599
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v0, " already registered!"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public static loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const-string v0, "vnd.android.document/directory"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const p1, 0x108034c

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    if-nez p1, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_2
    const-string v0, "/"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    aget-object p1, p1, v0

    .line 48
    .line 49
    const-string v0, "audio"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const p1, 0x1080344

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_3
    const-string v0, "image"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    const p1, 0x108034f

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_4
    const-string v0, "text"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    const p1, 0x1080354

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_5
    const-string v0, "video"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    const p1, 0x1080355

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_6
    const p1, 0x108034e

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0
.end method
