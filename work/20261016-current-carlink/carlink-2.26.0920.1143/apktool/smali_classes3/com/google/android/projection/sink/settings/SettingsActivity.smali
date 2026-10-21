.class public Lcom/google/android/projection/sink/settings/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/settings/SettingsActivity;Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->handlePresetChange(Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/settings/SettingsActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/settings/SettingsActivity;->handleGpsSourceChange(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/settings/SettingsActivity;Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->handleCarWifiSecurityChange(Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/settings/SettingsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/settings/SettingsActivity;->isBluetoothWorking()Z

    move-result p0

    return p0
.end method

.method private handleCarWifiSecurityChange(Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "car_wifi_security"

    .line 22
    .line 23
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handleGpsSourceChange(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "simulation"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private handlePresetChange(Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "screen_width"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne p2, v4, :cond_0

    .line 26
    .line 27
    move v5, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v5, v3

    .line 30
    :goto_0
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    const-string v2, "screen_height"

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-ne p2, v4, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v6, v3

    .line 44
    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    .line 46
    .line 47
    const-string v5, "screen_dpi"

    .line 48
    .line 49
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-ne p2, v4, :cond_2

    .line 54
    .line 55
    move v7, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v7, v3

    .line 58
    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    const-string v6, "scale_checkbox"

    .line 62
    .line 63
    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    move v3, v4

    .line 70
    :cond_3
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v6, "0"

    .line 78
    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    invoke-interface {v3, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_4
    const-string v7, "160"

    .line 93
    .line 94
    const-string v8, "480"

    .line 95
    .line 96
    const-string v9, "800"

    .line 97
    .line 98
    if-ne p2, v4, :cond_7

    .line 99
    .line 100
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_5

    .line 109
    .line 110
    invoke-interface {v3, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_6

    .line 122
    .line 123
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-nez p2, :cond_b

    .line 135
    .line 136
    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    const/4 v4, 0x2

    .line 141
    if-ne p2, v4, :cond_8

    .line 142
    .line 143
    invoke-interface {v3, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    const-string p2, "133"

    .line 150
    .line 151
    invoke-interface {v3, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_8
    const/4 v4, 0x3

    .line 156
    if-ne p2, v4, :cond_9

    .line 157
    .line 158
    invoke-interface {v3, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    .line 163
    .line 164
    const-string p2, "155"

    .line 165
    .line 166
    invoke-interface {v3, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    const/4 v4, 0x4

    .line 171
    if-ne p2, v4, :cond_a

    .line 172
    .line 173
    invoke-interface {v3, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    .line 178
    .line 179
    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_a
    const/4 v4, 0x5

    .line 184
    if-ne p2, v4, :cond_c

    .line 185
    .line 186
    const-string p2, "1280"

    .line 187
    .line 188
    invoke-interface {v3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    const-string p2, "720"

    .line 192
    .line 193
    invoke-interface {v3, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    .line 195
    .line 196
    const-string p2, "215"

    .line 197
    .line 198
    invoke-interface {v3, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    .line 200
    .line 201
    :cond_b
    :goto_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p0, p2, v1}, Lcom/google/android/projection/sink/settings/SettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p0, p2, v1}, Lcom/google/android/projection/sink/settings/SettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 239
    .line 240
    const-string p2, "Unknown preset"

    .line 241
    .line 242
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p1
.end method

.method private isBluetoothWorking()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SettingsActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    sget v0, Lcom/google/android/projection/sink/R$string;->no_bluetooth:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 26
    .line 27
    .line 28
    return v1
.end method

.method private setupSimplePreferencesScreen()V
    .locals 7

    .line 1
    sget v0, Lcom/google/android/projection/sink/R$xml;->pref_general:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "preset_list"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/projection/sink/settings/SettingsActivity$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/settings/SettingsActivity$1;-><init>(Lcom/google/android/projection/sink/settings/SettingsActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "screen_width"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "screen_height"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "screen_dpi"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "listen_tcp_port"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "car_wifi_ssid"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "car_wifi_password"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "car_bluetooth_address"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "location_source_list"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/android/projection/sink/settings/SettingsActivity$2;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/settings/SettingsActivity$2;-><init>(Lcom/google/android/projection/sink/settings/SettingsActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    .line 96
    .line 97
    const-string v0, "wifi_security_list"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lcom/google/android/projection/sink/settings/SettingsActivity$3;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/settings/SettingsActivity$3;-><init>(Lcom/google/android/projection/sink/settings/SettingsActivity;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/google/android/projection/sink/settings/SettingsActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 116
    .line 117
    const-string v0, "obd2_device"

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/preference/ListPreference;

    .line 124
    .line 125
    const-string v1, "use_obd2_enabled"

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->syncSummaryToValue(Landroid/preference/Preference;)V

    .line 134
    .line 135
    .line 136
    new-instance v2, Lcom/google/android/projection/sink/settings/SettingsActivity$4;

    .line 137
    .line 138
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/settings/SettingsActivity$4;-><init>(Lcom/google/android/projection/sink/settings/SettingsActivity;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/google/android/projection/sink/settings/SettingsActivity;->isBluetoothWorking()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v3, 0x0

    .line 149
    if-nez v2, :cond_0

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lcom/google/android/projection/sink/settings/SettingsActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 169
    .line 170
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_1

    .line 183
    .line 184
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 189
    .line 190
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_1
    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, [Ljava/lang/CharSequence;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, [Ljava/lang/CharSequence;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    :goto_1
    invoke-static {v0, p0}, Lcom/google/android/projection/sink/settings/SettingsUtils;->bindPreferenceSummaryToValue(Landroid/preference/Preference;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method


# virtual methods
.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/settings/SettingsActivity;->setupSimplePreferencesScreen()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/projection/sink/settings/SettingsUtils;->updatePreferenceSummary(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
