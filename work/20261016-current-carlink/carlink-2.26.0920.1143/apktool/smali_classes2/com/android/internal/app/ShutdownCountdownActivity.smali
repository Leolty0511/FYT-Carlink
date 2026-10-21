.class public Lcom/android/internal/app/ShutdownCountdownActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final SHUTDOWN_FOR_OVERHEAT_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShutdownCountdownActivity"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/os/IPowerManager;

.field private mSeconds:I

.field private mSecondsForOverheat:I

.field private mShutdownAction:Ljava/lang/Runnable;

.field private mShutdownForOverheat:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xf

    .line 5
    .line 6
    iput v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSeconds:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/app/ShutdownCountdownActivity$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownCountdownActivity$1;-><init>(Lcom/android/internal/app/ShutdownCountdownActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/android/internal/app/ShutdownCountdownActivity$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownCountdownActivity$2;-><init>(Lcom/android/internal/app/ShutdownCountdownActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/app/ShutdownCountdownActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSeconds:I

    return p0
.end method

.method public static synthetic access$010(Lcom/android/internal/app/ShutdownCountdownActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSeconds:I

    return v0
.end method

.method public static synthetic access$100(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/os/IPowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mPm:Landroid/os/IPowerManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/internal/app/ShutdownCountdownActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    return p0
.end method

.method public static synthetic access$510(Lcom/android/internal/app/ShutdownCountdownActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    return v0
.end method

.method public static synthetic access$600(Lcom/android/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "onCreate(): mAction="

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ShutdownCountdownActivity"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string v0, "power"

    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mPm:Landroid/os/IPowerManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x680080

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/os/PowerManager;

    .line 70
    .line 71
    const-string v2, "ShutdownActivity"

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    .line 80
    const-string v0, "Countdown dialog need power wake lock to show countdown normally ,acquire mWakeLock"

    .line 81
    .line 82
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 88
    .line 89
    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 91
    .line 92
    const v1, 0x1030074

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const v1, 0x106000d

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 115
    .line 116
    const v1, 0x1040525

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 120
    .line 121
    .line 122
    const-string v0, "ShutdownDueToOverheat"

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const-wide/16 v4, 0x3e8

    .line 130
    .line 131
    const/16 v0, 0x7d9

    .line 132
    .line 133
    const-string v2, "ShutdownTiming"

    .line 134
    .line 135
    const v6, 0x10405bc

    .line 136
    .line 137
    .line 138
    if-ne p1, v3, :cond_1

    .line 139
    .line 140
    iget p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    .line 141
    .line 142
    if-lez p1, :cond_0

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget v7, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    .line 151
    .line 152
    new-array v3, v3, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    aput-object v8, v3, v1

    .line 159
    .line 160
    const v8, 0x1150014

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v8, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 172
    .line 173
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :goto_0
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    .line 215
    .line 216
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_1
    iget p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSeconds:I

    .line 221
    .line 222
    if-lez p1, :cond_2

    .line 223
    .line 224
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    iget v7, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mSeconds:I

    .line 231
    .line 232
    new-array v3, v3, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    aput-object v8, v3, v1

    .line 239
    .line 240
    const v8, 0x1150018

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v8, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 252
    .line 253
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    :goto_1
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 261
    .line 262
    const/high16 v3, 0x1040000

    .line 263
    .line 264
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    new-instance v6, Lcom/android/internal/app/ShutdownCountdownActivity$3;

    .line 269
    .line 270
    invoke-direct {v6, p0}, Lcom/android/internal/app/ShutdownCountdownActivity$3;-><init>(Lcom/android/internal/app/ShutdownCountdownActivity;)V

    .line 271
    .line 272
    .line 273
    const/4 v7, -0x3

    .line 274
    invoke-virtual {p1, v7, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    .line 310
    .line 311
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    .line 312
    .line 313
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    .line 315
    .line 316
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "ShutdownCountdownActivity"

    .line 19
    .line 20
    const-string v1, "Countdown dialog dismiss - release mWakeLock."

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
