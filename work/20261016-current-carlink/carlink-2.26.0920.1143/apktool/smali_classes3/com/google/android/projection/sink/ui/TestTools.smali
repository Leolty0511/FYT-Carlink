.class public Lcom/google/android/projection/sink/ui/TestTools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;,
        Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;
    }
.end annotation


# static fields
.field static final KEYBOARD_LOCKOUT_BUTTON_IDS:[I

.field private static final KEYBOARD_LOCKOUT_DISABLE_TIMEOUT:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "AHU.MAIN_ACTIVITY"


# instance fields
.field private final mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSpeedView:Landroid/widget/TextView;

.field private final mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

.field private final mDebugLayout:Landroid/widget/LinearLayout;

.field private final mDpadTouchListener:Landroid/view/View$OnTouchListener;

.field private final mGal:Lcom/google/android/projection/sink/GalIntegration;

.field private final mKeyboardLockoutRevert:Ljava/lang/Runnable;

.field private final mNativeBackgroundText:Landroid/widget/TextView;

.field private final mNativeGuidancePlayer:Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

.field private final mNativeLayout:Landroid/widget/LinearLayout;

.field private final mNativeMusicPlay:Landroid/widget/Button;

.field private final mNativeMusicPlayer:Lcom/google/android/projection/sink/audio/NativeMusicPlayer;

.field private final mNativeMusicStop:Landroid/widget/Button;

.field private final mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

.field private final mNavFocusToggle:Landroid/widget/ToggleButton;

.field private final mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

.field private final mRootView:Landroid/view/View;

.field private final mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

.field private final mSettings:Lcom/google/android/projection/sink/settings/Settings;

.field private mSimulatedLocationControls:Landroid/view/View;

.field private final mVfToggle:Landroid/widget/ToggleButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget v2, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_auto:I

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget v2, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_force:I

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget v2, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_override:I

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    sput-object v0, Lcom/google/android/projection/sink/ui/TestTools;->KEYBOARD_LOCKOUT_BUTTON_IDS:[I

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/sink/navigation/NavigationFocusManager;Lcom/google/android/projection/sink/sensors/SensorManager;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;-><init>(Lcom/google/android/projection/sink/ui/TestTools;Lcom/google/android/projection/sink/ui/TestTools$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/sink/ui/TestTools$15;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/ui/TestTools$15;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mKeyboardLockoutRevert:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/projection/sink/ui/TestTools$20;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/ui/TestTools$20;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDpadTouchListener:Landroid/view/View$OnTouchListener;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/google/android/projection/sink/ui/TestTools;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 31
    .line 32
    new-instance p2, Lcom/google/android/projection/sink/settings/Settings;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 38
    .line 39
    iput-object p4, p0, Lcom/google/android/projection/sink/ui/TestTools;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 40
    .line 41
    iput-object p5, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 42
    .line 43
    iput-object p6, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 44
    .line 45
    iput-object p7, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 46
    .line 47
    sget p3, Lcom/google/android/projection/sink/R$id;->native_layout:I

    .line 48
    .line 49
    invoke-virtual {p7, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeLayout:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    sget p3, Lcom/google/android/projection/sink/R$id;->native_text:I

    .line 58
    .line 59
    invoke-virtual {p7, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p3, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeBackgroundText:Landroid/widget/TextView;

    .line 66
    .line 67
    sget p3, Lcom/google/android/projection/sink/R$raw;->john_harrison_with_the_wichita_state_university_chamber_players_05_summer_mvt_2_adagio:I

    .line 68
    .line 69
    invoke-static {p1, p4, p3}, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;->createMusicPlayer(Landroid/content/Context;Lcom/google/android/projection/sink/audio/AudioFocusManager;I)Lcom/google/android/projection/sink/audio/NativeMusicPlayer;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    iput-object p3, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeMusicPlayer:Lcom/google/android/projection/sink/audio/NativeMusicPlayer;

    .line 74
    .line 75
    sget p3, Lcom/google/android/projection/sink/R$raw;->alarm_classic:I

    .line 76
    .line 77
    invoke-static {p1, p4, p3}, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->createGuidancePlayer(Landroid/content/Context;Lcom/google/android/projection/sink/audio/AudioFocusManager;I)Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeGuidancePlayer:Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

    .line 82
    .line 83
    sget p1, Lcom/google/android/projection/sink/R$id;->tools:I

    .line 84
    .line 85
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/LinearLayout;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugLayout:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    const/4 p3, 0x4

    .line 94
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    sget p1, Lcom/google/android/projection/sink/R$id;->video_focus:I

    .line 98
    .line 99
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/widget/ToggleButton;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mVfToggle:Landroid/widget/ToggleButton;

    .line 106
    .line 107
    const/4 p4, 0x1

    .line 108
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 109
    .line 110
    .line 111
    new-instance p5, Lcom/google/android/projection/sink/ui/TestTools$1;

    .line 112
    .line 113
    invoke-direct {p5, p0}, Lcom/google/android/projection/sink/ui/TestTools$1;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    .line 118
    .line 119
    sget p1, Lcom/google/android/projection/sink/R$id;->audio_focus:I

    .line 120
    .line 121
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/ToggleButton;

    .line 126
    .line 127
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 128
    .line 129
    .line 130
    new-instance p5, Lcom/google/android/projection/sink/ui/TestTools$2;

    .line 131
    .line 132
    invoke-direct {p5, p0}, Lcom/google/android/projection/sink/ui/TestTools$2;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    .line 137
    .line 138
    sget p1, Lcom/google/android/projection/sink/R$id;->native_transient_audio:I

    .line 139
    .line 140
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/Button;

    .line 145
    .line 146
    new-instance p5, Lcom/google/android/projection/sink/ui/TestTools$3;

    .line 147
    .line 148
    invoke-direct {p5, p0}, Lcom/google/android/projection/sink/ui/TestTools$3;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    sget p1, Lcom/google/android/projection/sink/R$id;->native_music_play:I

    .line 155
    .line 156
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Landroid/widget/Button;

    .line 161
    .line 162
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeMusicPlay:Landroid/widget/Button;

    .line 163
    .line 164
    new-instance p5, Lcom/google/android/projection/sink/ui/TestTools$4;

    .line 165
    .line 166
    invoke-direct {p5, p0}, Lcom/google/android/projection/sink/ui/TestTools$4;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    sget p1, Lcom/google/android/projection/sink/R$id;->native_music_stop:I

    .line 173
    .line 174
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Landroid/widget/Button;

    .line 179
    .line 180
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeMusicStop:Landroid/widget/Button;

    .line 181
    .line 182
    new-instance p5, Lcom/google/android/projection/sink/ui/TestTools$5;

    .line 183
    .line 184
    invoke-direct {p5, p0}, Lcom/google/android/projection/sink/ui/TestTools$5;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    sget p1, Lcom/google/android/projection/sink/R$id;->nav_focus:I

    .line 191
    .line 192
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroid/widget/ToggleButton;

    .line 197
    .line 198
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNavFocusToggle:Landroid/widget/ToggleButton;

    .line 199
    .line 200
    const/4 p5, 0x0

    .line 201
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 202
    .line 203
    .line 204
    new-instance p6, Lcom/google/android/projection/sink/ui/TestTools$6;

    .line 205
    .line 206
    invoke-direct {p6, p0}, Lcom/google/android/projection/sink/ui/TestTools$6;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/google/android/projection/sink/settings/Settings;->isRotaryControllerEnabled()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_0

    .line 217
    .line 218
    sget p1, Lcom/google/android/projection/sink/R$id;->sim_dpad:I

    .line 219
    .line 220
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const/16 p2, 0x8

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    :cond_0
    sget p1, Lcom/google/android/projection/sink/R$id;->dpad_up:I

    .line 230
    .line 231
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Landroid/widget/Button;

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    .line 239
    .line 240
    sget p1, Lcom/google/android/projection/sink/R$id;->dpad_down:I

    .line 241
    .line 242
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Landroid/widget/Button;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    .line 250
    .line 251
    sget p1, Lcom/google/android/projection/sink/R$id;->dpad_left:I

    .line 252
    .line 253
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Landroid/widget/Button;

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    .line 261
    .line 262
    sget p1, Lcom/google/android/projection/sink/R$id;->dpad_right:I

    .line 263
    .line 264
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Landroid/widget/Button;

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    .line 272
    .line 273
    sget p1, Lcom/google/android/projection/sink/R$id;->dpad_center:I

    .line 274
    .line 275
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p1, Landroid/widget/Button;

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    .line 283
    .line 284
    sget p1, Lcom/google/android/projection/sink/R$id;->rotary_cw:I

    .line 285
    .line 286
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Landroid/widget/Button;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    .line 294
    .line 295
    sget p1, Lcom/google/android/projection/sink/R$id;->rotary_ccw:I

    .line 296
    .line 297
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Landroid/widget/Button;

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    .line 305
    .line 306
    sget p1, Lcom/google/android/projection/sink/R$id;->rotary_cw_fling:I

    .line 307
    .line 308
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Landroid/widget/Button;

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    .line 316
    .line 317
    sget p1, Lcom/google/android/projection/sink/R$id;->rotary_ccw_fling:I

    .line 318
    .line 319
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Landroid/widget/Button;

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    .line 327
    .line 328
    sget p1, Lcom/google/android/projection/sink/R$id;->touchpad:I

    .line 329
    .line 330
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$7;

    .line 335
    .line 336
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/TestTools$7;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    .line 341
    .line 342
    sget p1, Lcom/google/android/projection/sink/R$id;->call:I

    .line 343
    .line 344
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Landroid/widget/Button;

    .line 349
    .line 350
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 351
    .line 352
    const/4 p6, 0x5

    .line 353
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    .line 358
    .line 359
    sget p1, Lcom/google/android/projection/sink/R$id;->end_call:I

    .line 360
    .line 361
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Landroid/widget/Button;

    .line 366
    .line 367
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 368
    .line 369
    const/4 p6, 0x6

    .line 370
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    .line 375
    .line 376
    sget p1, Lcom/google/android/projection/sink/R$id;->media_prev:I

    .line 377
    .line 378
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    check-cast p1, Landroid/widget/Button;

    .line 383
    .line 384
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 385
    .line 386
    const/16 p6, 0x58

    .line 387
    .line 388
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    .line 393
    .line 394
    sget p1, Lcom/google/android/projection/sink/R$id;->media_next:I

    .line 395
    .line 396
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, Landroid/widget/Button;

    .line 401
    .line 402
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 403
    .line 404
    const/16 p6, 0x57

    .line 405
    .line 406
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    .line 411
    .line 412
    sget p1, Lcom/google/android/projection/sink/R$id;->media_play:I

    .line 413
    .line 414
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    check-cast p1, Landroid/widget/Button;

    .line 419
    .line 420
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 421
    .line 422
    const/16 p6, 0x7e

    .line 423
    .line 424
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    .line 429
    .line 430
    sget p1, Lcom/google/android/projection/sink/R$id;->media_pause:I

    .line 431
    .line 432
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    check-cast p1, Landroid/widget/Button;

    .line 437
    .line 438
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 439
    .line 440
    const/16 p6, 0x7f

    .line 441
    .line 442
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 446
    .line 447
    .line 448
    sget p1, Lcom/google/android/projection/sink/R$id;->media_play_pause:I

    .line 449
    .line 450
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    check-cast p1, Landroid/widget/Button;

    .line 455
    .line 456
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 457
    .line 458
    const/16 p6, 0x55

    .line 459
    .line 460
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    .line 465
    .line 466
    sget p1, Lcom/google/android/projection/sink/R$id;->bvra_button:I

    .line 467
    .line 468
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Landroid/widget/Button;

    .line 473
    .line 474
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 475
    .line 476
    const/16 p6, 0x54

    .line 477
    .line 478
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 482
    .line 483
    .line 484
    sget p1, Lcom/google/android/projection/sink/R$id;->media_button:I

    .line 485
    .line 486
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    check-cast p1, Landroid/widget/Button;

    .line 491
    .line 492
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 493
    .line 494
    const/16 p6, 0xd1

    .line 495
    .line 496
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 500
    .line 501
    .line 502
    sget p1, Lcom/google/android/projection/sink/R$id;->tel_button:I

    .line 503
    .line 504
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    check-cast p1, Landroid/widget/Button;

    .line 509
    .line 510
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 511
    .line 512
    sget-object p6, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_TEL:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 513
    .line 514
    invoke-virtual {p6}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 515
    .line 516
    .line 517
    move-result p6

    .line 518
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    .line 523
    .line 524
    sget p1, Lcom/google/android/projection/sink/R$id;->nav_button:I

    .line 525
    .line 526
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    check-cast p1, Landroid/widget/Button;

    .line 531
    .line 532
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 533
    .line 534
    sget-object p6, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_NAVIGATION:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 535
    .line 536
    invoke-virtual {p6}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 537
    .line 538
    .line 539
    move-result p6

    .line 540
    invoke-direct {p2, p0, p6}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 544
    .line 545
    .line 546
    sget p1, Lcom/google/android/projection/sink/R$id;->back_button:I

    .line 547
    .line 548
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    check-cast p1, Landroid/widget/Button;

    .line 553
    .line 554
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;

    .line 555
    .line 556
    invoke-direct {p2, p0, p3}, Lcom/google/android/projection/sink/ui/TestTools$ButtonTouchListener;-><init>(Lcom/google/android/projection/sink/ui/TestTools;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    .line 561
    .line 562
    sget p1, Lcom/google/android/projection/sink/R$id;->byebye_button:I

    .line 563
    .line 564
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    check-cast p1, Landroid/widget/Button;

    .line 569
    .line 570
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$8;

    .line 571
    .line 572
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/TestTools$8;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    .line 577
    .line 578
    sget p1, Lcom/google/android/projection/sink/R$id;->disconnect_gvve_button:I

    .line 579
    .line 580
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    check-cast p1, Landroid/widget/Button;

    .line 585
    .line 586
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$9;

    .line 587
    .line 588
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/TestTools$9;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    .line 593
    .line 594
    sget-object p1, Lcom/google/android/projection/sink/ui/TestTools;->KEYBOARD_LOCKOUT_BUTTON_IDS:[I

    .line 595
    .line 596
    array-length p2, p1

    .line 597
    move p3, p5

    .line 598
    :goto_0
    if-ge p3, p2, :cond_1

    .line 599
    .line 600
    aget p6, p1, p3

    .line 601
    .line 602
    iget-object p7, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 603
    .line 604
    invoke-virtual {p7, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 605
    .line 606
    .line 607
    move-result-object p6

    .line 608
    check-cast p6, Landroid/widget/ToggleButton;

    .line 609
    .line 610
    new-instance p7, Lcom/google/android/projection/sink/ui/TestTools$10;

    .line 611
    .line 612
    invoke-direct {p7, p0}, Lcom/google/android/projection/sink/ui/TestTools$10;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p6, p7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    .line 617
    .line 618
    add-int/lit8 p3, p3, 0x1

    .line 619
    .line 620
    goto :goto_0

    .line 621
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 622
    .line 623
    sget p2, Lcom/google/android/projection/sink/R$id;->bluetooth_pairing_response_button:I

    .line 624
    .line 625
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    check-cast p1, Landroid/widget/Button;

    .line 630
    .line 631
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 632
    .line 633
    .line 634
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$11;

    .line 635
    .line 636
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/TestTools$11;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    .line 641
    .line 642
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 643
    .line 644
    sget p2, Lcom/google/android/projection/sink/R$id;->bluetooth_auth_data_button:I

    .line 645
    .line 646
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    check-cast p1, Landroid/widget/Button;

    .line 651
    .line 652
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 653
    .line 654
    .line 655
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$12;

    .line 656
    .line 657
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/TestTools$12;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    .line 662
    .line 663
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 664
    .line 665
    invoke-virtual {p1}, Lcom/google/android/projection/sink/settings/Settings;->isGpsSimulationEnabled()Z

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    if-eqz p1, :cond_2

    .line 670
    .line 671
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/TestTools;->initializeSimulatorSpeedControls()V

    .line 672
    .line 673
    .line 674
    :cond_2
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 675
    .line 676
    new-instance p2, Lcom/google/android/projection/sink/ui/TestTools$13;

    .line 677
    .line 678
    invoke-direct {p2, p0}, Lcom/google/android/projection/sink/ui/TestTools$13;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->registerListener(Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;)V

    .line 682
    .line 683
    .line 684
    const/4 p1, 0x3

    .line 685
    new-array p2, p1, [I

    .line 686
    .line 687
    sget p3, Lcom/google/android/projection/sink/R$id;->night_mode_auto:I

    .line 688
    .line 689
    aput p3, p2, p5

    .line 690
    .line 691
    sget p3, Lcom/google/android/projection/sink/R$id;->night_mode_day:I

    .line 692
    .line 693
    aput p3, p2, p4

    .line 694
    .line 695
    const/4 p3, 0x2

    .line 696
    sget p4, Lcom/google/android/projection/sink/R$id;->night_mode_night:I

    .line 697
    .line 698
    aput p4, p2, p3

    .line 699
    .line 700
    :goto_1
    if-ge p5, p1, :cond_3

    .line 701
    .line 702
    aget p3, p2, p5

    .line 703
    .line 704
    iget-object p4, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 705
    .line 706
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 707
    .line 708
    .line 709
    move-result-object p3

    .line 710
    check-cast p3, Landroid/widget/ToggleButton;

    .line 711
    .line 712
    new-instance p4, Lcom/google/android/projection/sink/ui/TestTools$14;

    .line 713
    .line 714
    invoke-direct {p4, p0, p2}, Lcom/google/android/projection/sink/ui/TestTools$14;-><init>(Lcom/google/android/projection/sink/ui/TestTools;[I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    .line 719
    .line 720
    add-int/lit8 p5, p5, 0x1

    .line 721
    .line 722
    goto :goto_1

    .line 723
    :cond_3
    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/debug/DebugContext;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/sink/ui/TestTools;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/ui/TestTools;->updateSpeedControls(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/AudioFocusManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeGuidancePlayer:Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/audio/NativeMusicPlayer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeMusicPlayer:Lcom/google/android/projection/sink/audio/NativeMusicPlayer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/navigation/NavigationFocusManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/ui/TestTools;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/ui/TestTools;->onKeyboardLockoutButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNavFocusToggle:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method private initializeSimulatorSpeedControls()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    sget v1, Lcom/google/android/projection/sink/R$id;->simulated_location_controls:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSimulatedLocationControls:Landroid/view/View;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSimulatedLocationControls:Landroid/view/View;

    .line 16
    .line 17
    sget v1, Lcom/google/android/projection/sink/R$id;->simulated_location_current_speed:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mCurrentSpeedView:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/ui/TestTools;->updateSpeedControls(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSimulatedLocationControls:Landroid/view/View;

    .line 32
    .line 33
    sget v2, Lcom/google/android/projection/sink/R$id;->simulated_location_faster:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/google/android/projection/sink/ui/TestTools$16;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/ui/TestTools$16;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSimulatedLocationControls:Landroid/view/View;

    .line 48
    .line 49
    sget v2, Lcom/google/android/projection/sink/R$id;->simulated_location_slower:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lcom/google/android/projection/sink/ui/TestTools$17;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/ui/TestTools$17;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSimulatedLocationControls:Landroid/view/View;

    .line 64
    .line 65
    sget v2, Lcom/google/android/projection/sink/R$id;->simulated_location_reset:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Lcom/google/android/projection/sink/ui/TestTools$18;

    .line 72
    .line 73
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/ui/TestTools$18;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSimulatedLocationControls:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/DebugContext;->getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lcom/google/android/projection/sink/ui/TestTools$19;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/TestTools$19;-><init>(Lcom/google/android/projection/sink/ui/TestTools;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->registerUiListener(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private onKeyboardLockoutButtonClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mKeyboardLockoutRevert:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget v1, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_auto:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget v1, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_force:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    sget v0, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_override:I

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mKeyboardLockoutRevert:Ljava/lang/Runnable;

    .line 55
    .line 56
    const-wide/32 v1, 0x493e0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/TestTools;->updateKeyboardLockoutUi()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 66
    .line 67
    const/16 v0, 0xd

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->reportAvailable(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private updateKeyboardLockoutUi()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_auto:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/ToggleButton;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/DebugContext;->getKeyboardLockoutMode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 28
    .line 29
    sget v1, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_force:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ToggleButton;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/DebugContext;->getKeyboardLockoutMode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne v1, v3, :cond_1

    .line 44
    .line 45
    move v1, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v1, v2

    .line 48
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mRootView:Landroid/view/View;

    .line 52
    .line 53
    sget v1, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_override:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/ToggleButton;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/DebugContext;->getKeyboardLockoutMode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v4, 0x2

    .line 68
    if-ne v1, v4, :cond_2

    .line 69
    .line 70
    move v2, v3

    .line 71
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private updateSpeedControls(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mCurrentSpeedView:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    sget v0, Lcom/google/android/projection/sink/R$string;->simulated_location_stopped:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    sget v1, Lcom/google/android/projection/sink/R$string;->simulated_location_format:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v1, v2

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mCurrentSpeedView:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public forceKeyboardLockoutOverride()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/TestTools;->mKeyboardLockoutRevert:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/debug/DebugContext;->setKeyboardLockoutMode(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/TestTools;->updateKeyboardLockoutUi()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getTestUiUpdateHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    return-object v0
.end method

.method public setApplicationIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativePanelUpdateHandler:Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/sink/ui/TestTools$NativePanelUpdateHandler;->setApplicationIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public setNativeContentEnabled(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mVfToggle:Landroid/widget/ToggleButton;

    .line 2
    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeBackgroundText:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/TestTools;->mNativeLayout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x8

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public toggleDebugToolbarVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugLayout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools;->mDebugLayout:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
