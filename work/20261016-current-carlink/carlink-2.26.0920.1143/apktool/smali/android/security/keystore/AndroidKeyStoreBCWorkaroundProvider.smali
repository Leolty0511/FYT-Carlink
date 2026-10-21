.class Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field private static final KEYSTORE_PRIVATE_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePrivateKey"

.field private static final KEYSTORE_PUBLIC_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePublicKey"

.field private static final KEYSTORE_SECRET_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStoreSecretKey"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    const-string v2, "Android KeyStore security provider to work around Bouncy Castle"

    .line 4
    .line 5
    const-string v3, "AndroidKeyStoreBCWorkaround"

    .line 6
    .line 7
    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA1"

    .line 11
    .line 12
    const-string v1, "HmacSHA1"

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.7"

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v0, "Alg.Alias.Mac.HMAC-SHA1"

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "Alg.Alias.Mac.HMAC/SHA1"

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v0, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA224"

    .line 33
    .line 34
    const-string v1, "HmacSHA224"

    .line 35
    .line 36
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v2, "Alg.Alias.Mac.HMAC-SHA224"

    .line 45
    .line 46
    invoke-virtual {p0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v2, "Alg.Alias.Mac.HMAC/SHA224"

    .line 50
    .line 51
    invoke-virtual {p0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA256"

    .line 55
    .line 56
    const-string v2, "HmacSHA256"

    .line 57
    .line 58
    invoke-direct {p0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v0, "Alg.Alias.Mac.HMAC-SHA256"

    .line 65
    .line 66
    invoke-virtual {p0, v0, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v0, "Alg.Alias.Mac.HMAC/SHA256"

    .line 70
    .line 71
    invoke-virtual {p0, v0, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v0, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA384"

    .line 75
    .line 76
    const-string v1, "HmacSHA384"

    .line 77
    .line 78
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.10"

    .line 82
    .line 83
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v0, "Alg.Alias.Mac.HMAC-SHA384"

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v0, "Alg.Alias.Mac.HMAC/SHA384"

    .line 92
    .line 93
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v0, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA512"

    .line 97
    .line 98
    const-string v1, "HmacSHA512"

    .line 99
    .line 100
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "Alg.Alias.Mac.1.2.840.113549.2.11"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v0, "Alg.Alias.Mac.HMAC-SHA512"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v0, "Alg.Alias.Mac.HMAC/SHA512"

    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v0, "AES/ECB/NoPadding"

    .line 119
    .line 120
    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding"

    .line 121
    .line 122
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "AES/ECB/PKCS7Padding"

    .line 126
    .line 127
    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$PKCS7Padding"

    .line 128
    .line 129
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "AES/CBC/NoPadding"

    .line 133
    .line 134
    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$NoPadding"

    .line 135
    .line 136
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 140
    .line 141
    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding"

    .line 142
    .line 143
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "AES/CTR/NoPadding"

    .line 147
    .line 148
    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR$NoPadding"

    .line 149
    .line 150
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v0, "AES/GCM/NoPadding"

    .line 154
    .line 155
    const-string v1, "android.security.keystore.AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding"

    .line 156
    .line 157
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "android.security.keystore.AndroidKeyStoreRSACipherSpi$NoPadding"

    .line 161
    .line 162
    const-string v1, "RSA/ECB/NoPadding"

    .line 163
    .line 164
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v0, "Alg.Alias.Cipher.RSA/None/NoPadding"

    .line 168
    .line 169
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string v0, "android.security.keystore.AndroidKeyStoreRSACipherSpi$PKCS1Padding"

    .line 173
    .line 174
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 175
    .line 176
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    .line 180
    .line 181
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const-string v0, "RSA/ECB/OAEPPadding"

    .line 185
    .line 186
    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    .line 187
    .line 188
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    .line 192
    .line 193
    invoke-virtual {p0, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 197
    .line 198
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    .line 202
    .line 203
    const-string v1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 204
    .line 205
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    .line 209
    .line 210
    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding"

    .line 211
    .line 212
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    .line 216
    .line 217
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 218
    .line 219
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string v0, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding"

    .line 223
    .line 224
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    .line 228
    .line 229
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 233
    .line 234
    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding"

    .line 235
    .line 236
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    .line 240
    .line 241
    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 242
    .line 243
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 247
    .line 248
    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding"

    .line 249
    .line 250
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    .line 254
    .line 255
    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 256
    .line 257
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    const-string v0, "NONEwithRSA"

    .line 261
    .line 262
    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding"

    .line 263
    .line 264
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v0, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding"

    .line 268
    .line 269
    const-string v1, "MD5withRSA"

    .line 270
    .line 271
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v0, "Alg.Alias.Signature.MD5WithRSAEncryption"

    .line 275
    .line 276
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const-string v0, "Alg.Alias.Signature.MD5/RSA"

    .line 280
    .line 281
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    .line 285
    .line 286
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    .line 290
    .line 291
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    const-string v0, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding"

    .line 295
    .line 296
    const-string v1, "SHA1withRSA"

    .line 297
    .line 298
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v0, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    .line 302
    .line 303
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const-string v0, "Alg.Alias.Signature.SHA1/RSA"

    .line 307
    .line 308
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    const-string v0, "Alg.Alias.Signature.SHA-1/RSA"

    .line 312
    .line 313
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    .line 317
    .line 318
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    .line 322
    .line 323
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    .line 327
    .line 328
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    .line 332
    .line 333
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    const-string v0, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding"

    .line 337
    .line 338
    const-string v1, "SHA224withRSA"

    .line 339
    .line 340
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string v0, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    .line 344
    .line 345
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    .line 349
    .line 350
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    .line 354
    .line 355
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    .line 359
    .line 360
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    const-string v0, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding"

    .line 364
    .line 365
    const-string v1, "SHA256withRSA"

    .line 366
    .line 367
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    const-string v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    .line 371
    .line 372
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    .line 376
    .line 377
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    .line 381
    .line 382
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    .line 386
    .line 387
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    const-string v0, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding"

    .line 391
    .line 392
    const-string v1, "SHA384withRSA"

    .line 393
    .line 394
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v0, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    .line 398
    .line 399
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    .line 403
    .line 404
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    .line 408
    .line 409
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    const-string v0, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding"

    .line 413
    .line 414
    const-string v1, "SHA512withRSA"

    .line 415
    .line 416
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v0, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    .line 420
    .line 421
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    .line 425
    .line 426
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    .line 430
    .line 431
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    const-string v0, "SHA1withRSA/PSS"

    .line 435
    .line 436
    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding"

    .line 437
    .line 438
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v0, "SHA224withRSA/PSS"

    .line 442
    .line 443
    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding"

    .line 444
    .line 445
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string v0, "SHA256withRSA/PSS"

    .line 449
    .line 450
    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding"

    .line 451
    .line 452
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const-string v0, "SHA384withRSA/PSS"

    .line 456
    .line 457
    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding"

    .line 458
    .line 459
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const-string v0, "SHA512withRSA/PSS"

    .line 463
    .line 464
    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding"

    .line 465
    .line 466
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const-string v0, "NONEwithECDSA"

    .line 470
    .line 471
    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$NONE"

    .line 472
    .line 473
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    const-string v0, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA1"

    .line 477
    .line 478
    const-string v1, "SHA1withECDSA"

    .line 479
    .line 480
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const-string v0, "Alg.Alias.Signature.ECDSA"

    .line 484
    .line 485
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    .line 489
    .line 490
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    .line 494
    .line 495
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    .line 499
    .line 500
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    const-string v0, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA224"

    .line 504
    .line 505
    const-string v1, "SHA224withECDSA"

    .line 506
    .line 507
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    .line 511
    .line 512
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    .line 516
    .line 517
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    const-string v0, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA256"

    .line 521
    .line 522
    const-string v1, "SHA256withECDSA"

    .line 523
    .line 524
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    .line 528
    .line 529
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    .line 533
    .line 534
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    const-string v0, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA384"

    .line 538
    .line 539
    const-string v1, "SHA384withECDSA"

    .line 540
    .line 541
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    .line 545
    .line 546
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    .line 550
    .line 551
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const-string v0, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA512"

    .line 555
    .line 556
    const-string v1, "SHA512withECDSA"

    .line 557
    .line 558
    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    .line 562
    .line 563
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    .line 567
    .line 568
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    return-void
.end method

.method public static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "NONE"

    .line 2
    .line 3
    const-string v1, "SHA-1"

    .line 4
    .line 5
    const-string v2, "SHA-224"

    .line 6
    .line 7
    const-string v3, "SHA-256"

    .line 8
    .line 9
    const-string v4, "SHA-384"

    .line 10
    .line 11
    const-string v5, "SHA-512"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static getSupportedRsaSignatureWithPkcs1PaddingDigests()[Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "NONE"

    .line 2
    .line 3
    const-string v1, "MD5"

    .line 4
    .line 5
    const-string v2, "SHA-1"

    .line 6
    .line 7
    const-string v3, "SHA-224"

    .line 8
    .line 9
    const-string v4, "SHA-256"

    .line 10
    .line 11
    const-string v5, "SHA-384"

    .line 12
    .line 13
    const-string v6, "SHA-512"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Cipher."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " SupportedKeyClasses"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private putMacImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Mac."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " SupportedKeyClasses"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "android.security.keystore.AndroidKeyStoreSecretKey"

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Signature."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " SupportedKeyClasses"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Cipher."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " SupportedKeyClasses"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "android.security.keystore.AndroidKeyStoreSecretKey"

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method
