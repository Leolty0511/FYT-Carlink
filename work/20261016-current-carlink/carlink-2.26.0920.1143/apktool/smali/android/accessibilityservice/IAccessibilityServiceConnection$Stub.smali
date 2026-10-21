.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final TRANSACTION_disableSelf:I = 0xc

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x2

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x4

.field static final TRANSACTION_findFocus:I = 0x5

.field static final TRANSACTION_focusSearch:I = 0x6

.field static final TRANSACTION_getMagnificationCenterX:I = 0xf

.field static final TRANSACTION_getMagnificationCenterY:I = 0x10

.field static final TRANSACTION_getMagnificationRegion:I = 0x11

.field static final TRANSACTION_getMagnificationScale:I = 0xe

.field static final TRANSACTION_getServiceInfo:I = 0xa

.field static final TRANSACTION_getWindow:I = 0x8

.field static final TRANSACTION_getWindows:I = 0x9

.field static final TRANSACTION_isAccessibilityButtonAvailable:I = 0x17

.field static final TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x19

.field static final TRANSACTION_performAccessibilityAction:I = 0x7

.field static final TRANSACTION_performGlobalAction:I = 0xb

.field static final TRANSACTION_resetMagnification:I = 0x12

.field static final TRANSACTION_sendGesture:I = 0x18

.field static final TRANSACTION_setMagnificationCallbackEnabled:I = 0x14

.field static final TRANSACTION_setMagnificationScaleAndCenter:I = 0x13

.field static final TRANSACTION_setOnKeyEventResult:I = 0xd

.field static final TRANSACTION_setServiceInfo:I = 0x1

.field static final TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x16

.field static final TRANSACTION_setSoftKeyboardShowMode:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
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
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

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
    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v11, p3

    .line 7
    .line 8
    const v2, 0x5f4e5446

    .line 9
    .line 10
    .line 11
    const-string v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    .line 12
    .line 13
    const/4 v12, 0x1

    .line 14
    if-eq v0, v2, :cond_c

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isFingerprintGestureDetectionAvailable()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    return v12

    .line 40
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 54
    .line 55
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v2, v1

    .line 60
    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 61
    .line 62
    :cond_0
    invoke-interface {p0, v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    .line 67
    .line 68
    return v12

    .line 69
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isAccessibilityButtonAvailable()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    return v12

    .line 83
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    move v4, v12

    .line 93
    :cond_1
    invoke-interface {p0, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardCallbackEnabled(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    .line 98
    .line 99
    return v12

    .line 100
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-interface {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setSoftKeyboardShowMode(I)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    return v12

    .line 118
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    move v4, v12

    .line 128
    :cond_2
    invoke-interface {p0, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationCallbackEnabled(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    .line 133
    .line 134
    return v12

    .line 135
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    move v4, v12

    .line 157
    :cond_3
    invoke-interface {p0, v0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationScaleAndCenter(FFFZ)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    return v12

    .line 168
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_4

    .line 176
    .line 177
    move v4, v12

    .line 178
    :cond_4
    invoke-interface {p0, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetMagnification(Z)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    .line 187
    .line 188
    return v12

    .line 189
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationRegion()Landroid/graphics/Region;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    if-eqz v0, :cond_5

    .line 200
    .line 201
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v11, v12}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_5
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    .line 210
    .line 211
    :goto_0
    return v12

    .line 212
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterY()F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 223
    .line 224
    .line 225
    return v12

    .line 226
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterX()F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 237
    .line 238
    .line 239
    return v12

    .line 240
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationScale()F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 251
    .line 252
    .line 253
    return v12

    .line 254
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_6

    .line 262
    .line 263
    move v4, v12

    .line 264
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-interface {p0, v4, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V

    .line 269
    .line 270
    .line 271
    return v12

    .line 272
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->disableSelf()V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    .line 280
    .line 281
    return v12

    .line 282
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-interface {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    .line 298
    .line 299
    return v12

    .line 300
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    .line 309
    .line 310
    if-eqz v0, :cond_7

    .line 311
    .line 312
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v11, v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_7
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    .line 321
    .line 322
    :goto_1
    return v12

    .line 323
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-interface {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 334
    .line 335
    .line 336
    return v12

    .line 337
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-interface {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    .line 350
    .line 351
    if-eqz v0, :cond_8

    .line 352
    .line 353
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v11, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 357
    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_8
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    .line 362
    .line 363
    :goto_2
    return v12

    .line 364
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz v0, :cond_9

    .line 384
    .line 385
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 386
    .line 387
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    check-cast v0, Landroid/os/Bundle;

    .line 392
    .line 393
    move-object v7, v0

    .line 394
    goto :goto_3

    .line 395
    :cond_9
    move-object v7, v2

    .line 396
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 409
    .line 410
    .line 411
    move-result-wide v13

    .line 412
    move-object v0, p0

    .line 413
    move v1, v3

    .line 414
    move-wide v2, v4

    .line 415
    move v4, v6

    .line 416
    move-object v5, v7

    .line 417
    move v6, v8

    .line 418
    move-object v7, v9

    .line 419
    move-wide v8, v13

    .line 420
    invoke-interface/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    .line 429
    .line 430
    return v12

    .line 431
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 439
    .line 440
    .line 441
    move-result-wide v3

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 459
    .line 460
    .line 461
    move-result-wide v8

    .line 462
    move-object v0, p0

    .line 463
    move v1, v2

    .line 464
    move-wide v2, v3

    .line 465
    move v4, v5

    .line 466
    move v5, v6

    .line 467
    move-object v6, v7

    .line 468
    move-wide v7, v8

    .line 469
    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    .line 478
    .line 479
    return v12

    .line 480
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 488
    .line 489
    .line 490
    move-result-wide v3

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v6

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 508
    .line 509
    .line 510
    move-result-wide v8

    .line 511
    move-object v0, p0

    .line 512
    move v1, v2

    .line 513
    move-wide v2, v3

    .line 514
    move v4, v5

    .line 515
    move v5, v6

    .line 516
    move-object v6, v7

    .line 517
    move-wide v7, v8

    .line 518
    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    .line 527
    .line 528
    return v12

    .line 529
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 537
    .line 538
    .line 539
    move-result-wide v3

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 557
    .line 558
    .line 559
    move-result-wide v8

    .line 560
    move-object v0, p0

    .line 561
    move v1, v2

    .line 562
    move-wide v2, v3

    .line 563
    move-object v4, v5

    .line 564
    move v5, v6

    .line 565
    move-object v6, v7

    .line 566
    move-wide v7, v8

    .line 567
    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    .line 576
    .line 577
    return v12

    .line 578
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 586
    .line 587
    .line 588
    move-result-wide v3

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 606
    .line 607
    .line 608
    move-result-wide v8

    .line 609
    move-object v0, p0

    .line 610
    move v1, v2

    .line 611
    move-wide v2, v3

    .line 612
    move-object v4, v5

    .line 613
    move v5, v6

    .line 614
    move-object v6, v7

    .line 615
    move-wide v7, v8

    .line 616
    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    .line 625
    .line 626
    return v12

    .line 627
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 635
    .line 636
    .line 637
    move-result-wide v4

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 639
    .line 640
    .line 641
    move-result v6

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 647
    .line 648
    .line 649
    move-result-object v7

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 651
    .line 652
    .line 653
    move-result v8

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 655
    .line 656
    .line 657
    move-result-wide v13

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_a

    .line 663
    .line 664
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 665
    .line 666
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    check-cast v0, Landroid/os/Bundle;

    .line 671
    .line 672
    move-object v9, v0

    .line 673
    goto :goto_4

    .line 674
    :cond_a
    move-object v9, v2

    .line 675
    :goto_4
    move-object v0, p0

    .line 676
    move v1, v3

    .line 677
    move-wide v2, v4

    .line 678
    move v4, v6

    .line 679
    move-object v5, v7

    .line 680
    move v6, v8

    .line 681
    move-wide v7, v13

    .line 682
    invoke-interface/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    .line 691
    .line 692
    return v12

    .line 693
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    if-eqz v0, :cond_b

    .line 701
    .line 702
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 703
    .line 704
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    move-object v2, v0

    .line 709
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 710
    .line 711
    :cond_b
    invoke-interface {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    .line 716
    .line 717
    return v12

    .line 718
    :cond_c
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    return v12

    .line 722
    nop

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
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
