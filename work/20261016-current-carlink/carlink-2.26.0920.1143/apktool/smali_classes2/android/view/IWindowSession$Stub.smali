.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_canNavigationBarMove:I = 0x22

.field static final TRANSACTION_cancelDragAndDrop:I = 0x13

.field static final TRANSACTION_dragRecipientEntered:I = 0x14

.field static final TRANSACTION_dragRecipientExited:I = 0x15

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1c

.field static final TRANSACTION_isKeyguardShowingAndNotOccluded:I = 0x20

.field static final TRANSACTION_isNavigationBarShowing:I = 0x21

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1b

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_pokeDrawLock:I = 0x1d

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x7

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x19

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x18

.field static final TRANSACTION_setWallpaperPosition:I = 0x16

.field static final TRANSACTION_startMovingTask:I = 0x1e

.field static final TRANSACTION_updatePointerIcon:I = 0x1f

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1a

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.view.IWindowSession"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.view.IWindowSession"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/view/IWindowSession;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/view/IWindowSession;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    const v2, 0x5f4e5446

    .line 10
    .line 11
    .line 12
    const-string v3, "android.view.IWindowSession"

    .line 13
    .line 14
    const/4 v13, 0x1

    .line 15
    if-eq v0, v2, :cond_14

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface/range {p0 .. p0}, Landroid/view/IWindowSession;->canNavigationBarMove()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    return v13

    .line 41
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface/range {p0 .. p0}, Landroid/view/IWindowSession;->isNavigationBarShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    return v13

    .line 55
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface/range {p0 .. p0}, Landroid/view/IWindowSession;->isKeyguardShowingAndNotOccluded()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    return v13

    .line 69
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    return v13

    .line 87
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-interface {v15, v0, v2, v1}, Landroid/view/IWindowSession;->startMovingTask(Landroid/view/IWindow;FF)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    .line 115
    .line 116
    return v13

    .line 117
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    return v13

    .line 131
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    if-eqz v0, :cond_0

    .line 146
    .line 147
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_0
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 152
    .line 153
    .line 154
    return v13

    .line 155
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_1

    .line 167
    .line 168
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    .line 170
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    move-object v2, v1

    .line 175
    check-cast v2, Landroid/graphics/Rect;

    .line 176
    .line 177
    :cond_1
    invoke-interface {v15, v0, v2}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    .line 182
    .line 183
    return v13

    .line 184
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_2

    .line 196
    .line 197
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    .line 199
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    move-object v2, v1

    .line 204
    check-cast v2, Landroid/os/Bundle;

    .line 205
    .line 206
    :cond_2
    invoke-interface {v15, v0, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    .line 211
    .line 212
    return v13

    .line 213
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_3

    .line 241
    .line 242
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 243
    .line 244
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/os/Bundle;

    .line 249
    .line 250
    move-object v9, v0

    .line 251
    goto :goto_0

    .line 252
    :cond_3
    move-object v9, v2

    .line 253
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_4

    .line 258
    .line 259
    move v10, v13

    .line 260
    goto :goto_1

    .line 261
    :cond_4
    move v10, v8

    .line 262
    :goto_1
    move-object/from16 v0, p0

    .line 263
    .line 264
    move-object v1, v3

    .line 265
    move-object v2, v4

    .line 266
    move v3, v5

    .line 267
    move v4, v6

    .line 268
    move v5, v7

    .line 269
    move-object v6, v9

    .line 270
    move v7, v10

    .line 271
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    if-eqz v0, :cond_5

    .line 279
    .line 280
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v14, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_5
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    .line 289
    .line 290
    :goto_2
    return v13

    .line 291
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    invoke-interface {v15, v0, v2, v1}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    .line 311
    .line 312
    return v13

    .line 313
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    .line 325
    .line 326
    return v13

    .line 327
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    move-object/from16 v0, p0

    .line 351
    .line 352
    move-object v1, v2

    .line 353
    move v2, v3

    .line 354
    move v3, v4

    .line 355
    move v4, v5

    .line 356
    move v5, v6

    .line 357
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 358
    .line 359
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    .line 362
    .line 363
    return v13

    .line 364
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    return v13

    .line 382
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    .line 398
    .line 399
    return v13

    .line 400
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->cancelDragAndDrop(Landroid/os/IBinder;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    return v13

    .line 414
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_6

    .line 430
    .line 431
    move v8, v13

    .line 432
    :cond_6
    invoke-interface {v15, v0, v8}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 433
    .line 434
    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    .line 437
    .line 438
    return v13

    .line 439
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 463
    .line 464
    .line 465
    move-result v7

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 471
    .line 472
    .line 473
    move-result v9

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-eqz v0, :cond_7

    .line 479
    .line 480
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 481
    .line 482
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Landroid/content/ClipData;

    .line 487
    .line 488
    move-object v10, v0

    .line 489
    goto :goto_3

    .line 490
    :cond_7
    move-object v10, v2

    .line 491
    :goto_3
    move-object/from16 v0, p0

    .line 492
    .line 493
    move-object v1, v3

    .line 494
    move-object v2, v4

    .line 495
    move v3, v5

    .line 496
    move v4, v6

    .line 497
    move v5, v7

    .line 498
    move v6, v8

    .line 499
    move v7, v9

    .line 500
    move-object v8, v10

    .line 501
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    .line 510
    .line 511
    return v13

    .line 512
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    new-instance v6, Landroid/view/Surface;

    .line 536
    .line 537
    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 538
    .line 539
    .line 540
    move-object/from16 v0, p0

    .line 541
    .line 542
    move-object v1, v2

    .line 543
    move v2, v3

    .line 544
    move v3, v4

    .line 545
    move v4, v5

    .line 546
    move-object v5, v6

    .line 547
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6, v14, v13}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 561
    .line 562
    .line 563
    return v13

    .line 564
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-eqz v1, :cond_8

    .line 584
    .line 585
    move v8, v13

    .line 586
    :cond_8
    invoke-interface {v15, v0, v2, v8}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    .line 595
    .line 596
    return v13

    .line 597
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-interface/range {p0 .. p0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    .line 609
    .line 610
    return v13

    .line 611
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_9

    .line 619
    .line 620
    move v8, v13

    .line 621
    :cond_9
    invoke-interface {v15, v8}, Landroid/view/IWindowSession;->setInTouchMode(Z)V

    .line 622
    .line 623
    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    .line 626
    .line 627
    return v13

    .line 628
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    .line 644
    .line 645
    return v13

    .line 646
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    new-instance v1, Landroid/graphics/Rect;

    .line 658
    .line 659
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 660
    .line 661
    .line 662
    invoke-interface {v15, v0, v1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v14, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 672
    .line 673
    .line 674
    return v13

    .line 675
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 687
    .line 688
    .line 689
    move-result v4

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    if-eqz v0, :cond_a

    .line 695
    .line 696
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 697
    .line 698
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    check-cast v0, Landroid/graphics/Rect;

    .line 703
    .line 704
    move-object v5, v0

    .line 705
    goto :goto_4

    .line 706
    :cond_a
    move-object v5, v2

    .line 707
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz v0, :cond_b

    .line 712
    .line 713
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 714
    .line 715
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    check-cast v0, Landroid/graphics/Rect;

    .line 720
    .line 721
    move-object v6, v0

    .line 722
    goto :goto_5

    .line 723
    :cond_b
    move-object v6, v2

    .line 724
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    if-eqz v0, :cond_c

    .line 729
    .line 730
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 731
    .line 732
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    check-cast v0, Landroid/graphics/Region;

    .line 737
    .line 738
    move-object v7, v0

    .line 739
    goto :goto_6

    .line 740
    :cond_c
    move-object v7, v2

    .line 741
    :goto_6
    move-object/from16 v0, p0

    .line 742
    .line 743
    move-object v1, v3

    .line 744
    move v2, v4

    .line 745
    move-object v3, v5

    .line 746
    move-object v4, v6

    .line 747
    move-object v5, v7

    .line 748
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    .line 753
    .line 754
    return v13

    .line 755
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    if-eqz v3, :cond_d

    .line 771
    .line 772
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 773
    .line 774
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    move-object v2, v1

    .line 779
    check-cast v2, Landroid/graphics/Region;

    .line 780
    .line 781
    :cond_d
    invoke-interface {v15, v0, v2}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    .line 786
    .line 787
    return v13

    .line 788
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    .line 808
    .line 809
    return v13

    .line 810
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 818
    .line 819
    .line 820
    move-result v1

    .line 821
    if-eqz v1, :cond_e

    .line 822
    .line 823
    move v8, v13

    .line 824
    :cond_e
    invoke-interface {v15, v0, v8}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 825
    .line 826
    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    .line 829
    .line 830
    return v13

    .line 831
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 843
    .line 844
    .line 845
    move-result v17

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    if-eqz v0, :cond_f

    .line 851
    .line 852
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 853
    .line 854
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 859
    .line 860
    move-object/from16 v18, v0

    .line 861
    .line 862
    goto :goto_7

    .line 863
    :cond_f
    move-object/from16 v18, v2

    .line 864
    .line 865
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 866
    .line 867
    .line 868
    move-result v4

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 874
    .line 875
    .line 876
    move-result v6

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 878
    .line 879
    .line 880
    move-result v7

    .line 881
    new-instance v2, Landroid/graphics/Rect;

    .line 882
    .line 883
    move-object v8, v2

    .line 884
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 885
    .line 886
    .line 887
    new-instance v1, Landroid/graphics/Rect;

    .line 888
    .line 889
    move-object v9, v1

    .line 890
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 891
    .line 892
    .line 893
    new-instance v0, Landroid/graphics/Rect;

    .line 894
    .line 895
    move-object v10, v0

    .line 896
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 897
    .line 898
    .line 899
    new-instance v12, Landroid/graphics/Rect;

    .line 900
    .line 901
    move-object v11, v12

    .line 902
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 903
    .line 904
    .line 905
    move/from16 p1, v4

    .line 906
    .line 907
    new-instance v4, Landroid/graphics/Rect;

    .line 908
    .line 909
    move-object/from16 v19, v12

    .line 910
    .line 911
    move-object v12, v4

    .line 912
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 913
    .line 914
    .line 915
    move-object/from16 p2, v4

    .line 916
    .line 917
    new-instance v4, Landroid/graphics/Rect;

    .line 918
    .line 919
    move-object v13, v4

    .line 920
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 921
    .line 922
    .line 923
    move-object/from16 p4, v4

    .line 924
    .line 925
    new-instance v4, Landroid/graphics/Rect;

    .line 926
    .line 927
    move-object v14, v4

    .line 928
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 929
    .line 930
    .line 931
    move-object/from16 v20, v4

    .line 932
    .line 933
    new-instance v4, Landroid/util/MergedConfiguration;

    .line 934
    .line 935
    move-object v15, v4

    .line 936
    invoke-direct {v4}, Landroid/util/MergedConfiguration;-><init>()V

    .line 937
    .line 938
    .line 939
    move-object/from16 v21, v4

    .line 940
    .line 941
    new-instance v4, Landroid/view/Surface;

    .line 942
    .line 943
    move-object/from16 v16, v4

    .line 944
    .line 945
    invoke-direct {v4}, Landroid/view/Surface;-><init>()V

    .line 946
    .line 947
    .line 948
    move-object/from16 v22, v0

    .line 949
    .line 950
    move-object/from16 v0, p0

    .line 951
    .line 952
    move-object/from16 v23, v1

    .line 953
    .line 954
    move-object v1, v3

    .line 955
    move-object v3, v2

    .line 956
    move/from16 v2, v17

    .line 957
    .line 958
    move-object/from16 v24, v3

    .line 959
    .line 960
    move-object/from16 v3, v18

    .line 961
    .line 962
    move-object/from16 v25, p2

    .line 963
    .line 964
    move-object/from16 v26, p4

    .line 965
    .line 966
    move-object/from16 v29, v4

    .line 967
    .line 968
    move-object/from16 v27, v20

    .line 969
    .line 970
    move-object/from16 v28, v21

    .line 971
    .line 972
    move/from16 v4, p1

    .line 973
    .line 974
    invoke-interface/range {v0 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    .line 980
    .line 981
    move-object/from16 v10, p3

    .line 982
    .line 983
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    .line 985
    .line 986
    const/4 v11, 0x1

    .line 987
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    .line 989
    .line 990
    move-object/from16 v0, v24

    .line 991
    .line 992
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    .line 997
    .line 998
    move-object/from16 v0, v23

    .line 999
    .line 1000
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    .line 1005
    .line 1006
    move-object/from16 v0, v22

    .line 1007
    .line 1008
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    .line 1013
    .line 1014
    move-object/from16 v0, v19

    .line 1015
    .line 1016
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v0, v25

    .line 1023
    .line 1024
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    .line 1029
    .line 1030
    move-object/from16 v0, v26

    .line 1031
    .line 1032
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    .line 1037
    .line 1038
    move-object/from16 v0, v27

    .line 1039
    .line 1040
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    .line 1045
    .line 1046
    move-object/from16 v0, v28

    .line 1047
    .line 1048
    invoke-virtual {v0, v10, v11}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    .line 1053
    .line 1054
    move-object/from16 v0, v29

    .line 1055
    .line 1056
    invoke-virtual {v0, v10, v11}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1057
    .line 1058
    .line 1059
    return v11

    .line 1060
    :pswitch_1d
    move v11, v13

    .line 1061
    move-object v10, v14

    .line 1062
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    move-object/from16 v12, p0

    .line 1074
    .line 1075
    invoke-interface {v12, v0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    .line 1080
    .line 1081
    return v11

    .line 1082
    :pswitch_1e
    move v11, v13

    .line 1083
    move-object v10, v14

    .line 1084
    move-object v12, v15

    .line 1085
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v3

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1097
    .line 1098
    .line 1099
    move-result v4

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eqz v0, :cond_10

    .line 1105
    .line 1106
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1107
    .line 1108
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1113
    .line 1114
    move-object v5, v0

    .line 1115
    goto :goto_8

    .line 1116
    :cond_10
    move-object v5, v2

    .line 1117
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1118
    .line 1119
    .line 1120
    move-result v6

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1122
    .line 1123
    .line 1124
    move-result v7

    .line 1125
    new-instance v8, Landroid/graphics/Rect;

    .line 1126
    .line 1127
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1128
    .line 1129
    .line 1130
    new-instance v9, Landroid/graphics/Rect;

    .line 1131
    .line 1132
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    move-object/from16 v0, p0

    .line 1136
    .line 1137
    move-object v1, v3

    .line 1138
    move v2, v4

    .line 1139
    move-object v3, v5

    .line 1140
    move v4, v6

    .line 1141
    move v5, v7

    .line 1142
    move-object v6, v8

    .line 1143
    move-object v7, v9

    .line 1144
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v0

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1164
    .line 1165
    .line 1166
    return v11

    .line 1167
    :pswitch_1f
    move v11, v13

    .line 1168
    move-object v10, v14

    .line 1169
    move-object v12, v15

    .line 1170
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v3

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1182
    .line 1183
    .line 1184
    move-result v4

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    if-eqz v0, :cond_11

    .line 1190
    .line 1191
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1192
    .line 1193
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1198
    .line 1199
    move-object v5, v0

    .line 1200
    goto :goto_9

    .line 1201
    :cond_11
    move-object v5, v2

    .line 1202
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1203
    .line 1204
    .line 1205
    move-result v6

    .line 1206
    new-instance v7, Landroid/graphics/Rect;

    .line 1207
    .line 1208
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    new-instance v8, Landroid/graphics/Rect;

    .line 1212
    .line 1213
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1214
    .line 1215
    .line 1216
    move-object/from16 v0, p0

    .line 1217
    .line 1218
    move-object v1, v3

    .line 1219
    move v2, v4

    .line 1220
    move-object v3, v5

    .line 1221
    move v4, v6

    .line 1222
    move-object v5, v7

    .line 1223
    move-object v6, v8

    .line 1224
    invoke-interface/range {v0 .. v6}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1244
    .line 1245
    .line 1246
    return v11

    .line 1247
    :pswitch_20
    move v11, v13

    .line 1248
    move-object v10, v14

    .line 1249
    move-object v12, v15

    .line 1250
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1262
    .line 1263
    .line 1264
    move-result v4

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1266
    .line 1267
    .line 1268
    move-result v0

    .line 1269
    if-eqz v0, :cond_12

    .line 1270
    .line 1271
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1272
    .line 1273
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1278
    .line 1279
    move-object v5, v0

    .line 1280
    goto :goto_a

    .line 1281
    :cond_12
    move-object v5, v2

    .line 1282
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1283
    .line 1284
    .line 1285
    move-result v6

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1287
    .line 1288
    .line 1289
    move-result v7

    .line 1290
    new-instance v13, Landroid/graphics/Rect;

    .line 1291
    .line 1292
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    new-instance v14, Landroid/graphics/Rect;

    .line 1296
    .line 1297
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1298
    .line 1299
    .line 1300
    new-instance v15, Landroid/graphics/Rect;

    .line 1301
    .line 1302
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1303
    .line 1304
    .line 1305
    new-instance v9, Landroid/view/InputChannel;

    .line 1306
    .line 1307
    invoke-direct {v9}, Landroid/view/InputChannel;-><init>()V

    .line 1308
    .line 1309
    .line 1310
    move-object/from16 v0, p0

    .line 1311
    .line 1312
    move-object v1, v3

    .line 1313
    move v2, v4

    .line 1314
    move-object v3, v5

    .line 1315
    move v4, v6

    .line 1316
    move v5, v7

    .line 1317
    move-object v6, v13

    .line 1318
    move-object v7, v14

    .line 1319
    move-object v8, v15

    .line 1320
    move-object/from16 p1, v9

    .line 1321
    .line 1322
    invoke-interface/range {v0 .. v9}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    .line 1323
    .line 1324
    .line 1325
    move-result v0

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v13, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v15, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    .line 1352
    .line 1353
    move-object/from16 v0, p1

    .line 1354
    .line 1355
    invoke-virtual {v0, v10, v11}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1356
    .line 1357
    .line 1358
    return v11

    .line 1359
    :pswitch_21
    move v11, v13

    .line 1360
    move-object v10, v14

    .line 1361
    move-object v12, v15

    .line 1362
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v3

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1374
    .line 1375
    .line 1376
    move-result v4

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1378
    .line 1379
    .line 1380
    move-result v0

    .line 1381
    if-eqz v0, :cond_13

    .line 1382
    .line 1383
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1384
    .line 1385
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1390
    .line 1391
    move-object v5, v0

    .line 1392
    goto :goto_b

    .line 1393
    :cond_13
    move-object v5, v2

    .line 1394
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1395
    .line 1396
    .line 1397
    move-result v6

    .line 1398
    new-instance v8, Landroid/graphics/Rect;

    .line 1399
    .line 1400
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1401
    .line 1402
    .line 1403
    new-instance v9, Landroid/graphics/Rect;

    .line 1404
    .line 1405
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1406
    .line 1407
    .line 1408
    new-instance v13, Landroid/view/InputChannel;

    .line 1409
    .line 1410
    invoke-direct {v13}, Landroid/view/InputChannel;-><init>()V

    .line 1411
    .line 1412
    .line 1413
    move-object/from16 v0, p0

    .line 1414
    .line 1415
    move-object v1, v3

    .line 1416
    move v2, v4

    .line 1417
    move-object v3, v5

    .line 1418
    move v4, v6

    .line 1419
    move-object v5, v8

    .line 1420
    move-object v6, v9

    .line 1421
    move-object v7, v13

    .line 1422
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    .line 1423
    .line 1424
    .line 1425
    move-result v0

    .line 1426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v13, v10, v11}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1448
    .line 1449
    .line 1450
    return v11

    .line 1451
    :cond_14
    move v11, v13

    .line 1452
    move-object v10, v14

    .line 1453
    move-object v12, v15

    .line 1454
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1455
    .line 1456
    .line 1457
    return v11

    .line 1458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
