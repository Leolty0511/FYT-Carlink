.class public final Landroid/provider/Telephony$ServiceStateTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceStateTable"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "service-state"

.field public static final CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdma_default_roaming_indicator"

.field public static final CDMA_ERI_ICON_INDEX:Ljava/lang/String; = "cdma_eri_icon_index"

.field public static final CDMA_ERI_ICON_MODE:Ljava/lang/String; = "cdma_eri_icon_mode"

.field public static final CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdma_roaming_indicator"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CSS_INDICATOR:Ljava/lang/String; = "css_indicator"

.field public static final DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data_operator_alpha_long"

.field public static final DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data_operator_alpha_short"

.field public static final DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data_operator_numeric"

.field public static final DATA_REG_STATE:Ljava/lang/String; = "data_reg_state"

.field public static final DATA_ROAMING_TYPE:Ljava/lang/String; = "data_roaming_type"

.field public static final IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "is_data_roaming_from_registration"

.field public static final IS_EMERGENCY_ONLY:Ljava/lang/String; = "is_emergency_only"

.field public static final IS_MANUAL_NETWORK_SELECTION:Ljava/lang/String; = "is_manual_network_selection"

.field public static final IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "is_using_carrier_aggregation"

.field public static final NETWORK_ID:Ljava/lang/String; = "network_id"

.field public static final RIL_DATA_RADIO_TECHNOLOGY:Ljava/lang/String; = "ril_data_radio_technology"

.field public static final RIL_VOICE_RADIO_TECHNOLOGY:Ljava/lang/String; = "ril_voice_radio_technology"

.field public static final SYSTEM_ID:Ljava/lang/String; = "system_id"

.field public static final VOICE_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "voice_operator_alpha_long"

.field public static final VOICE_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "voice_operator_alpha_short"

.field public static final VOICE_OPERATOR_NUMERIC:Ljava/lang/String; = "voice_operator_numeric"

.field public static final VOICE_REG_STATE:Ljava/lang/String; = "voice_reg_state"

.field public static final VOICE_ROAMING_TYPE:Ljava/lang/String; = "voice_roaming_type"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://service-state/"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "voice_reg_state"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "data_reg_state"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v2, "voice_roaming_type"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "data_roaming_type"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "voice_operator_alpha_long"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "voice_operator_alpha_short"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v1, "voice_operator_numeric"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "data_operator_alpha_long"

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "data_operator_alpha_short"

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "data_operator_numeric"

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string/jumbo v2, "is_manual_network_selection"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string/jumbo v2, "ril_voice_radio_technology"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string/jumbo v2, "ril_data_radio_technology"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string v2, "css_indicator"

    .line 168
    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetworkId()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string/jumbo v2, "network_id"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSystemId()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string/jumbo v2, "system_id"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v2, "cdma_roaming_indicator"

    .line 209
    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const-string v2, "cdma_default_roaming_indicator"

    .line 222
    .line 223
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const-string v2, "cdma_eri_icon_index"

    .line 235
    .line 236
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v2, "cdma_eri_icon_mode"

    .line 248
    .line 249
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    const-string/jumbo v2, "is_emergency_only"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    const-string/jumbo v2, "is_data_roaming_from_registration"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    const-string/jumbo v1, "is_using_carrier_aggregation"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    .line 293
    .line 294
    return-object v0
.end method

.method public static getUriForSubscriptionId(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
