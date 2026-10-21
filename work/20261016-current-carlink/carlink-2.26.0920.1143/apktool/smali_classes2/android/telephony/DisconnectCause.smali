.class public Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANSWERED_ELSEWHERE:I = 0x34

.field public static final BUSY:I = 0x4

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_PULLED:I = 0x33

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DATA_DISABLED:I = 0x36

.field public static final DATA_LIMIT_REACHED:I = 0x37

.field public static final DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final DIALED_MMI:I = 0x27

.field public static final DIALED_ON_WRONG_SLOT:I = 0x38

.field public static final DIAL_LOW_BATTERY:I = 0x3e

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_NUMBER:I = 0x7

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final LOW_BATTERY:I = 0x3d

.field public static final MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final MMI:I = 0x6

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0x3f

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_VALID:I = -0x1

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final REASON_CALL_CANCEL_BY_NETWORK:I = 0x40

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final TIMED_OUT:I = 0xd

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final WIFI_LOST:I = 0x3b


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "INVALID: "

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
    :pswitch_1
    const-string p0, "NORMAL_UNSPECIFIED"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_2
    const-string p0, "DIAL_LOW_BATTERY"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "LOW_BATTERY"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_4
    const-string p0, "IMS_ACCESS_BLOCKED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_5
    const-string p0, "WIFI_LOST"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_6
    const-string p0, "IMEI_NOT_ACCEPTED"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    const-string p0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    const-string p0, "DIALED_ON_WRONG_SLOT"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    const-string p0, "DATA_LIMIT_REACHED"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_a
    const-string p0, "DATA_DISABLED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_b
    const-string p0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_c
    const-string p0, "ANSWERED_ELSEWHERE"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_d
    const-string p0, "CALL_PULLED"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_e
    const-string p0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_f
    const-string p0, "CDMA_ALREADY_ACTIVATED"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_10
    const-string p0, "DIAL_MODIFIED_TO_DIAL"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_11
    const-string p0, "DIAL_MODIFIED_TO_SS"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_12
    const-string p0, "DIAL_MODIFIED_TO_USSD"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_13
    const-string p0, "IMS_MERGED_SUCCESSFULLY"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_14
    const-string p0, "OUTGOING_CANCELED"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_15
    const-string p0, "OUTGOING_FAILURE"

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_16
    const-string p0, "EXITED_ECM"

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_17
    const-string p0, "CDMA_CALL_LOST"

    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_18
    const-string p0, "VOICEMAIL_NUMBER_MISSING"

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_19
    const-string p0, "DIALED_MMI"

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_1a
    const-string p0, "NO_PHONE_NUMBER_SUPPLIED"

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_1b
    const-string p0, "EMERGENCY_ONLY"

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_1c
    const-string p0, "ERROR_UNSPECIFIED"

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_1d
    const-string p0, "CDMA_ACCESS_BLOCKED"

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_1e
    const-string p0, "CDMA_NOT_EMERGENCY"

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_1f
    const-string p0, "CDMA_PREEMPTED"

    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_20
    const-string p0, "CDMA_ACCESS_FAILURE"

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_21
    const-string p0, "CDMA_RETRY_ORDER"

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_22
    const-string p0, "CDMA_SO_REJECT"

    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_23
    const-string p0, "CDMA_REORDER"

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_24
    const-string p0, "CDMA_INTERCEPT"

    .line 117
    .line 118
    return-object p0

    .line 119
    :pswitch_25
    const-string p0, "CDMA_DROP"

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_26
    const-string p0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    .line 123
    .line 124
    return-object p0

    .line 125
    :pswitch_27
    const-string p0, "UNOBTAINABLE_NUMBER"

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_28
    const-string p0, "CS_RESTRICTED_EMERGENCY"

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_29
    const-string p0, "CS_RESTRICTED_NORMAL"

    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_2a
    const-string p0, "CS_RESTRICTED"

    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_2b
    const-string p0, "FDN_BLOCKED"

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_2c
    const-string p0, "CALL_BARRED"

    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_2d
    const-string p0, "ICC_ERROR"

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_2e
    const-string p0, "OUT_OF_SERVICE"

    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_2f
    const-string p0, "POWER_OFF"

    .line 150
    .line 151
    return-object p0

    .line 152
    :pswitch_30
    const-string p0, "INCOMING_REJECTED"

    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_31
    const-string p0, "LIMIT_EXCEEDED"

    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_32
    const-string p0, "LOST_SIGNAL"

    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_33
    const-string p0, "TIMED_OUT"

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_34
    const-string p0, "SERVER_ERROR"

    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_35
    const-string p0, "OUT_OF_NETWORK"

    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_36
    const-string p0, "INVALID_CREDENTIALS"

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_37
    const-string p0, "SERVER_UNREACHABLE"

    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_38
    const-string p0, "NUMBER_UNREACHABLE"

    .line 177
    .line 178
    return-object p0

    .line 179
    :pswitch_39
    const-string p0, "INVALID_NUMBER"

    .line 180
    .line 181
    return-object p0

    .line 182
    :pswitch_3a
    const-string p0, "CONGESTION"

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_3b
    const-string p0, "BUSY"

    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_3c
    const-string p0, "LOCAL"

    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_3d
    const-string p0, "NORMAL"

    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_3e
    const-string p0, "INCOMING_MISSED"

    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_3f
    const-string p0, "NOT_DISCONNECTED"

    .line 198
    .line 199
    return-object p0

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_0
        :pswitch_39
        :pswitch_38
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
