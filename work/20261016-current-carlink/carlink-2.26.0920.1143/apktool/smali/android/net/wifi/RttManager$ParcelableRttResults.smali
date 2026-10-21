.class public Landroid/net/wifi/RttManager$ParcelableRttResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttResults"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$ParcelableRttResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/RttManager$RttResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "["

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "]: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "bssid="

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 42
    .line 43
    aget-object v3, v3, v1

    .line 44
    .line 45
    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, ", burstNumber="

    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 65
    .line 66
    aget-object v3, v3, v1

    .line 67
    .line 68
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 69
    .line 70
    const-string v4, ", measurementFrameNumber="

    .line 71
    .line 72
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 77
    .line 78
    aget-object v3, v3, v1

    .line 79
    .line 80
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 81
    .line 82
    const-string v4, ", successMeasurementFrameNumber="

    .line 83
    .line 84
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 89
    .line 90
    aget-object v3, v3, v1

    .line 91
    .line 92
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 93
    .line 94
    const-string v4, ", frameNumberPerBurstPeer="

    .line 95
    .line 96
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 101
    .line 102
    aget-object v3, v3, v1

    .line 103
    .line 104
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 105
    .line 106
    const-string v4, ", status="

    .line 107
    .line 108
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 113
    .line 114
    aget-object v3, v3, v1

    .line 115
    .line 116
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 117
    .line 118
    const-string v4, ", requestType="

    .line 119
    .line 120
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 125
    .line 126
    aget-object v3, v3, v1

    .line 127
    .line 128
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->requestType:I

    .line 129
    .line 130
    const-string v4, ", measurementType="

    .line 131
    .line 132
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 137
    .line 138
    aget-object v3, v3, v1

    .line 139
    .line 140
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 141
    .line 142
    const-string v4, ", retryAfterDuration="

    .line 143
    .line 144
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 149
    .line 150
    aget-object v3, v3, v1

    .line 151
    .line 152
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 153
    .line 154
    const-string v4, ", ts="

    .line 155
    .line 156
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 161
    .line 162
    aget-object v3, v3, v1

    .line 163
    .line 164
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 165
    .line 166
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v3, ", rssi="

    .line 179
    .line 180
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 184
    .line 185
    aget-object v3, v3, v1

    .line 186
    .line 187
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 188
    .line 189
    const-string v4, ", rssi_spread="

    .line 190
    .line 191
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 196
    .line 197
    aget-object v3, v3, v1

    .line 198
    .line 199
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssi_spread:I

    .line 200
    .line 201
    const-string v4, ", rssiSpread="

    .line 202
    .line 203
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 208
    .line 209
    aget-object v3, v3, v1

    .line 210
    .line 211
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 212
    .line 213
    const-string v4, ", tx_rate="

    .line 214
    .line 215
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 220
    .line 221
    aget-object v3, v3, v1

    .line 222
    .line 223
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->tx_rate:I

    .line 224
    .line 225
    const-string v4, ", txRate="

    .line 226
    .line 227
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 232
    .line 233
    aget-object v3, v3, v1

    .line 234
    .line 235
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 236
    .line 237
    const-string v4, ", rxRate="

    .line 238
    .line 239
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 244
    .line 245
    aget-object v3, v3, v1

    .line 246
    .line 247
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rxRate:I

    .line 248
    .line 249
    const-string v4, ", rtt_ns="

    .line 250
    .line 251
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 256
    .line 257
    aget-object v3, v3, v1

    .line 258
    .line 259
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_ns:J

    .line 260
    .line 261
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v3, ", rtt="

    .line 274
    .line 275
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 279
    .line 280
    aget-object v3, v3, v1

    .line 281
    .line 282
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 283
    .line 284
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v3, ", rtt_sd_ns="

    .line 297
    .line 298
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 302
    .line 303
    aget-object v3, v3, v1

    .line 304
    .line 305
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_sd_ns:J

    .line 306
    .line 307
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v3, ", rttStandardDeviation="

    .line 320
    .line 321
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 325
    .line 326
    aget-object v3, v3, v1

    .line 327
    .line 328
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 329
    .line 330
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v3, ", rtt_spread_ns="

    .line 343
    .line 344
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 348
    .line 349
    aget-object v3, v3, v1

    .line 350
    .line 351
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_spread_ns:J

    .line 352
    .line 353
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v3, ", rttSpread="

    .line 366
    .line 367
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 371
    .line 372
    aget-object v3, v3, v1

    .line 373
    .line 374
    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 375
    .line 376
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v3, ", distance_cm="

    .line 389
    .line 390
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 394
    .line 395
    aget-object v3, v3, v1

    .line 396
    .line 397
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_cm:I

    .line 398
    .line 399
    const-string v4, ", distance="

    .line 400
    .line 401
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 406
    .line 407
    aget-object v3, v3, v1

    .line 408
    .line 409
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 410
    .line 411
    const-string v4, ", distance_sd_cm="

    .line 412
    .line 413
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 418
    .line 419
    aget-object v3, v3, v1

    .line 420
    .line 421
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_sd_cm:I

    .line 422
    .line 423
    const-string v4, ", distanceStandardDeviation="

    .line 424
    .line 425
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 430
    .line 431
    aget-object v3, v3, v1

    .line 432
    .line 433
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 434
    .line 435
    const-string v4, ", distance_spread_cm="

    .line 436
    .line 437
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 442
    .line 443
    aget-object v3, v3, v1

    .line 444
    .line 445
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_spread_cm:I

    .line 446
    .line 447
    const-string v4, ", distanceSpread="

    .line 448
    .line 449
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 454
    .line 455
    aget-object v3, v3, v1

    .line 456
    .line 457
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 458
    .line 459
    const-string v4, ", burstDuration="

    .line 460
    .line 461
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 466
    .line 467
    aget-object v3, v3, v1

    .line 468
    .line 469
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 470
    .line 471
    const-string v4, ", negotiatedBurstNum="

    .line 472
    .line 473
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 478
    .line 479
    aget-object v3, v3, v1

    .line 480
    .line 481
    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 482
    .line 483
    const-string v4, ", LCI="

    .line 484
    .line 485
    invoke-static {v2, v3, v0, v4}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 490
    .line 491
    aget-object v3, v3, v1

    .line 492
    .line 493
    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 494
    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string v3, ", LCR="

    .line 508
    .line 509
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 513
    .line 514
    aget-object v3, v3, v1

    .line 515
    .line 516
    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 517
    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    const-string v3, ", secure="

    .line 531
    .line 532
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 536
    .line 537
    aget-object v3, v3, v1

    .line 538
    .line 539
    iget-boolean v3, v3, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    .line 540
    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    add-int/lit8 v1, v1, 0x1

    .line 552
    .line 553
    goto/16 :goto_0

    .line 554
    .line 555
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object p2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    array-length p2, p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 11
    .line 12
    array-length v1, p2

    .line 13
    :goto_0
    if-ge v0, v1, :cond_3

    .line 14
    .line 15
    aget-object v2, p2, v0

    .line 16
    .line 17
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    iget-wide v3, v2, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 58
    .line 59
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    .line 61
    .line 62
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    iget-wide v3, v2, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 78
    .line 79
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    .line 81
    .line 82
    iget-wide v3, v2, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 83
    .line 84
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    .line 86
    .line 87
    iget-wide v3, v2, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 88
    .line 89
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    .line 91
    .line 92
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    .line 106
    .line 107
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    .line 111
    .line 112
    iget v3, v2, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 118
    .line 119
    iget-byte v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 125
    .line 126
    iget-byte v4, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 127
    .line 128
    const/4 v5, -0x1

    .line 129
    if-eq v4, v5, :cond_0

    .line 130
    .line 131
    iget-object v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 132
    .line 133
    array-length v3, v3

    .line 134
    int-to-byte v3, v3

    .line 135
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 139
    .line 140
    iget-object v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    .line 144
    .line 145
    :cond_0
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 146
    .line 147
    iget-byte v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 148
    .line 149
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    .line 151
    .line 152
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 153
    .line 154
    iget-byte v4, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 155
    .line 156
    if-eq v4, v5, :cond_1

    .line 157
    .line 158
    iget-object v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 159
    .line 160
    array-length v3, v3

    .line 161
    int-to-byte v3, v3

    .line 162
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v2, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 166
    .line 167
    iget-object v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 168
    .line 169
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 170
    .line 171
    .line 172
    :cond_1
    iget-boolean v2, v2, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    .line 183
    .line 184
    :cond_3
    return-void
.end method
