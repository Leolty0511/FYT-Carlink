.class public final Lcom/android/internal/view/InputMethodClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputMethodClient$UnbindReason;,
        Lcom/android/internal/view/InputMethodClient$StartInputReason;
    }
.end annotation


# static fields
.field public static final START_INPUT_REASON_ACTIVATED_BY_IMMS:I = 0x7

.field public static final START_INPUT_REASON_APP_CALLED_RESTART_INPUT_API:I = 0x3

.field public static final START_INPUT_REASON_BOUND_TO_IMMS:I = 0x5

.field public static final START_INPUT_REASON_CHECK_FOCUS:I = 0x4

.field public static final START_INPUT_REASON_DEACTIVATED_BY_IMMS:I = 0x8

.field public static final START_INPUT_REASON_SESSION_CREATED_BY_IME:I = 0x9

.field public static final START_INPUT_REASON_UNBOUND_FROM_IMMS:I = 0x6

.field public static final START_INPUT_REASON_UNSPECIFIED:I = 0x0

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN:I = 0x1

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN_REPORT_ONLY:I = 0x2

.field public static final UNBIND_REASON_DISCONNECT_IME:I = 0x3

.field public static final UNBIND_REASON_NO_IME:I = 0x4

.field public static final UNBIND_REASON_SWITCH_CLIENT:I = 0x1

.field public static final UNBIND_REASON_SWITCH_IME:I = 0x2

.field public static final UNBIND_REASON_SWITCH_IME_FAILED:I = 0x5

.field public static final UNBIND_REASON_SWITCH_USER:I = 0x6

.field public static final UNBIND_REASON_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartInputReason(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown="

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "SESSION_CREATED_BY_IME"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "DEACTIVATED_BY_IMMS"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "ACTIVATED_BY_IMMS"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "UNBOUND_FROM_IMMS"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "BOUND_TO_IMMS"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "CHECK_FOCUS"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "APP_CALLED_RESTART_INPUT_API"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    const-string p0, "WINDOW_FOCUS_GAIN"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_9
    const-string p0, "UNSPECIFIED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getUnbindReason(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown="

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "SWITCH_USER"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "SWITCH_IME_FAILED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "NO_IME"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "DISCONNECT_IME"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "SWITCH_IME"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "SWITCH_CLIENT"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "UNSPECIFIED"

    .line 30
    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static softInputModeToString(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0xf

    .line 7
    .line 8
    and-int/lit16 v2, p0, 0xf0

    .line 9
    .line 10
    and-int/lit16 p0, p0, 0x100

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    move p0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    const-string v4, ")"

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    if-eq v1, v3, :cond_5

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_4

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-eq v1, v3, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    if-eq v1, v3, :cond_1

    .line 35
    .line 36
    const-string v3, "STATE_UNKNOWN("

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v1, "STATE_ALWAYS_VISIBLE"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string v1, "STATE_VISIBLE"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const-string v1, "STATE_ALWAYS_HIDDEN"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const-string v1, "STATE_HIDDEN"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const-string v1, "STATE_UNCHANGED"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    const-string v1, "STATE_UNSPECIFIED"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :goto_1
    if-eqz v2, :cond_a

    .line 84
    .line 85
    const/16 v1, 0x10

    .line 86
    .line 87
    if-eq v2, v1, :cond_9

    .line 88
    .line 89
    const/16 v1, 0x20

    .line 90
    .line 91
    if-eq v2, v1, :cond_8

    .line 92
    .line 93
    const/16 v1, 0x30

    .line 94
    .line 95
    if-eq v2, v1, :cond_7

    .line 96
    .line 97
    const-string v1, "|ADJUST_UNKNOWN("

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    const-string v1, "|ADJUST_NOTHING"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    const-string v1, "|ADJUST_PAN"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_9
    const-string v1, "|ADJUST_RESIZE"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_a
    const-string v1, "|ADJUST_UNSPECIFIED"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :goto_2
    if-eqz p0, :cond_b

    .line 133
    .line 134
    const-string p0, "|IS_FORWARD_NAVIGATION"

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method
