.class public final Lcom/android/internal/app/NightDisplayController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NightDisplayController$Callback;,
        Lcom/android/internal/app/NightDisplayController$ColorMode;,
        Lcom/android/internal/app/NightDisplayController$AutoMode;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final PERSISTENT_PROPERTY_NATIVE_MODE:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final TAG:Ljava/lang/String; = "NightDisplayController"

.field private static final mEnhanceState:Z


# instance fields
.field private mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.sprd.nightdisplay.enhance"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/internal/app/NightDisplayController;->mEnhanceState:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 5
    new-instance p1, Lcom/android/internal/app/NightDisplayController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/internal/app/NightDisplayController$1;-><init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/NightDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1120080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v0, "night_display_custom_start_time"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x5

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v0, "display_color_mode"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x4

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v0, "night_display_activated"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x3

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v0, "night_display_color_temperature"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v1, 0x2

    .line 60
    goto :goto_0

    .line 61
    :sswitch_4
    const-string v0, "night_display_custom_end_time"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :sswitch_5
    const-string v0, "night_display_auto_mode"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const/4 v1, 0x0

    .line 82
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {p1, v0}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getColorMode()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-interface {p1, v0}, Lcom/android/internal/app/NightDisplayController$Callback;->onDisplayColorModeChanged(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-interface {p1, v0}, Lcom/android/internal/app/NightDisplayController$Callback;->onActivated(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-interface {p1, v0}, Lcom/android/internal/app/NightDisplayController$Callback;->onColorTemperatureChanged(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {p1, v0}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_5
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-interface {p1, v0}, Lcom/android/internal/app/NightDisplayController$Callback;->onAutoModeChanged(I)V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_1
    return-void

    .line 146
    nop

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x797bb571 -> :sswitch_5
        -0x6900ebe5 -> :sswitch_4
        -0x39c8c50c -> :sswitch_3
        0x2fb0ca2d -> :sswitch_2
        0x5d15789c -> :sswitch_1
        0x5e128274 -> :sswitch_0
    .end sparse-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAutoMode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 8
    .line 9
    const-string v2, "night_display_auto_mode"

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x10e002b

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Invalid autoMode: "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "NightDisplayController"

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    :cond_1
    return v0
.end method

.method public getColorMode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 9
    .line 10
    const-string v3, "display_color_mode"

    .line 11
    .line 12
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-ltz v0, :cond_1

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v0

    .line 23
    :cond_1
    :goto_0
    const-string v0, "persist.sys.sf.native_mode"

    .line 24
    .line 25
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "1"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    const-string v0, "persist.sys.sf.color_saturation"

    .line 39
    .line 40
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "1.0"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    xor-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    return v0
.end method

.method public getColorTemperature()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 8
    .line 9
    const-string v2, "night_display_color_temperature"

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getDefaultColorTemperature()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getMinimumColorTemperature()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getMaximumColorTemperature()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v0, v1, :cond_1

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-le v0, v2, :cond_2

    .line 35
    .line 36
    move v0, v2

    .line 37
    :cond_2
    :goto_0
    return v0
.end method

.method public getCustomEndTime()Ljava/time/LocalTime;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 8
    .line 9
    const-string v2, "night_display_custom_end_time"

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x10e002c

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_0
    div-int/lit16 v0, v0, 0x3e8

    .line 32
    .line 33
    int-to-long v0, v0

    .line 34
    invoke-static {v0, v1}, Landroid/util/a;->n(J)Ljava/time/LocalTime;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getCustomStartTime()Ljava/time/LocalTime;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 8
    .line 9
    const-string v2, "night_display_custom_start_time"

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x10e002d

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_0
    div-int/lit16 v0, v0, 0x3e8

    .line 32
    .line 33
    int-to-long v0, v0

    .line 34
    invoke-static {v0, v1}, Landroid/util/a;->n(J)Ljava/time/LocalTime;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getDefaultColorTemperature()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/internal/app/NightDisplayController;->mEnhanceState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x10e0067

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x10e0066

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public getLastActivatedTime()Ljava/time/LocalDateTime;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "night_display_last_activated_time"

    .line 8
    .line 9
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    return-object v0

    .line 39
    :catch_1
    :cond_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public getMaximumColorTemperature()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/internal/app/NightDisplayController;->mEnhanceState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x10e0069

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x10e0068

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public getMinimumColorTemperature()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/internal/app/NightDisplayController;->mEnhanceState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x10e006b

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x10e006a

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public isActivated()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    const-string v2, "night_display_activated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method public setActivated(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/app/e;->n()Ljava/time/LocalDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/util/a;->g(Ljava/time/LocalDateTime;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 22
    .line 23
    const-string v3, "night_display_last_activated_time"

    .line 24
    .line 25
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 35
    .line 36
    const-string v2, "night_display_activated"

    .line 37
    .line 38
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public setAutoMode(I)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Invalid autoMode: "

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, p1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 36
    .line 37
    const-string v3, "night_display_last_activated_time"

    .line 38
    .line 39
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "night_display_auto_mode"

    .line 49
    .line 50
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 51
    .line 52
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public setColorMode(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_color_mode"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorTemperature(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public setCustomEndTime(Ljava/time/LocalTime;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Landroid/util/a;->a(Ljava/time/LocalTime;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/lit16 p1, p1, 0x3e8

    .line 14
    .line 15
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 16
    .line 17
    const-string v2, "night_display_custom_end_time"

    .line 18
    .line 19
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "endTime cannot be null"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setCustomStartTime(Ljava/time/LocalTime;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Landroid/util/a;->a(Ljava/time/LocalTime;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/lit16 p1, p1, 0x3e8

    .line 14
    .line 15
    iget v1, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 16
    .line 17
    const-string v2, "night_display_custom_start_time"

    .line 18
    .line 19
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string/jumbo v0, "startTime cannot be null"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "night_display_activated"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 36
    .line 37
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "night_display_auto_mode"

    .line 44
    .line 45
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 50
    .line 51
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 52
    .line 53
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 54
    .line 55
    .line 56
    const-string v0, "night_display_custom_start_time"

    .line 57
    .line 58
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 63
    .line 64
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 65
    .line 66
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    .line 68
    .line 69
    const-string v0, "night_display_custom_end_time"

    .line 70
    .line 71
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    .line 77
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 78
    .line 79
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    .line 81
    .line 82
    const-string v0, "night_display_color_temperature"

    .line 83
    .line 84
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 89
    .line 90
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 91
    .line 92
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    .line 94
    .line 95
    const-string v0, "display_color_mode"

    .line 96
    .line 97
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 102
    .line 103
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 104
    .line 105
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    :goto_0
    return-void
.end method
