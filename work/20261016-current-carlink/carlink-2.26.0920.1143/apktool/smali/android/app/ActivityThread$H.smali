.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final ACTIVITY_MOVED_TO_DISPLAY:I = 0x9d

.field public static final APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final ATTACH_AGENT:I = 0x9b

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public codeToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-string v3, "activityStop"

    .line 8
    .line 9
    const-string v4, "activityPause"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    const-wide/16 v8, 0x40

    .line 15
    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    goto/16 :goto_6

    .line 20
    .line 21
    :pswitch_1
    const-string v2, "activityMovedToDisplay"

    .line 22
    .line 23
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 27
    .line 28
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Landroid/app/ActivityThread$ActivityConfigChangeData;

    .line 31
    .line 32
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :pswitch_2
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 43
    .line 44
    iput-boolean v7, v2, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 45
    .line 46
    :try_start_0
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 54
    .line 55
    iput-boolean v6, v2, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :catchall_0
    move-exception v0

    .line 60
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 61
    .line 62
    iput-boolean v6, v2, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 63
    .line 64
    throw v0

    .line 65
    :pswitch_3
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :pswitch_4
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 75
    .line 76
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v4, v3

    .line 79
    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Landroid/os/IBinder;

    .line 84
    .line 85
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Lcom/android/internal/app/IVoiceInteractor;

    .line 90
    .line 91
    invoke-static {v2, v4, v3}, Landroid/app/ActivityThread;->access$4200(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :pswitch_5
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 97
    .line 98
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    .line 100
    move-object v4, v3

    .line 101
    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 102
    .line 103
    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Landroid/os/IBinder;

    .line 106
    .line 107
    move-object v5, v3

    .line 108
    check-cast v5, Lcom/android/internal/os/SomeArgs;

    .line 109
    .line 110
    iget v5, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 111
    .line 112
    if-ne v5, v7, :cond_0

    .line 113
    .line 114
    move v6, v7

    .line 115
    :cond_0
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, Landroid/content/res/Configuration;

    .line 120
    .line 121
    invoke-static {v2, v4, v6, v3}, Landroid/app/ActivityThread;->access$4100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :pswitch_6
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 127
    .line 128
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v4, v3

    .line 131
    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 132
    .line 133
    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v4, Landroid/os/IBinder;

    .line 136
    .line 137
    move-object v5, v3

    .line 138
    check-cast v5, Lcom/android/internal/os/SomeArgs;

    .line 139
    .line 140
    iget v5, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 141
    .line 142
    if-ne v5, v7, :cond_1

    .line 143
    .line 144
    move v6, v7

    .line 145
    :cond_1
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 146
    .line 147
    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v3, Landroid/content/res/Configuration;

    .line 150
    .line 151
    invoke-static {v2, v4, v6, v3}, Landroid/app/ActivityThread;->access$4000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :pswitch_7
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 157
    .line 158
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 161
    .line 162
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3900(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_6

    .line 166
    .line 167
    :pswitch_8
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 168
    .line 169
    invoke-static {v2}, Landroid/app/ActivityThread;->access$3800(Landroid/app/ActivityThread;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :pswitch_9
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 175
    .line 176
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v3, Landroid/os/IBinder;

    .line 179
    .line 180
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3700(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_6

    .line 184
    .line 185
    :pswitch_a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v2, Landroid/util/Pair;

    .line 188
    .line 189
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 190
    .line 191
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v4, Landroid/os/IBinder;

    .line 194
    .line 195
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v2, Landroid/app/ActivityOptions;

    .line 198
    .line 199
    invoke-virtual {v3, v4, v2}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_6

    .line 203
    .line 204
    :pswitch_b
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 205
    .line 206
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_6

    .line 214
    .line 215
    :pswitch_c
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 216
    .line 217
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v3, Landroid/os/IBinder;

    .line 220
    .line 221
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 222
    .line 223
    if-ne v4, v7, :cond_2

    .line 224
    .line 225
    move v6, v7

    .line 226
    :cond_2
    invoke-virtual {v2, v3, v6}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_6

    .line 230
    .line 231
    :pswitch_d
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 232
    .line 233
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v3, Landroid/app/ActivityThread$RequestAssistContextExtras;

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :pswitch_e
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 243
    .line 244
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v3, Landroid/os/IBinder;

    .line 247
    .line 248
    invoke-virtual {v2, v3, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_6

    .line 252
    .line 253
    :pswitch_f
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 254
    .line 255
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v3, Landroid/app/ActivityThread$DumpComponentInfo;

    .line 258
    .line 259
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :pswitch_10
    const-string/jumbo v2, "trimMemory"

    .line 265
    .line 266
    .line 267
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 271
    .line 272
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 275
    .line 276
    .line 277
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_6

    .line 281
    .line 282
    :pswitch_11
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 283
    .line 284
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v3, Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 287
    .line 288
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_6

    .line 292
    .line 293
    :pswitch_12
    const-string/jumbo v2, "setCoreSettings"

    .line 294
    .line 295
    .line 296
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 300
    .line 301
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v3, Landroid/os/Bundle;

    .line 304
    .line 305
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3500(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_6

    .line 312
    .line 313
    :pswitch_13
    const-string/jumbo v2, "sleeping"

    .line 314
    .line 315
    .line 316
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 320
    .line 321
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v3, Landroid/os/IBinder;

    .line 324
    .line 325
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 326
    .line 327
    if-eqz v4, :cond_3

    .line 328
    .line 329
    move v6, v7

    .line 330
    :cond_3
    invoke-static {v2, v3, v6}, Landroid/app/ActivityThread;->access$3400(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 331
    .line 332
    .line 333
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_6

    .line 337
    .line 338
    :pswitch_14
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 339
    .line 340
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v3, Landroid/app/ActivityThread$DumpComponentInfo;

    .line 343
    .line 344
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_6

    .line 348
    .line 349
    :pswitch_15
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v2, Landroid/app/ActivityThread$DumpHeapData;

    .line 352
    .line 353
    invoke-static {v2}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_6

    .line 357
    .line 358
    :pswitch_16
    new-instance v2, Landroid/app/RemoteServiceException;

    .line 359
    .line 360
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v0, Ljava/lang/String;

    .line 363
    .line 364
    invoke-direct {v2, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v2

    .line 368
    :pswitch_17
    const-string v2, "broadcastPackage"

    .line 369
    .line 370
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 374
    .line 375
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 376
    .line 377
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v4, [Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_6

    .line 388
    .line 389
    :pswitch_18
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 390
    .line 391
    invoke-virtual {v2}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_6

    .line 395
    .line 396
    :pswitch_19
    const-string/jumbo v2, "providerRemove"

    .line 397
    .line 398
    .line 399
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 403
    .line 404
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 407
    .line 408
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_6

    .line 415
    .line 416
    :pswitch_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_6

    .line 424
    .line 425
    :pswitch_1b
    const-string v2, "backupDestroyAgent"

    .line 426
    .line 427
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 431
    .line 432
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v3, Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 435
    .line 436
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_6

    .line 443
    .line 444
    :pswitch_1c
    const-string v2, "backupCreateAgent"

    .line 445
    .line 446
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 450
    .line 451
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v3, Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 454
    .line 455
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 456
    .line 457
    .line 458
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_6

    .line 462
    .line 463
    :pswitch_1d
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 464
    .line 465
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 466
    .line 467
    if-eqz v3, :cond_4

    .line 468
    .line 469
    move v6, v7

    .line 470
    :cond_4
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v3, Landroid/app/ProfilerInfo;

    .line 473
    .line 474
    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 475
    .line 476
    invoke-virtual {v2, v6, v3, v4}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_6

    .line 480
    .line 481
    :pswitch_1e
    const-string v2, "activityRestart"

    .line 482
    .line 483
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 489
    .line 490
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 491
    .line 492
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_6

    .line 499
    .line 500
    :pswitch_1f
    const-string v2, "activityConfigChanged"

    .line 501
    .line 502
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 506
    .line 507
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast v3, Landroid/app/ActivityThread$ActivityConfigChangeData;

    .line 510
    .line 511
    const/4 v4, -0x1

    .line 512
    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;I)V

    .line 513
    .line 514
    .line 515
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_6

    .line 519
    .line 520
    :pswitch_20
    const-string/jumbo v2, "lowMemory"

    .line 521
    .line 522
    .line 523
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 527
    .line 528
    invoke-virtual {v2}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 529
    .line 530
    .line 531
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_6

    .line 535
    .line 536
    :pswitch_21
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 537
    .line 538
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v3, Landroid/app/ActivityThread$DumpComponentInfo;

    .line 541
    .line 542
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_6

    .line 546
    .line 547
    :pswitch_22
    const-string/jumbo v2, "serviceUnbind"

    .line 548
    .line 549
    .line 550
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 554
    .line 555
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v3, Landroid/app/ActivityThread$BindServiceData;

    .line 558
    .line 559
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 560
    .line 561
    .line 562
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_6

    .line 566
    .line 567
    :pswitch_23
    const-string/jumbo v2, "serviceBind"

    .line 568
    .line 569
    .line 570
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 574
    .line 575
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v3, Landroid/app/ActivityThread$BindServiceData;

    .line 578
    .line 579
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 580
    .line 581
    .line 582
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_6

    .line 586
    .line 587
    :pswitch_24
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 588
    .line 589
    invoke-virtual {v2}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_6

    .line 593
    .line 594
    :pswitch_25
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v2, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 597
    .line 598
    iget-object v3, v2, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 599
    .line 600
    iget-object v4, v2, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 601
    .line 602
    iget-object v2, v2, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 603
    .line 604
    invoke-virtual {v3, v4, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_6

    .line 608
    .line 609
    :pswitch_26
    const-string v2, "configChanged"

    .line 610
    .line 611
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 615
    .line 616
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 617
    .line 618
    move-object v4, v3

    .line 619
    check-cast v4, Landroid/content/res/Configuration;

    .line 620
    .line 621
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 622
    .line 623
    iput v4, v2, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 624
    .line 625
    iput-boolean v7, v2, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 626
    .line 627
    :try_start_1
    check-cast v3, Landroid/content/res/Configuration;

    .line 628
    .line 629
    invoke-virtual {v2, v3, v5}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    .line 631
    .line 632
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 633
    .line 634
    iput-boolean v6, v2, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 635
    .line 636
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_6

    .line 640
    .line 641
    :catchall_1
    move-exception v0

    .line 642
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 643
    .line 644
    iput-boolean v6, v2, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 645
    .line 646
    throw v0

    .line 647
    :pswitch_27
    const-string/jumbo v2, "serviceStop"

    .line 648
    .line 649
    .line 650
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 651
    .line 652
    .line 653
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 654
    .line 655
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v3, Landroid/os/IBinder;

    .line 658
    .line 659
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 660
    .line 661
    .line 662
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_6

    .line 666
    .line 667
    :pswitch_28
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 668
    .line 669
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    const-string/jumbo v3, "serviceStart: "

    .line 674
    .line 675
    .line 676
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 684
    .line 685
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast v3, Landroid/app/ActivityThread$ServiceArgsData;

    .line 688
    .line 689
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 690
    .line 691
    .line 692
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_6

    .line 696
    .line 697
    :pswitch_29
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    .line 699
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    const-string/jumbo v3, "serviceCreate: "

    .line 704
    .line 705
    .line 706
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 711
    .line 712
    .line 713
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 714
    .line 715
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 716
    .line 717
    check-cast v3, Landroid/app/ActivityThread$CreateServiceData;

    .line 718
    .line 719
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 720
    .line 721
    .line 722
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_6

    .line 726
    .line 727
    :pswitch_2a
    const-string v2, "broadcastReceiveComp"

    .line 728
    .line 729
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 730
    .line 731
    .line 732
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 733
    .line 734
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 735
    .line 736
    check-cast v3, Landroid/app/ActivityThread$ReceiverData;

    .line 737
    .line 738
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 739
    .line 740
    .line 741
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_6

    .line 745
    .line 746
    :pswitch_2b
    const-string v2, "activityNewIntent"

    .line 747
    .line 748
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 749
    .line 750
    .line 751
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 752
    .line 753
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v3, Landroid/app/ActivityThread$NewIntentData;

    .line 756
    .line 757
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 758
    .line 759
    .line 760
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_6

    .line 764
    .line 765
    :pswitch_2c
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 766
    .line 767
    iget-object v2, v2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 768
    .line 769
    if-eqz v2, :cond_5

    .line 770
    .line 771
    invoke-virtual {v2}, Landroid/app/Application;->onTerminate()V

    .line 772
    .line 773
    .line 774
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 779
    .line 780
    .line 781
    goto/16 :goto_6

    .line 782
    .line 783
    :pswitch_2d
    const-string v2, "bindApplication"

    .line 784
    .line 785
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 786
    .line 787
    .line 788
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v2, Landroid/app/ActivityThread$AppBindData;

    .line 791
    .line 792
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 793
    .line 794
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 795
    .line 796
    .line 797
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_6

    .line 801
    .line 802
    :pswitch_2e
    const-string v2, "activityDestroy"

    .line 803
    .line 804
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 805
    .line 806
    .line 807
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 808
    .line 809
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v3, Landroid/os/IBinder;

    .line 812
    .line 813
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 814
    .line 815
    if-eqz v4, :cond_6

    .line 816
    .line 817
    goto :goto_0

    .line 818
    :cond_6
    move v7, v6

    .line 819
    :goto_0
    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 820
    .line 821
    invoke-static {v2, v3, v7, v4, v6}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 822
    .line 823
    .line 824
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_6

    .line 828
    .line 829
    :pswitch_2f
    const-string v2, "activityDeliverResult"

    .line 830
    .line 831
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 832
    .line 833
    .line 834
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 835
    .line 836
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v3, Landroid/app/ActivityThread$ResultData;

    .line 839
    .line 840
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_6

    .line 847
    .line 848
    :pswitch_30
    const-string v2, "activityResume"

    .line 849
    .line 850
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 851
    .line 852
    .line 853
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 856
    .line 857
    iget-object v10, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 858
    .line 859
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 860
    .line 861
    move-object v11, v3

    .line 862
    check-cast v11, Landroid/os/IBinder;

    .line 863
    .line 864
    const/4 v12, 0x1

    .line 865
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 866
    .line 867
    if-eqz v3, :cond_7

    .line 868
    .line 869
    move v13, v7

    .line 870
    goto :goto_1

    .line 871
    :cond_7
    move v13, v6

    .line 872
    :goto_1
    const/4 v14, 0x1

    .line 873
    iget v15, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 874
    .line 875
    const-string v16, "RESUME_ACTIVITY"

    .line 876
    .line 877
    invoke-virtual/range {v10 .. v16}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    .line 878
    .line 879
    .line 880
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_6

    .line 884
    .line 885
    :pswitch_31
    const-string v2, "activityHideWindow"

    .line 886
    .line 887
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 888
    .line 889
    .line 890
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 891
    .line 892
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 893
    .line 894
    check-cast v3, Landroid/os/IBinder;

    .line 895
    .line 896
    invoke-static {v2, v3, v6}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 897
    .line 898
    .line 899
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_6

    .line 903
    .line 904
    :pswitch_32
    const-string v2, "activityShowWindow"

    .line 905
    .line 906
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 907
    .line 908
    .line 909
    iget-object v2, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 910
    .line 911
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v3, Landroid/os/IBinder;

    .line 914
    .line 915
    invoke-static {v2, v3, v7}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 916
    .line 917
    .line 918
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_6

    .line 922
    .line 923
    :pswitch_33
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 924
    .line 925
    .line 926
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 929
    .line 930
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 931
    .line 932
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 933
    .line 934
    check-cast v4, Landroid/os/IBinder;

    .line 935
    .line 936
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 937
    .line 938
    iget v2, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 939
    .line 940
    invoke-static {v3, v4, v6, v5, v2}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    .line 941
    .line 942
    .line 943
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 944
    .line 945
    .line 946
    goto/16 :goto_6

    .line 947
    .line 948
    :pswitch_34
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 949
    .line 950
    .line 951
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 952
    .line 953
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 954
    .line 955
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 956
    .line 957
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast v4, Landroid/os/IBinder;

    .line 960
    .line 961
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 962
    .line 963
    iget v2, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 964
    .line 965
    invoke-static {v3, v4, v7, v5, v2}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    .line 966
    .line 967
    .line 968
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_6

    .line 972
    .line 973
    :pswitch_35
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 974
    .line 975
    .line 976
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 979
    .line 980
    iget-object v10, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 981
    .line 982
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 983
    .line 984
    move-object v11, v3

    .line 985
    check-cast v11, Landroid/os/IBinder;

    .line 986
    .line 987
    const/4 v12, 0x1

    .line 988
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 989
    .line 990
    and-int/lit8 v4, v3, 0x1

    .line 991
    .line 992
    if-eqz v4, :cond_8

    .line 993
    .line 994
    move v13, v7

    .line 995
    goto :goto_2

    .line 996
    :cond_8
    move v13, v6

    .line 997
    :goto_2
    iget v14, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 998
    .line 999
    and-int/lit8 v3, v3, 0x2

    .line 1000
    .line 1001
    if-eqz v3, :cond_9

    .line 1002
    .line 1003
    move v15, v7

    .line 1004
    goto :goto_3

    .line 1005
    :cond_9
    move v15, v6

    .line 1006
    :goto_3
    iget v2, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1007
    .line 1008
    move/from16 v16, v2

    .line 1009
    .line 1010
    invoke-static/range {v10 .. v16}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_6

    .line 1017
    :pswitch_36
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1021
    .line 1022
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1023
    .line 1024
    iget-object v10, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 1025
    .line 1026
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1027
    .line 1028
    move-object v11, v3

    .line 1029
    check-cast v11, Landroid/os/IBinder;

    .line 1030
    .line 1031
    const/4 v12, 0x0

    .line 1032
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1033
    .line 1034
    and-int/lit8 v4, v3, 0x1

    .line 1035
    .line 1036
    if-eqz v4, :cond_a

    .line 1037
    .line 1038
    move v13, v7

    .line 1039
    goto :goto_4

    .line 1040
    :cond_a
    move v13, v6

    .line 1041
    :goto_4
    iget v14, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1042
    .line 1043
    and-int/lit8 v3, v3, 0x2

    .line 1044
    .line 1045
    if-eqz v3, :cond_b

    .line 1046
    .line 1047
    move v15, v7

    .line 1048
    goto :goto_5

    .line 1049
    :cond_b
    move v15, v6

    .line 1050
    :goto_5
    iget v2, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1051
    .line 1052
    move/from16 v16, v2

    .line 1053
    .line 1054
    invoke-static/range {v10 .. v16}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    .line 1055
    .line 1056
    .line 1057
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_6

    .line 1061
    :pswitch_37
    const-string v2, "activityStart"

    .line 1062
    .line 1063
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1069
    .line 1070
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 1071
    .line 1072
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1073
    .line 1074
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1075
    .line 1076
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1077
    .line 1078
    invoke-virtual {v3, v4, v6}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1083
    .line 1084
    iget-object v3, v1, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 1085
    .line 1086
    const-string v4, "LAUNCH_ACTIVITY"

    .line 1087
    .line 1088
    invoke-static {v3, v2, v5, v4}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1092
    .line 1093
    .line 1094
    :goto_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1095
    .line 1096
    instance-of v2, v0, Lcom/android/internal/os/SomeArgs;

    .line 1097
    .line 1098
    if-eqz v2, :cond_c

    .line 1099
    .line 1100
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1101
    .line 1102
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1103
    .line 1104
    .line 1105
    :cond_c
    return-void

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
