.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RELATIVE_X:I = 0x1b

.field public static final AXIS_RELATIVE_Y:I = 0x1c

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SCROLL:I = 0x1a

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:J

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 7
    .line 8
    const-string v1, "AXIS_X"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "AXIS_Y"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "AXIS_PRESSURE"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "AXIS_SIZE"

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "AXIS_TOUCH_MAJOR"

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    const-string v7, "AXIS_TOUCH_MINOR"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    const-string v7, "AXIS_TOOL_MAJOR"

    .line 46
    .line 47
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x7

    .line 51
    const-string v7, "AXIS_TOOL_MINOR"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    const-string v7, "AXIS_ORIENTATION"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x9

    .line 64
    .line 65
    const-string v7, "AXIS_VSCROLL"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xa

    .line 71
    .line 72
    const-string v7, "AXIS_HSCROLL"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xb

    .line 78
    .line 79
    const-string v7, "AXIS_Z"

    .line 80
    .line 81
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0xc

    .line 85
    .line 86
    const-string v7, "AXIS_RX"

    .line 87
    .line 88
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xd

    .line 92
    .line 93
    const-string v7, "AXIS_RY"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0xe

    .line 99
    .line 100
    const-string v7, "AXIS_RZ"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const/16 v1, 0xf

    .line 106
    .line 107
    const-string v7, "AXIS_HAT_X"

    .line 108
    .line 109
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/16 v1, 0x10

    .line 113
    .line 114
    const-string v7, "AXIS_HAT_Y"

    .line 115
    .line 116
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x11

    .line 120
    .line 121
    const-string v7, "AXIS_LTRIGGER"

    .line 122
    .line 123
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x12

    .line 127
    .line 128
    const-string v7, "AXIS_RTRIGGER"

    .line 129
    .line 130
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x13

    .line 134
    .line 135
    const-string v7, "AXIS_THROTTLE"

    .line 136
    .line 137
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x14

    .line 141
    .line 142
    const-string v7, "AXIS_RUDDER"

    .line 143
    .line 144
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x15

    .line 148
    .line 149
    const-string v7, "AXIS_WHEEL"

    .line 150
    .line 151
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const/16 v1, 0x16

    .line 155
    .line 156
    const-string v7, "AXIS_GAS"

    .line 157
    .line 158
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    const/16 v1, 0x17

    .line 162
    .line 163
    const-string v7, "AXIS_BRAKE"

    .line 164
    .line 165
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    const/16 v1, 0x18

    .line 169
    .line 170
    const-string v7, "AXIS_DISTANCE"

    .line 171
    .line 172
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    const/16 v1, 0x19

    .line 176
    .line 177
    const-string v7, "AXIS_TILT"

    .line 178
    .line 179
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    const/16 v1, 0x1a

    .line 183
    .line 184
    const-string v7, "AXIS_SCROLL"

    .line 185
    .line 186
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const/16 v1, 0x1b

    .line 190
    .line 191
    const-string v7, "AXIS_REALTIVE_X"

    .line 192
    .line 193
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    const/16 v1, 0x1c

    .line 197
    .line 198
    const-string v7, "AXIS_REALTIVE_Y"

    .line 199
    .line 200
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const/16 v1, 0x20

    .line 204
    .line 205
    const-string v7, "AXIS_GENERIC_1"

    .line 206
    .line 207
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    const/16 v1, 0x21

    .line 211
    .line 212
    const-string v7, "AXIS_GENERIC_2"

    .line 213
    .line 214
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const/16 v1, 0x22

    .line 218
    .line 219
    const-string v7, "AXIS_GENERIC_3"

    .line 220
    .line 221
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    const/16 v1, 0x23

    .line 225
    .line 226
    const-string v7, "AXIS_GENERIC_4"

    .line 227
    .line 228
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    const/16 v1, 0x24

    .line 232
    .line 233
    const-string v7, "AXIS_GENERIC_5"

    .line 234
    .line 235
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    const/16 v1, 0x25

    .line 239
    .line 240
    const-string v7, "AXIS_GENERIC_6"

    .line 241
    .line 242
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    const/16 v1, 0x26

    .line 246
    .line 247
    const-string v7, "AXIS_GENERIC_7"

    .line 248
    .line 249
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    const/16 v1, 0x27

    .line 253
    .line 254
    const-string v7, "AXIS_GENERIC_8"

    .line 255
    .line 256
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const/16 v1, 0x28

    .line 260
    .line 261
    const-string v7, "AXIS_GENERIC_9"

    .line 262
    .line 263
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    const/16 v1, 0x29

    .line 267
    .line 268
    const-string v7, "AXIS_GENERIC_10"

    .line 269
    .line 270
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    const/16 v1, 0x2a

    .line 274
    .line 275
    const-string v7, "AXIS_GENERIC_11"

    .line 276
    .line 277
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    const/16 v1, 0x2b

    .line 281
    .line 282
    const-string v7, "AXIS_GENERIC_12"

    .line 283
    .line 284
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    const/16 v1, 0x2c

    .line 288
    .line 289
    const-string v7, "AXIS_GENERIC_13"

    .line 290
    .line 291
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    const/16 v1, 0x2d

    .line 295
    .line 296
    const-string v7, "AXIS_GENERIC_14"

    .line 297
    .line 298
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    const/16 v1, 0x2e

    .line 302
    .line 303
    const-string v7, "AXIS_GENERIC_15"

    .line 304
    .line 305
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    const/16 v1, 0x2f

    .line 309
    .line 310
    const-string v7, "AXIS_GENERIC_16"

    .line 311
    .line 312
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    const-string v8, "BUTTON_PRIMARY"

    .line 316
    .line 317
    const-string v9, "BUTTON_SECONDARY"

    .line 318
    .line 319
    const-string v10, "BUTTON_TERTIARY"

    .line 320
    .line 321
    const-string v11, "BUTTON_BACK"

    .line 322
    .line 323
    const-string v12, "BUTTON_FORWARD"

    .line 324
    .line 325
    const-string v13, "BUTTON_STYLUS_PRIMARY"

    .line 326
    .line 327
    const-string v14, "BUTTON_STYLUS_SECONDARY"

    .line 328
    .line 329
    const-string v15, "0x00000080"

    .line 330
    .line 331
    const-string v16, "0x00000100"

    .line 332
    .line 333
    const-string v17, "0x00000200"

    .line 334
    .line 335
    const-string v18, "0x00000400"

    .line 336
    .line 337
    const-string v19, "0x00000800"

    .line 338
    .line 339
    const-string v20, "0x00001000"

    .line 340
    .line 341
    const-string v21, "0x00002000"

    .line 342
    .line 343
    const-string v22, "0x00004000"

    .line 344
    .line 345
    const-string v23, "0x00008000"

    .line 346
    .line 347
    const-string v24, "0x00010000"

    .line 348
    .line 349
    const-string v25, "0x00020000"

    .line 350
    .line 351
    const-string v26, "0x00040000"

    .line 352
    .line 353
    const-string v27, "0x00080000"

    .line 354
    .line 355
    const-string v28, "0x00100000"

    .line 356
    .line 357
    const-string v29, "0x00200000"

    .line 358
    .line 359
    const-string v30, "0x00400000"

    .line 360
    .line 361
    const-string v31, "0x00800000"

    .line 362
    .line 363
    const-string v32, "0x01000000"

    .line 364
    .line 365
    const-string v33, "0x02000000"

    .line 366
    .line 367
    const-string v34, "0x04000000"

    .line 368
    .line 369
    const-string v35, "0x08000000"

    .line 370
    .line 371
    const-string v36, "0x10000000"

    .line 372
    .line 373
    const-string v37, "0x20000000"

    .line 374
    .line 375
    const-string v38, "0x40000000"

    .line 376
    .line 377
    const-string v39, "0x80000000"

    .line 378
    .line 379
    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 384
    .line 385
    new-instance v0, Landroid/util/SparseArray;

    .line 386
    .line 387
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 388
    .line 389
    .line 390
    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 391
    .line 392
    const-string v1, "TOOL_TYPE_UNKNOWN"

    .line 393
    .line 394
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    const-string v1, "TOOL_TYPE_FINGER"

    .line 398
    .line 399
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    const-string v1, "TOOL_TYPE_STYLUS"

    .line 403
    .line 404
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    const-string v1, "TOOL_TYPE_MOUSE"

    .line 408
    .line 409
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    const-string v1, "TOOL_TYPE_ERASER"

    .line 413
    .line 414
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    new-instance v0, Ljava/lang/Object;

    .line 418
    .line 419
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 420
    .line 421
    .line 422
    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 423
    .line 424
    new-instance v0, Ljava/lang/Object;

    .line 425
    .line 426
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 430
    .line 431
    new-instance v0, Landroid/view/MotionEvent$1;

    .line 432
    .line 433
    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    .line 434
    .line 435
    .line 436
    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 437
    .line 438
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 4

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const v0, 0xff00

    .line 5
    .line 6
    .line 7
    and-int/2addr v0, p0

    .line 8
    shr-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    and-int/lit16 v1, p0, 0xff

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    const-string p0, "ACTION_BUTTON_RELEASE"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    const-string p0, "ACTION_BUTTON_PRESS"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string p0, "ACTION_HOVER_EXIT"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    const-string p0, "ACTION_HOVER_ENTER"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    const-string p0, "ACTION_SCROLL"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    const-string p0, "ACTION_HOVER_MOVE"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_7
    const-string p0, "ACTION_OUTSIDE"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_8
    const-string p0, "ACTION_CANCEL"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_9
    const-string p0, "ACTION_MOVE"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_a
    const-string p0, "ACTION_UP"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_b
    const-string p0, "ACTION_DOWN"

    .line 44
    .line 45
    return-object p0

    .line 46
    :goto_0
    const/4 v2, 0x5

    .line 47
    const-string v3, ")"

    .line 48
    .line 49
    if-eq v1, v2, :cond_1

    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    if-eq v1, v2, :cond_0

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_0
    const-string p0, "ACTION_POINTER_UP("

    .line 60
    .line 61
    invoke-static {p0, v0, v3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_1
    const-string p0, "ACTION_POINTER_DOWN("

    .line 67
    .line 68
    invoke-static {p0, v0, v3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "AXIS_"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    const/16 v0, 0xa

    .line 22
    .line 23
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p0

    .line 28
    :catch_0
    const/4 p0, -0x1

    .line 29
    return p0
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "AXIS_"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "0"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    if-eqz p0, :cond_5

    .line 10
    .line 11
    and-int/lit8 v3, p0, 0x1

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v3, v0

    .line 18
    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v3, v3, v2

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const/16 v4, 0x7c

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method private static final clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 6
    .line 7
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 12
    .line 13
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge v1, p0, :cond_3

    .line 7
    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 v0, 0x8

    .line 13
    .line 14
    :goto_0
    if-ge v0, p0, :cond_2

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 30
    .line 31
    new-array p0, v0, [I

    .line 32
    .line 33
    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetSource(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeTransform(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 5
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 8
    invoke-virtual {v1}, Landroid/view/InputEvent;->prepareForReuse()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 23

    .line 19
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 20
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 21
    :try_start_0
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 22
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    .line 23
    aget-object v3, v21, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 24
    aget-object v3, v21, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 25
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 26
    aget-object v3, v22, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 27
    aget-object v2, v22, v2

    move/from16 v3, p5

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v3, p6

    .line 28
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v3, p7

    .line 29
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v3, p8

    .line 30
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 31
    iget-wide v3, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v9, 0xf4240

    mul-long v16, p0, v9

    mul-long v18, p2, v9

    const/16 v20, 0x1

    move/from16 v5, p12

    move/from16 v7, p4

    move/from16 v9, p13

    move/from16 v10, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 32
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    .line 35
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    .line 34
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 14
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v0, 0x0

    move/from16 v7, p5

    :goto_0
    if-ge v0, v7, :cond_0

    .line 15
    aget-object v2, v8, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 16
    aget-object v2, v8, v0

    aget v3, p6, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    .line 17
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 23

    move/from16 v4, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v2, p12

    move/from16 v6, p13

    move/from16 v3, p14

    move/from16 v5, p15

    .line 10
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v15

    .line 11
    iget-wide v0, v15, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/32 v20, 0xf4240

    mul-long v13, p0, v20

    mul-long v20, v20, p2

    move-object/from16 v22, v15

    move-wide/from16 v15, v20

    invoke-static/range {v0 .. v19}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v0

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v2
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5

    if-eqz p0, :cond_0

    .line 36
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 37
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    invoke-static {v1, v2, v3, v4, p0}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 8
    .line 9
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-static {v1, v2, v3, v4, p0}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "other motion event must not be null"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 4

    .line 1
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 5
    aget-object v2, v1, v2

    iput p3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 6
    iput p4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 7
    iput p5, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 8
    iput p6, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 9
    iget-wide p3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 p5, 0xf4240

    mul-long/2addr p5, p1

    move-wide p1, p3

    move-wide p3, p5

    move-object p5, v1

    move p6, p7

    invoke-static/range {p1 .. p6}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 6

    .line 11
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 12
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    return v1

    .line 13
    :cond_0
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    if-eq v0, v3, :cond_1

    return v1

    .line 14
    :cond_1
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 15
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 16
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-eq v0, v3, :cond_2

    goto/16 :goto_4

    .line 17
    :cond_2
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 18
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    if-eq v0, v3, :cond_3

    return v1

    .line 19
    :cond_3
    sget-object v3, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v3

    .line 20
    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 21
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 22
    sget-object v10, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v4, v1

    :goto_0
    const/4 v11, 0x1

    if-ge v4, v0, :cond_5

    .line 23
    iget-wide v5, p0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v2, v1

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 24
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v2, v11

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 25
    aget-object v5, v2, v1

    aget-object v6, v2, v11

    invoke-static {v5, v6}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 26
    monitor-exit v3

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_5
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v2

    .line 28
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v12

    move v13, v1

    :goto_1
    if-gt v13, v12, :cond_8

    if-ne v13, v12, :cond_6

    const/high16 v4, -0x80000000

    goto :goto_2

    :cond_6
    move v4, v13

    :goto_2
    move v5, v1

    :goto_3
    if-ge v5, v0, :cond_7

    .line 29
    iget-wide v6, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v8, v10, v5

    invoke-static {v6, v7, v5, v4, v8}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    :cond_7
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v6

    .line 31
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    move-object v8, v10

    move v9, v2

    invoke-static/range {v4 .. v9}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 32
    :cond_8
    monitor-exit v3

    return v11

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return v1
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 17
    .line 18
    .line 19
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 20
    .line 21
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    const/high16 v5, -0x80000000

    .line 25
    .line 26
    if-ge v4, v3, :cond_0

    .line 27
    .line 28
    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 29
    .line 30
    aget-object v8, v23, v4

    .line 31
    .line 32
    invoke-static {v6, v7, v4, v8}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 33
    .line 34
    .line 35
    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 36
    .line 37
    aget-object v8, v24, v4

    .line 38
    .line 39
    invoke-static {v6, v7, v4, v5, v8}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 40
    .line 41
    .line 42
    aget-object v5, v24, v4

    .line 43
    .line 44
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 45
    .line 46
    move/from16 v7, p1

    .line 47
    .line 48
    move/from16 v8, p3

    .line 49
    .line 50
    invoke-static {v6, v7, v8}, Landroid/view/MotionEvent;->clamp(FFF)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 55
    .line 56
    aget-object v5, v24, v4

    .line 57
    .line 58
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 59
    .line 60
    move/from16 v9, p2

    .line 61
    .line 62
    move/from16 v10, p4

    .line 63
    .line 64
    invoke-static {v6, v9, v10}, Landroid/view/MotionEvent;->clamp(FFF)F

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 74
    .line 75
    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 76
    .line 77
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 82
    .line 83
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    iget-wide v9, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 88
    .line 89
    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 94
    .line 95
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    iget-wide v11, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 100
    .line 101
    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    iget-wide v12, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 106
    .line 107
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 112
    .line 113
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    iget-wide v14, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 118
    .line 119
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    move-wide/from16 v16, v6

    .line 124
    .line 125
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 126
    .line 127
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    .line 128
    .line 129
    .line 130
    move-result v18

    .line 131
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 132
    .line 133
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    .line 134
    .line 135
    .line 136
    move-result v19

    .line 137
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 138
    .line 139
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    .line 140
    .line 141
    .line 142
    move-result v20

    .line 143
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 144
    .line 145
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v21

    .line 149
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 150
    .line 151
    const/high16 v7, -0x80000000

    .line 152
    .line 153
    invoke-static {v5, v6, v7}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    .line 154
    .line 155
    .line 156
    move-result-wide v25

    .line 157
    move-wide/from16 v5, v16

    .line 158
    .line 159
    move v7, v4

    .line 160
    move/from16 v15, v18

    .line 161
    .line 162
    move/from16 v16, v19

    .line 163
    .line 164
    move/from16 v17, v20

    .line 165
    .line 166
    move-wide/from16 v18, v21

    .line 167
    .line 168
    move-wide/from16 v20, v25

    .line 169
    .line 170
    move/from16 v22, v3

    .line 171
    .line 172
    invoke-static/range {v5 .. v24}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    iput-wide v3, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 177
    .line 178
    monitor-exit v2

    .line 179
    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw v0
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result p1

    return p1
.end method

.method public final getAction()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final getActionButton()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAxisValue(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getAxisValue(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getButtonState()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 2

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalOrientation(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalPressure(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalSize(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalSize(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalX(I)F
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalX(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalY(I)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistoricalY(II)F
    .locals 3

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getHistorySize()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/16 v4, 0x8

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getPointerCount()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result p1

    return p1
.end method

.method public final getPointerIdBits()I
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 12
    .line 13
    invoke-static {v3, v4, v1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    shl-int v3, v4, v3

    .line 19
    .line 20
    or-int/2addr v2, v3

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v2
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public final getPressure()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getRawX()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getSource()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public final getToolMajor()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getToolMinor()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x7

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getToolType(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result p1

    return p1
.end method

.method public final getTouchMajor()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getTouchMinor()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x5

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getX()F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getXPrecision()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 4

    .line 2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final getYPrecision()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final isButtonPressed(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isHoverExitPending()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTainted()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTargetAccessibilityFocus()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTouchEvent()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 13
    .line 14
    const/high16 v6, -0x80000000

    .line 15
    .line 16
    invoke-static {v4, v5, v1, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 21
    .line 22
    invoke-static {v7, v8, v3, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    cmpg-float v5, v4, p1

    .line 27
    .line 28
    if-ltz v5, :cond_1

    .line 29
    .line 30
    cmpl-float v4, v4, p3

    .line 31
    .line 32
    if-gtz v4, :cond_1

    .line 33
    .line 34
    cmpg-float v4, v3, p2

    .line 35
    .line 36
    if-ltz v4, :cond_1

    .line 37
    .line 38
    cmpl-float v3, v3, p4

    .line 39
    .line 40
    if-lez v3, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    return v1

    .line 47
    :cond_2
    return v3
.end method

.method public final offsetLocation(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 16
    .line 17
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 18
    .line 19
    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 20
    .line 21
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public final scale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    return-void
.end method

.method public final setActionButton(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    return-void
.end method

.method public final setButtonState(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    return-void
.end method

.method public final setDownTime(J)V
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    return-void
.end method

.method public setHoverExitPending(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    or-int/lit8 p1, v0, 0x4

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    and-int/lit8 p1, v0, -0x5

    .line 13
    .line 14
    :goto_0
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setLocation(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr p1, v0

    .line 10
    sub-float/2addr p2, v1

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setSource(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)I

    return-void
.end method

.method public final setTainted(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/high16 p1, -0x80000000

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    :goto_0
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/high16 p1, 0x40000000    # 2.0f

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p1, -0x40000001    # -1.9999999f

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    :goto_0
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 17
    .line 18
    .line 19
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 20
    .line 21
    sget-object v25, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 22
    .line 23
    sget-object v26, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 24
    .line 25
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    and-int/lit16 v5, v4, 0xff

    .line 32
    .line 33
    const v6, 0xff00

    .line 34
    .line 35
    .line 36
    and-int/2addr v6, v4

    .line 37
    shr-int/lit8 v6, v6, 0x8

    .line 38
    .line 39
    const/16 v27, 0x0

    .line 40
    .line 41
    const/4 v7, -0x1

    .line 42
    move/from16 v8, v27

    .line 43
    .line 44
    move v15, v8

    .line 45
    :goto_0
    const/4 v9, 0x1

    .line 46
    if-ge v8, v3, :cond_2

    .line 47
    .line 48
    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 49
    .line 50
    aget-object v12, v24, v15

    .line 51
    .line 52
    invoke-static {v10, v11, v8, v12}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 53
    .line 54
    .line 55
    aget-object v10, v24, v15

    .line 56
    .line 57
    iget v10, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 58
    .line 59
    shl-int/2addr v9, v10

    .line 60
    and-int v9, v9, p1

    .line 61
    .line 62
    if-eqz v9, :cond_1

    .line 63
    .line 64
    if-ne v8, v6, :cond_0

    .line 65
    .line 66
    move v7, v15

    .line 67
    :cond_0
    aput v8, v26, v15

    .line 68
    .line 69
    add-int/lit8 v15, v15, 0x1

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v15, :cond_c

    .line 75
    .line 76
    const/4 v3, 0x5

    .line 77
    if-eq v5, v3, :cond_3

    .line 78
    .line 79
    const/4 v6, 0x6

    .line 80
    if-ne v5, v6, :cond_4

    .line 81
    .line 82
    :cond_3
    if-gez v7, :cond_5

    .line 83
    .line 84
    const/4 v4, 0x2

    .line 85
    :cond_4
    :goto_1
    move v3, v4

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    if-ne v15, v9, :cond_7

    .line 88
    .line 89
    if-ne v5, v3, :cond_6

    .line 90
    .line 91
    move/from16 v4, v27

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    move v4, v9

    .line 95
    goto :goto_1

    .line 96
    :cond_7
    shl-int/lit8 v3, v7, 0x8

    .line 97
    .line 98
    or-int v4, v5, v3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 102
    .line 103
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    move/from16 v13, v27

    .line 108
    .line 109
    :goto_3
    if-gt v13, v14, :cond_b

    .line 110
    .line 111
    if-ne v13, v14, :cond_8

    .line 112
    .line 113
    const/high16 v4, -0x80000000

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    move v4, v13

    .line 117
    :goto_4
    move/from16 v5, v27

    .line 118
    .line 119
    :goto_5
    if-ge v5, v15, :cond_9

    .line 120
    .line 121
    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 122
    .line 123
    aget v8, v26, v5

    .line 124
    .line 125
    aget-object v9, v25, v5

    .line 126
    .line 127
    invoke-static {v6, v7, v8, v4, v9}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_9
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 134
    .line 135
    invoke-static {v5, v6, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    .line 136
    .line 137
    .line 138
    move-result-wide v19

    .line 139
    if-nez v13, :cond_a

    .line 140
    .line 141
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 142
    .line 143
    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 144
    .line 145
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    iget-wide v7, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 150
    .line 151
    invoke-static {v7, v8}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 156
    .line 157
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 162
    .line 163
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    iget-wide v11, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 168
    .line 169
    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    move/from16 v16, v13

    .line 174
    .line 175
    iget-wide v12, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 176
    .line 177
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    move/from16 p1, v14

    .line 182
    .line 183
    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 184
    .line 185
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    move/from16 v17, v15

    .line 190
    .line 191
    iget-wide v14, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 192
    .line 193
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    move/from16 v18, v14

    .line 198
    .line 199
    iget-wide v14, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 200
    .line 201
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    move/from16 v21, v15

    .line 206
    .line 207
    iget-wide v14, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 208
    .line 209
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    .line 210
    .line 211
    .line 212
    move-result v22

    .line 213
    iget-wide v14, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 214
    .line 215
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v28

    .line 219
    move v8, v3

    .line 220
    move/from16 v30, v16

    .line 221
    .line 222
    move/from16 v31, p1

    .line 223
    .line 224
    move/from16 v14, v18

    .line 225
    .line 226
    move/from16 v32, v17

    .line 227
    .line 228
    move/from16 v15, v21

    .line 229
    .line 230
    move/from16 v16, v22

    .line 231
    .line 232
    move-wide/from16 v17, v28

    .line 233
    .line 234
    move/from16 v21, v32

    .line 235
    .line 236
    move-object/from16 v22, v24

    .line 237
    .line 238
    move-object/from16 v23, v25

    .line 239
    .line 240
    invoke-static/range {v4 .. v23}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    .line 241
    .line 242
    .line 243
    move-result-wide v4

    .line 244
    iput-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_a
    move/from16 v30, v13

    .line 248
    .line 249
    move/from16 v31, v14

    .line 250
    .line 251
    move/from16 v32, v15

    .line 252
    .line 253
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 254
    .line 255
    const/4 v9, 0x0

    .line 256
    move-wide/from16 v6, v19

    .line 257
    .line 258
    move-object/from16 v8, v25

    .line 259
    .line 260
    invoke-static/range {v4 .. v9}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 261
    .line 262
    .line 263
    :goto_6
    add-int/lit8 v13, v30, 0x1

    .line 264
    .line 265
    move/from16 v14, v31

    .line 266
    .line 267
    move/from16 v15, v32

    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_b
    monitor-exit v2

    .line 272
    return-object v0

    .line 273
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    const-string v3, "idBits did not match any ids in the event"

    .line 276
    .line 277
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MotionEvent { action="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", actionButton="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    if-ge v2, v1, :cond_0

    .line 41
    .line 42
    const-string v3, ", id["

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "]="

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ", x["

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ", y["

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, ", toolType["

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-static {v3}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    const-string v2, ", buttonState="

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-static {v2}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ", metaState="

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v2, ", flags=0x"

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, ", edgeFlags=0x"

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v2, ", pointerCount="

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, ", historySize="

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, ", eventTime="

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, ", downTime="

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 225
    .line 226
    .line 227
    move-result-wide v1

    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v1, ", deviceId="

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, ", source=0x"

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v1, " }"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 4
    .line 5
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeTransform(JJ)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "matrix must not be null"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
