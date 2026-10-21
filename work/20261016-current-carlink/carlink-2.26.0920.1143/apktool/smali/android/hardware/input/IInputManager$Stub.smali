.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_cancelVibrate:I = 0x19

.field static final TRANSACTION_createInputForwarder:I = 0x1d

.field static final TRANSACTION_disableInputDevice:I = 0x5

.field static final TRANSACTION_enableInputDevice:I = 0x4

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x10

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xd

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x13

.field static final TRANSACTION_getKeyboardLayouts:I = 0xb

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x9

.field static final TRANSACTION_hasKeys:I = 0x6

.field static final TRANSACTION_injectInputEvent:I = 0x8

.field static final TRANSACTION_isInTabletMode:I = 0x16

.field static final TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x15

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x17

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_requestPointerCapture:I = 0x1c

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setCustomPointerIcon:I = 0x1b

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x14

.field static final TRANSACTION_setPointerIconType:I = 0x1a

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xa

.field static final TRANSACTION_tryPointerSpeed:I = 0x7

.field static final TRANSACTION_vibrate:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.hardware.input.IInputManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
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
    const-string v0, "android.hardware.input.IInputManager"

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
    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/hardware/input/IInputManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "android.hardware.input.IInputManager"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_16

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    move v0, v2

    .line 57
    :cond_1
    invoke-interface {p0, p1, v0}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    sget-object p1, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    .line 75
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    move-object v3, p1

    .line 80
    check-cast v3, Landroid/view/PointerIcon;

    .line 81
    .line 82
    :cond_2
    invoke-interface {p0, v3}, Landroid/hardware/input/IInputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    .line 101
    .line 102
    return v2

    .line 103
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    .line 145
    .line 146
    return v2

    .line 147
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    return v2

    .line 165
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->isInTabletMode()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    .line 177
    .line 178
    return v2

    .line 179
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    .line 195
    .line 196
    return v2

    .line 197
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_3

    .line 205
    .line 206
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    .line 208
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_3
    move-object p1, v3

    .line 216
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result p4

    .line 220
    if-eqz p4, :cond_4

    .line 221
    .line 222
    sget-object p4, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 223
    .line 224
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p4

    .line 228
    check-cast p4, Landroid/view/inputmethod/InputMethodInfo;

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_4
    move-object p4, v3

    .line 232
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_5

    .line 237
    .line 238
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 239
    .line 240
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    move-object v3, v0

    .line 245
    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 246
    .line 247
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-interface {p0, p1, p4, v3, p2}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    .line 256
    .line 257
    return v2

    .line 258
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_6

    .line 266
    .line 267
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 268
    .line 269
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_6
    move-object p1, v3

    .line 277
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 278
    .line 279
    .line 280
    move-result p4

    .line 281
    if-eqz p4, :cond_7

    .line 282
    .line 283
    sget-object p4, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    .line 285
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p4

    .line 289
    check-cast p4, Landroid/view/inputmethod/InputMethodInfo;

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_7
    move-object p4, v3

    .line 293
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_8

    .line 298
    .line 299
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 300
    .line 301
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    move-object v3, p2

    .line 306
    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 307
    .line 308
    :cond_8
    invoke-interface {p0, p1, p4, v3}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    .line 314
    .line 315
    if-eqz p1, :cond_9

    .line 316
    .line 317
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p3, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    .line 326
    .line 327
    :goto_4
    return v2

    .line 328
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_a

    .line 336
    .line 337
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    .line 339
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    move-object v3, p1

    .line 344
    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 345
    .line 346
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-interface {p0, v3, p1}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    .line 355
    .line 356
    return v2

    .line 357
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-eqz p1, :cond_b

    .line 365
    .line 366
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 367
    .line 368
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    move-object v3, p1

    .line 373
    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 374
    .line 375
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-interface {p0, v3, p1}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    .line 384
    .line 385
    return v2

    .line 386
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_c

    .line 394
    .line 395
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 396
    .line 397
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    move-object v3, p1

    .line 402
    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 403
    .line 404
    :cond_c
    invoke-interface {p0, v3}, Landroid/hardware/input/IInputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    return v2

    .line 415
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    if-eqz p1, :cond_d

    .line 423
    .line 424
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 425
    .line 426
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    move-object v3, p1

    .line 431
    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 432
    .line 433
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-interface {p0, v3, p1}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    return v2

    .line 444
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-eqz p1, :cond_e

    .line 452
    .line 453
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 454
    .line 455
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    move-object v3, p1

    .line 460
    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 461
    .line 462
    :cond_e
    invoke-interface {p0, v3}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    return v2

    .line 473
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    .line 486
    .line 487
    if-eqz p1, :cond_f

    .line 488
    .line 489
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1, p3, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 493
    .line 494
    .line 495
    goto :goto_5

    .line 496
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    .line 498
    .line 499
    :goto_5
    return v2

    .line 500
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    if-eqz p1, :cond_10

    .line 508
    .line 509
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 510
    .line 511
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    move-object v3, p1

    .line 516
    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 517
    .line 518
    :cond_10
    invoke-interface {p0, v3}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 526
    .line 527
    .line 528
    return v2

    .line 529
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 540
    .line 541
    .line 542
    return v2

    .line 543
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 551
    .line 552
    .line 553
    move-result p4

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-eqz v0, :cond_11

    .line 559
    .line 560
    sget-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 561
    .line 562
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object p2

    .line 566
    move-object v3, p2

    .line 567
    check-cast v3, Landroid/hardware/input/TouchCalibration;

    .line 568
    .line 569
    :cond_11
    invoke-interface {p0, p1, p4, v3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    .line 574
    .line 575
    return v2

    .line 576
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 584
    .line 585
    .line 586
    move-result p2

    .line 587
    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    if-eqz p1, :cond_12

    .line 595
    .line 596
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, p3, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 600
    .line 601
    .line 602
    goto :goto_6

    .line 603
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    .line 605
    .line 606
    :goto_6
    return v2

    .line 607
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    if-eqz p1, :cond_13

    .line 615
    .line 616
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 617
    .line 618
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    move-object v3, p1

    .line 623
    check-cast v3, Landroid/view/InputEvent;

    .line 624
    .line 625
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 626
    .line 627
    .line 628
    move-result p1

    .line 629
    invoke-interface {p0, v3, p1}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 630
    .line 631
    .line 632
    move-result p1

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    .line 635
    .line 636
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    .line 638
    .line 639
    return v2

    .line 640
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 644
    .line 645
    .line 646
    move-result p1

    .line 647
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    .line 652
    .line 653
    return v2

    .line 654
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 658
    .line 659
    .line 660
    move-result p1

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 662
    .line 663
    .line 664
    move-result p4

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 670
    .line 671
    .line 672
    move-result p2

    .line 673
    if-gez p2, :cond_14

    .line 674
    .line 675
    goto :goto_7

    .line 676
    :cond_14
    new-array v3, p2, [Z

    .line 677
    .line 678
    :goto_7
    invoke-interface {p0, p1, p4, v0, v3}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 689
    .line 690
    .line 691
    return v2

    .line 692
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 696
    .line 697
    .line 698
    move-result p1

    .line 699
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    .line 704
    .line 705
    return v2

    .line 706
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    .line 718
    .line 719
    return v2

    .line 720
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 724
    .line 725
    .line 726
    move-result p1

    .line 727
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->isInputDeviceEnabled(I)Z

    .line 728
    .line 729
    .line 730
    move-result p1

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    .line 736
    .line 737
    return v2

    .line 738
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 749
    .line 750
    .line 751
    return v2

    .line 752
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    .line 765
    .line 766
    if-eqz p1, :cond_15

    .line 767
    .line 768
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p1, p3, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 772
    .line 773
    .line 774
    goto :goto_8

    .line 775
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    .line 777
    .line 778
    :goto_8
    return v2

    .line 779
    :cond_16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    return v2

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
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
