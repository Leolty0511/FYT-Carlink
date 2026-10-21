.class public Landroid/telephony/PhoneNumberUtilsEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtilsEx"

.field static final MIN_MATCH:I = 0x7

.field public static final PAUSE:C = ','

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CommaAndSemicolonTopAndw(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x2c

    .line 20
    .line 21
    if-eq v3, v4, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x3b

    .line 24
    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/16 v3, 0x57

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x50

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_13

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_12

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtilsEx;->indexOfLastNetworkChar(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtilsEx;->indexOfLastNetworkChar(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    move v4, v1

    .line 32
    move v5, v4

    .line 33
    move v6, v5

    .line 34
    :cond_2
    :goto_0
    if-ltz v2, :cond_6

    .line 35
    .line 36
    if-ltz v3, :cond_6

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtilsEx;->isDialable(C)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-nez v8, :cond_3

    .line 47
    .line 48
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    move v8, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v8, v1

    .line 55
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtilsEx;->isDialable(C)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-nez v10, :cond_4

    .line 64
    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    move v8, v0

    .line 70
    :cond_4
    if-nez v8, :cond_2

    .line 71
    .line 72
    if-eq v9, v7, :cond_5

    .line 73
    .line 74
    const/16 v8, 0x4e

    .line 75
    .line 76
    if-eq v7, v8, :cond_5

    .line 77
    .line 78
    if-eq v9, v8, :cond_5

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 82
    .line 83
    add-int/lit8 v3, v3, -0x1

    .line 84
    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    :goto_2
    const/4 v7, 0x7

    .line 89
    if-ge v6, v7, :cond_8

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    sub-int/2addr p0, v4

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    sub-int/2addr p1, v5

    .line 101
    if-ne p0, p1, :cond_7

    .line 102
    .line 103
    if-ne p0, v6, :cond_7

    .line 104
    .line 105
    return v0

    .line 106
    :cond_7
    return v1

    .line 107
    :cond_8
    if-lt v6, v7, :cond_a

    .line 108
    .line 109
    if-ltz v2, :cond_9

    .line 110
    .line 111
    if-gez v3, :cond_a

    .line 112
    .line 113
    :cond_9
    return v0

    .line 114
    :cond_a
    add-int/lit8 v4, v2, 0x1

    .line 115
    .line 116
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtilsEx;->matchIntlPrefix(Ljava/lang/String;I)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_b

    .line 121
    .line 122
    add-int/lit8 v5, v3, 0x1

    .line 123
    .line 124
    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtilsEx;->matchIntlPrefix(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_b

    .line 129
    .line 130
    return v0

    .line 131
    :cond_b
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtilsEx;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_c

    .line 136
    .line 137
    add-int/lit8 v5, v3, 0x1

    .line 138
    .line 139
    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtilsEx;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_c

    .line 144
    .line 145
    return v0

    .line 146
    :cond_c
    add-int/lit8 v5, v3, 0x1

    .line 147
    .line 148
    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtilsEx;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_d

    .line 153
    .line 154
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtilsEx;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_d

    .line 159
    .line 160
    return v0

    .line 161
    :cond_d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    const/16 v4, 0x2b

    .line 166
    .line 167
    if-ne p0, v4, :cond_e

    .line 168
    .line 169
    move p0, v0

    .line 170
    goto :goto_3

    .line 171
    :cond_e
    move p0, v1

    .line 172
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-ne p1, v4, :cond_f

    .line 177
    .line 178
    move p1, v0

    .line 179
    goto :goto_4

    .line 180
    :cond_f
    move p1, v1

    .line 181
    :goto_4
    const/4 v4, 0x4

    .line 182
    if-ge v2, v4, :cond_12

    .line 183
    .line 184
    if-ge v3, v4, :cond_12

    .line 185
    .line 186
    if-nez p0, :cond_10

    .line 187
    .line 188
    if-eqz p1, :cond_12

    .line 189
    .line 190
    :cond_10
    if-eqz p0, :cond_11

    .line 191
    .line 192
    if-nez p1, :cond_12

    .line 193
    .line 194
    :cond_11
    return v0

    .line 195
    :cond_12
    :goto_5
    return v1

    .line 196
    :cond_13
    :goto_6
    if-ne p0, p1, :cond_14

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_14
    move v0, v1

    .line 200
    :goto_7
    return v0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2c

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x3b

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtilsEx;->minPositive(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-gez p0, :cond_0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 27
    .line 28
    return p0
.end method

.method public static final isDialable(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmergecyNumber(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/telephony/PhoneNumberUtilsEx;->isEmergecyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isEmergecyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "ril.ecclist"

    .line 17
    .line 18
    if-gtz p0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v3, "slotId:"

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " country:"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " emergencyNumbers: "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "PhoneNumberUtilsEx"

    .line 63
    .line 64
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    const-string v1, "ro.ril.ecclist"

    .line 74
    .line 75
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const-string v4, ","

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    if-nez v2, :cond_8

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    array-length v1, p0

    .line 93
    move v2, v0

    .line 94
    :goto_1
    if-ge v2, v1, :cond_7

    .line 95
    .line 96
    aget-object v3, p0, v2

    .line 97
    .line 98
    if-nez p3, :cond_5

    .line 99
    .line 100
    const-string v4, "BR"

    .line 101
    .line 102
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    return v5

    .line 116
    :cond_5
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    return v5

    .line 123
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    return v0

    .line 127
    :cond_8
    const-string v1, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    .line 128
    .line 129
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    if-gez p0, :cond_9

    .line 133
    .line 134
    const-string p0, "112,911,000,08,110,118,119,999"

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    const-string p0, "112,911"

    .line 138
    .line 139
    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    array-length v1, p0

    .line 144
    move v2, v0

    .line 145
    :goto_4
    if-ge v2, v1, :cond_c

    .line 146
    .line 147
    aget-object v3, p0, v2

    .line 148
    .line 149
    if-eqz p3, :cond_a

    .line 150
    .line 151
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_b

    .line 156
    .line 157
    return v5

    .line 158
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_b

    .line 163
    .line 164
    return v5

    .line 165
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_c
    if-eqz p2, :cond_e

    .line 169
    .line 170
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-eqz p3, :cond_d

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    return p0

    .line 181
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    return p0

    .line 186
    :cond_e
    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtilsEx;->isEmergecyNumber(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    or-int/2addr v1, v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v1
.end method

.method public static isISODigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x5

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x1

    .line 7
    if-ge v1, p1, :cond_9

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    const/16 v7, 0x30

    .line 14
    .line 15
    const/4 v8, 0x2

    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    const/16 v5, 0x31

    .line 19
    .line 20
    const/4 v9, 0x4

    .line 21
    if-eq v2, v8, :cond_2

    .line 22
    .line 23
    if-eq v2, v9, :cond_0

    .line 24
    .line 25
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_8

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    if-ne v6, v5, :cond_1

    .line 33
    .line 34
    move v2, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_8

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    if-ne v6, v7, :cond_3

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-ne v6, v5, :cond_4

    .line 48
    .line 49
    move v2, v9

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_8

    .line 56
    .line 57
    return v0

    .line 58
    :cond_5
    const/16 v3, 0x2b

    .line 59
    .line 60
    if-ne v6, v3, :cond_6

    .line 61
    .line 62
    move v2, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    if-ne v6, v7, :cond_7

    .line 65
    .line 66
    move v2, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_7
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_8

    .line 73
    .line 74
    return v0

    .line 75
    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_9
    if-eq v2, v5, :cond_a

    .line 79
    .line 80
    if-eq v2, v4, :cond_a

    .line 81
    .line 82
    if-ne v2, v3, :cond_b

    .line 83
    .line 84
    :cond_a
    move v0, v5

    .line 85
    :cond_b
    return v0
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x6

    .line 5
    const/4 v4, 0x1

    .line 6
    if-ge v1, p1, :cond_8

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    const/16 v6, 0x31

    .line 13
    .line 14
    const/16 v7, 0x30

    .line 15
    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_7

    .line 24
    .line 25
    return v0

    .line 26
    :pswitch_0
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isISODigit(C)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_7

    .line 40
    .line 41
    return v0

    .line 42
    :pswitch_1
    if-ne v5, v6, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_7

    .line 51
    .line 52
    return v0

    .line 53
    :pswitch_2
    if-ne v5, v7, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-ne v5, v6, :cond_3

    .line 58
    .line 59
    const/4 v2, 0x4

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    return v0

    .line 68
    :pswitch_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isISODigit(C)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    move v2, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    return v0

    .line 83
    :pswitch_4
    const/16 v3, 0x2b

    .line 84
    .line 85
    if-ne v5, v3, :cond_5

    .line 86
    .line 87
    move v2, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    if-ne v5, v7, :cond_6

    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    goto :goto_1

    .line 93
    :cond_6
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    return v0

    .line 100
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    if-eq v2, v3, :cond_9

    .line 104
    .line 105
    const/4 p0, 0x7

    .line 106
    if-eq v2, p0, :cond_9

    .line 107
    .line 108
    const/16 p0, 0x8

    .line 109
    .line 110
    if-ne v2, p0, :cond_a

    .line 111
    .line 112
    :cond_9
    move v0, v4

    .line 113
    :cond_a
    return v0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/16 v4, 0x30

    .line 11
    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtilsEx;->isNonSeparator(C)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v2
.end method

.method private static minPositive(II)I
    .locals 0

    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0

    :cond_1
    if-ltz p0, :cond_2

    return p0

    :cond_2
    if-ltz p1, :cond_3

    return p1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static final pAndwToCommaAndSemicolon(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x50

    .line 20
    .line 21
    if-eq v3, v4, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x57

    .line 24
    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x70

    .line 28
    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    const/16 v4, 0x77

    .line 32
    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/16 v3, 0x3b

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v3, 0x2c

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public static stripSeparatorsExceptPW(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/16 v4, 0x50

    .line 45
    .line 46
    if-eq v3, v4, :cond_3

    .line 47
    .line 48
    const/16 v4, 0x70

    .line 49
    .line 50
    if-eq v3, v4, :cond_3

    .line 51
    .line 52
    const/16 v4, 0x57

    .line 53
    .line 54
    if-eq v3, v4, :cond_3

    .line 55
    .line 56
    const/16 v4, 0x77

    .line 57
    .line 58
    if-ne v3, v4, :cond_4

    .line 59
    .line 60
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
