.class public final Landroid/security/keymaster/KeymasterDefs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HW_AUTH_FINGERPRINT:I = 0x2

.field public static final HW_AUTH_PASSWORD:I = 0x1

.field public static final KM_ALGORITHM_AES:I = 0x20

.field public static final KM_ALGORITHM_EC:I = 0x3

.field public static final KM_ALGORITHM_HMAC:I = 0x80

.field public static final KM_ALGORITHM_RSA:I = 0x1

.field public static final KM_BIGNUM:I = -0x80000000

.field public static final KM_BLOB_REQUIRES_FILE_SYSTEM:I = 0x1

.field public static final KM_BLOB_STANDALONE:I = 0x0

.field public static final KM_BOOL:I = 0x70000000

.field public static final KM_BYTES:I = -0x70000000

.field public static final KM_DATE:I = 0x60000000

.field public static final KM_DIGEST_MD5:I = 0x1

.field public static final KM_DIGEST_NONE:I = 0x0

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA_2_224:I = 0x3

.field public static final KM_DIGEST_SHA_2_256:I = 0x4

.field public static final KM_DIGEST_SHA_2_384:I = 0x5

.field public static final KM_DIGEST_SHA_2_512:I = 0x6

.field public static final KM_ENUM:I = 0x10000000

.field public static final KM_ENUM_REP:I = 0x20000000

.field public static final KM_ERROR_CALLER_NONCE_PROHIBITED:I = -0x37

.field public static final KM_ERROR_CANNOT_ATTEST_IDS:I = -0x42

.field public static final KM_ERROR_CONCURRENT_ACCESS_CONFLICT:I = -0x2f

.field public static final KM_ERROR_DELEGATION_NOT_ALLOWED:I = -0x17

.field public static final KM_ERROR_IMPORTED_KEY_DECRYPTION_FAILED:I = -0x23

.field public static final KM_ERROR_IMPORTED_KEY_NOT_ENCRYPTED:I = -0x22

.field public static final KM_ERROR_IMPORTED_KEY_NOT_SIGNED:I = -0x24

.field public static final KM_ERROR_IMPORTED_KEY_VERIFICATION_FAILED:I = -0x25

.field public static final KM_ERROR_IMPORT_PARAMETER_MISMATCH:I = -0x2c

.field public static final KM_ERROR_INCOMPATIBLE_ALGORITHM:I = -0x5

.field public static final KM_ERROR_INCOMPATIBLE_BLOCK_MODE:I = -0x8

.field public static final KM_ERROR_INCOMPATIBLE_DIGEST:I = -0xd

.field public static final KM_ERROR_INCOMPATIBLE_KEY_FORMAT:I = -0x12

.field public static final KM_ERROR_INCOMPATIBLE_PADDING_MODE:I = -0xb

.field public static final KM_ERROR_INCOMPATIBLE_PURPOSE:I = -0x3

.field public static final KM_ERROR_INSUFFICIENT_BUFFER_SPACE:I = -0x1d

.field public static final KM_ERROR_INVALID_ARGUMENT:I = -0x26

.field public static final KM_ERROR_INVALID_AUTHORIZATION_TIMEOUT:I = -0x10

.field public static final KM_ERROR_INVALID_EXPIRATION_TIME:I = -0xe

.field public static final KM_ERROR_INVALID_INPUT_LENGTH:I = -0x15

.field public static final KM_ERROR_INVALID_KEY_BLOB:I = -0x21

.field public static final KM_ERROR_INVALID_MAC_LENGTH:I = -0x39

.field public static final KM_ERROR_INVALID_NONCE:I = -0x34

.field public static final KM_ERROR_INVALID_OPERATION_HANDLE:I = -0x1c

.field public static final KM_ERROR_INVALID_RESCOPING:I = -0x2a

.field public static final KM_ERROR_INVALID_TAG:I = -0x28

.field public static final KM_ERROR_INVALID_USER_ID:I = -0xf

.field public static final KM_ERROR_KEY_EXPIRED:I = -0x19

.field public static final KM_ERROR_KEY_EXPORT_OPTIONS_INVALID:I = -0x16

.field public static final KM_ERROR_KEY_MAX_OPS_EXCEEDED:I = -0x38

.field public static final KM_ERROR_KEY_NOT_YET_VALID:I = -0x18

.field public static final KM_ERROR_KEY_RATE_LIMIT_EXCEEDED:I = -0x36

.field public static final KM_ERROR_KEY_USER_NOT_AUTHENTICATED:I = -0x1a

.field public static final KM_ERROR_MEMORY_ALLOCATION_FAILED:I = -0x29

.field public static final KM_ERROR_MISSING_MAC_LENGTH:I = -0x35

.field public static final KM_ERROR_MISSING_MIN_MAC_LENGTH:I = -0x3a

.field public static final KM_ERROR_MISSING_NONCE:I = -0x33

.field public static final KM_ERROR_OK:I = 0x0

.field public static final KM_ERROR_OPERATION_CANCELLED:I = -0x2e

.field public static final KM_ERROR_OUTPUT_PARAMETER_NULL:I = -0x1b

.field public static final KM_ERROR_ROOT_OF_TRUST_ALREADY_SET:I = -0x1

.field public static final KM_ERROR_SECURE_HW_ACCESS_DENIED:I = -0x2d

.field public static final KM_ERROR_SECURE_HW_BUSY:I = -0x30

.field public static final KM_ERROR_SECURE_HW_COMMUNICATION_FAILED:I = -0x31

.field public static final KM_ERROR_TOO_MANY_OPERATIONS:I = -0x1f

.field public static final KM_ERROR_UNEXPECTED_NULL_POINTER:I = -0x20

.field public static final KM_ERROR_UNIMPLEMENTED:I = -0x64

.field public static final KM_ERROR_UNKNOWN_ERROR:I = -0x3e8

.field public static final KM_ERROR_UNSUPPORTED_ALGORITHM:I = -0x4

.field public static final KM_ERROR_UNSUPPORTED_BLOCK_MODE:I = -0x7

.field public static final KM_ERROR_UNSUPPORTED_DIGEST:I = -0xc

.field public static final KM_ERROR_UNSUPPORTED_EC_FIELD:I = -0x32

.field public static final KM_ERROR_UNSUPPORTED_KEY_ENCRYPTION_ALGORITHM:I = -0x13

.field public static final KM_ERROR_UNSUPPORTED_KEY_FORMAT:I = -0x11

.field public static final KM_ERROR_UNSUPPORTED_KEY_SIZE:I = -0x6

.field public static final KM_ERROR_UNSUPPORTED_KEY_VERIFICATION_ALGORITHM:I = -0x14

.field public static final KM_ERROR_UNSUPPORTED_MAC_LENGTH:I = -0x9

.field public static final KM_ERROR_UNSUPPORTED_MIN_MAC_LENGTH:I = -0x3b

.field public static final KM_ERROR_UNSUPPORTED_PADDING_MODE:I = -0xa

.field public static final KM_ERROR_UNSUPPORTED_PURPOSE:I = -0x2

.field public static final KM_ERROR_UNSUPPORTED_TAG:I = -0x27

.field public static final KM_ERROR_VERIFICATION_FAILED:I = -0x1e

.field public static final KM_ERROR_VERSION_MISMATCH:I = -0x65

.field public static final KM_INVALID:I = 0x0

.field public static final KM_KEY_FORMAT_PKCS8:I = 0x1

.field public static final KM_KEY_FORMAT_RAW:I = 0x3

.field public static final KM_KEY_FORMAT_X509:I = 0x0

.field public static final KM_MODE_CBC:I = 0x2

.field public static final KM_MODE_CTR:I = 0x3

.field public static final KM_MODE_ECB:I = 0x1

.field public static final KM_MODE_GCM:I = 0x20

.field public static final KM_ORIGIN_GENERATED:I = 0x0

.field public static final KM_ORIGIN_IMPORTED:I = 0x2

.field public static final KM_ORIGIN_UNKNOWN:I = 0x3

.field public static final KM_PAD_NONE:I = 0x1

.field public static final KM_PAD_PKCS7:I = 0x40

.field public static final KM_PAD_RSA_OAEP:I = 0x2

.field public static final KM_PAD_RSA_PKCS1_1_5_ENCRYPT:I = 0x4

.field public static final KM_PAD_RSA_PKCS1_1_5_SIGN:I = 0x5

.field public static final KM_PAD_RSA_PSS:I = 0x3

.field public static final KM_PURPOSE_DECRYPT:I = 0x1

.field public static final KM_PURPOSE_ENCRYPT:I = 0x0

.field public static final KM_PURPOSE_SIGN:I = 0x2

.field public static final KM_PURPOSE_VERIFY:I = 0x3

.field public static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field public static final KM_TAG_ALGORITHM:I = 0x10000002

.field public static final KM_TAG_ALLOW_WHILE_ON_BODY:I = 0x700001fa

.field public static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field public static final KM_TAG_ALL_USERS:I = 0x700001f4

.field public static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field public static final KM_TAG_ASSOCIATED_DATA:I = -0x6ffffc18

.field public static final KM_TAG_ATTESTATION_CHALLENGE:I = -0x6ffffd3c

.field public static final KM_TAG_ATTESTATION_ID_BRAND:I = -0x6ffffd3a

.field public static final KM_TAG_ATTESTATION_ID_DEVICE:I = -0x6ffffd39

.field public static final KM_TAG_ATTESTATION_ID_IMEI:I = -0x6ffffd36

.field public static final KM_TAG_ATTESTATION_ID_MANUFACTURER:I = -0x6ffffd34

.field public static final KM_TAG_ATTESTATION_ID_MEID:I = -0x6ffffd35

.field public static final KM_TAG_ATTESTATION_ID_MODEL:I = -0x6ffffd33

.field public static final KM_TAG_ATTESTATION_ID_PRODUCT:I = -0x6ffffd38

.field public static final KM_TAG_ATTESTATION_ID_SERIAL:I = -0x6ffffd37

.field public static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field public static final KM_TAG_AUTH_TOKEN:I = -0x6ffffc16

.field public static final KM_TAG_BLOB_USAGE_REQUIREMENTS:I = 0x100002c1

.field public static final KM_TAG_BLOCK_MODE:I = 0x20000004

.field public static final KM_TAG_CALLER_NONCE:I = 0x70000007

.field public static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field public static final KM_TAG_DIGEST:I = 0x20000005

.field public static final KM_TAG_INCLUDE_UNIQUE_ID:I = 0x700000ca

.field public static final KM_TAG_INVALID:I = 0x0

.field public static final KM_TAG_KEY_SIZE:I = 0x30000003

.field public static final KM_TAG_MAC_LENGTH:I = 0x300003eb

.field public static final KM_TAG_MAX_USES_PER_BOOT:I = 0x30000194

.field public static final KM_TAG_MIN_MAC_LENGTH:I = 0x30000008

.field public static final KM_TAG_MIN_SECONDS_BETWEEN_OPS:I = 0x30000193

.field public static final KM_TAG_NONCE:I = -0x6ffffc17

.field public static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field public static final KM_TAG_ORIGIN:I = 0x100002be

.field public static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field public static final KM_TAG_PADDING:I = 0x20000006

.field public static final KM_TAG_PURPOSE:I = 0x20000001

.field public static final KM_TAG_RESCOPING_ADD:I = 0x20000065

.field public static final KM_TAG_RESCOPING_DEL:I = 0x20000066

.field public static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field public static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field public static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field public static final KM_TAG_SOTER_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY:I = 0x70002afc

.field public static final KM_TAG_SOTER_AUTO_SIGNED_COMMON_KEY_WHEN_GET_PUBLIC_KEY:I = -0x6fffd505

.field public static final KM_TAG_SOTER_AUTO_SIGNED_COMMON_KEY_WHEN_GET_PUBLIC_KEY_BLOB:I = -0x6fffd500

.field public static final KM_TAG_SOTER_IS_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY:I = 0x70002af9

.field public static final KM_TAG_SOTER_IS_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY:I = 0x70002afa

.field public static final KM_TAG_SOTER_IS_FROM_SOTER:I = 0x70002af8

.field public static final KM_TAG_SOTER_IS_SECMSG_FID_COUNTER_SIGNED_WHEN_SIGN:I = 0x70002afd

.field public static final KM_TAG_SOTER_UID:I = 0x30002aff

.field public static final KM_TAG_SOTER_USE_NEXT_ATTK:I = 0x70002afe

.field public static final KM_TAG_UNIQUE_ID:I = -0x6ffffd3d

.field public static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field public static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field public static final KM_TAG_USER_ID:I = 0x300001f5

.field public static final KM_TAG_USER_SECURE_ID:I = -0x5ffffe0a

.field public static final KM_UINT:I = 0x30000000

.field public static final KM_UINT_REP:I = 0x40000000

.field public static final KM_ULONG:I = 0x50000000

.field public static final KM_ULONG_REP:I = -0x60000000

.field public static final sErrorCodeToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "OK"

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Unsupported purpose"

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/4 v1, -0x3

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "Incompatible purpose"

    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/4 v1, -0x4

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "Unsupported algorithm"

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 v1, -0x5

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "Incompatible algorithm"

    .line 54
    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 v1, -0x6

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "Unsupported key size"

    .line 64
    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/4 v1, -0x7

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "Unsupported block mode"

    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const/4 v1, -0x8

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "Incompatible block mode"

    .line 84
    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const/16 v1, -0x9

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "Unsupported MAC or authentication tag length"

    .line 95
    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const/16 v1, -0xa

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "Unsupported padding mode"

    .line 106
    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/16 v1, -0xb

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "Incompatible padding mode"

    .line 117
    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/16 v1, -0xc

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v2, "Unsupported digest"

    .line 128
    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const/16 v1, -0xd

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "Incompatible digest"

    .line 139
    .line 140
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const/16 v1, -0xe

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "Invalid expiration time"

    .line 150
    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const/16 v1, -0xf

    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v2, "Invalid user ID"

    .line 161
    .line 162
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const/16 v1, -0x10

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "Invalid user authorization timeout"

    .line 172
    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    const/16 v1, -0x11

    .line 177
    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v2, "Unsupported key format"

    .line 183
    .line 184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const/16 v1, -0x12

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v2, "Incompatible key format"

    .line 194
    .line 195
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const/16 v1, -0x15

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "Invalid input length"

    .line 205
    .line 206
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const/16 v1, -0x18

    .line 210
    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v2, "Key not yet valid"

    .line 216
    .line 217
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const/16 v1, -0x19

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v2, "Key expired"

    .line 227
    .line 228
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const/16 v1, -0x1a

    .line 232
    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const-string v2, "Key user not authenticated"

    .line 238
    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const/16 v1, -0x1c

    .line 243
    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const-string v2, "Invalid operation handle"

    .line 249
    .line 250
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    const/16 v1, -0x1e

    .line 254
    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    const-string v2, "Signature/MAC verification failed"

    .line 260
    .line 261
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    const/16 v1, -0x1f

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    const-string v2, "Too many operations"

    .line 271
    .line 272
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    const/16 v1, -0x21

    .line 276
    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    const-string v2, "Invalid key blob"

    .line 282
    .line 283
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    const/16 v1, -0x26

    .line 287
    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const-string v2, "Invalid argument"

    .line 293
    .line 294
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    const/16 v1, -0x27

    .line 298
    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const-string v2, "Unsupported tag"

    .line 304
    .line 305
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const/16 v1, -0x28

    .line 309
    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const-string v2, "Invalid tag"

    .line 315
    .line 316
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    const/16 v1, -0x29

    .line 320
    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    const-string v2, "Memory allocation failed"

    .line 326
    .line 327
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    const/16 v1, -0x32

    .line 331
    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    const-string v2, "Unsupported EC field"

    .line 337
    .line 338
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const/16 v1, -0x33

    .line 342
    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    const-string v2, "Required IV missing"

    .line 348
    .line 349
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    const/16 v1, -0x34

    .line 353
    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const-string v2, "Invalid IV"

    .line 359
    .line 360
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    const/16 v1, -0x37

    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, "Caller-provided IV not permitted"

    .line 370
    .line 371
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    const/16 v1, -0x39

    .line 375
    .line 376
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const-string v2, "Invalid MAC or authentication tag length"

    .line 381
    .line 382
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    const/16 v1, -0x42

    .line 386
    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const-string v2, "Unable to attest device ids"

    .line 392
    .line 393
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    const/16 v1, -0x64

    .line 397
    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const-string v2, "Not implemented"

    .line 403
    .line 404
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    const/16 v1, -0x3e8

    .line 408
    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    const-string v2, "Unknown error"

    .line 414
    .line 415
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getTagType(I)I
    .locals 1

    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    return p0
.end method
