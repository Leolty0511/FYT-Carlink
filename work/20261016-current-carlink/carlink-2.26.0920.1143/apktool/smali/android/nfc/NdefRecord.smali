.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field private static final MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final RTD_ALTERNATIVE_CARRIER:[B

.field public static final RTD_ANDROID_APP:[B

.field public static final RTD_HANDOVER_CARRIER:[B

.field public static final RTD_HANDOVER_REQUEST:[B

.field public static final RTD_HANDOVER_SELECT:[B

.field public static final RTD_SMART_POSTER:[B

.field public static final RTD_TEXT:[B

.field public static final RTD_URI:[B

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/16 v2, 0x54

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-byte v2, v1, v3

    .line 8
    .line 9
    sput-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    const/16 v1, 0x55

    .line 14
    .line 15
    aput-byte v1, v0, v3

    .line 16
    .line 17
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    sput-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    .line 26
    .line 27
    new-array v1, v0, [B

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    sput-object v1, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    .line 33
    .line 34
    new-array v1, v0, [B

    .line 35
    .line 36
    fill-array-data v1, :array_2

    .line 37
    .line 38
    .line 39
    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    .line 40
    .line 41
    new-array v1, v0, [B

    .line 42
    .line 43
    fill-array-data v1, :array_3

    .line 44
    .line 45
    .line 46
    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    .line 47
    .line 48
    new-array v0, v0, [B

    .line 49
    .line 50
    fill-array-data v0, :array_4

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    .line 54
    .line 55
    const-string v0, "android.com:pkg"

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    const-string/jumbo v5, "http://www."

    .line 66
    .line 67
    .line 68
    const-string/jumbo v6, "https://www."

    .line 69
    .line 70
    .line 71
    const-string/jumbo v7, "http://"

    .line 72
    .line 73
    .line 74
    const-string/jumbo v8, "https://"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v9, "tel:"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v10, "mailto:"

    .line 81
    .line 82
    .line 83
    const-string v11, "ftp://anonymous:anonymous@"

    .line 84
    .line 85
    const-string v12, "ftp://ftp."

    .line 86
    .line 87
    const-string v13, "ftps://"

    .line 88
    .line 89
    const-string/jumbo v14, "sftp://"

    .line 90
    .line 91
    .line 92
    const-string/jumbo v15, "smb://"

    .line 93
    .line 94
    .line 95
    const-string/jumbo v16, "nfs://"

    .line 96
    .line 97
    .line 98
    const-string v17, "ftp://"

    .line 99
    .line 100
    const-string v18, "dav://"

    .line 101
    .line 102
    const-string/jumbo v19, "news:"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v20, "telnet://"

    .line 106
    .line 107
    .line 108
    const-string/jumbo v21, "imap:"

    .line 109
    .line 110
    .line 111
    const-string/jumbo v22, "rtsp://"

    .line 112
    .line 113
    .line 114
    const-string/jumbo v23, "urn:"

    .line 115
    .line 116
    .line 117
    const-string/jumbo v24, "pop:"

    .line 118
    .line 119
    .line 120
    const-string/jumbo v25, "sip:"

    .line 121
    .line 122
    .line 123
    const-string/jumbo v26, "sips:"

    .line 124
    .line 125
    .line 126
    const-string/jumbo v27, "tftp:"

    .line 127
    .line 128
    .line 129
    const-string v28, "btspp://"

    .line 130
    .line 131
    const-string v29, "btl2cap://"

    .line 132
    .line 133
    const-string v30, "btgoep://"

    .line 134
    .line 135
    const-string/jumbo v31, "tcpobex://"

    .line 136
    .line 137
    .line 138
    const-string/jumbo v32, "irdaobex://"

    .line 139
    .line 140
    .line 141
    const-string v33, "file://"

    .line 142
    .line 143
    const-string/jumbo v34, "urn:epc:id:"

    .line 144
    .line 145
    .line 146
    const-string/jumbo v35, "urn:epc:tag:"

    .line 147
    .line 148
    .line 149
    const-string/jumbo v36, "urn:epc:pat:"

    .line 150
    .line 151
    .line 152
    const-string/jumbo v37, "urn:epc:raw:"

    .line 153
    .line 154
    .line 155
    const-string/jumbo v38, "urn:epc:"

    .line 156
    .line 157
    .line 158
    const-string/jumbo v39, "urn:nfc:"

    .line 159
    .line 160
    .line 161
    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    .line 166
    .line 167
    new-array v0, v3, [B

    .line 168
    .line 169
    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 170
    .line 171
    new-instance v0, Landroid/nfc/NdefRecord$1;

    .line 172
    .line 173
    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    .line 174
    .line 175
    .line 176
    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    .line 178
    return-void

    .line 179
    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    nop

    .line 185
    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    nop

    .line 191
    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    nop

    .line 203
    :array_4
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    if-nez p3, :cond_1

    .line 3
    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    if-nez p4, :cond_2

    .line 4
    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 5
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 7
    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 8
    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 9
    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v0}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 15
    aget-object p1, v0, p1

    iget-short v0, p1, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 16
    iget-object v0, p1, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 17
    iget-object v0, p1, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 18
    iget-object p1, p1, Landroid/nfc/NdefRecord;->mPayload:[B

    iput-object p1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void

    .line 19
    :cond_0
    new-instance p1, Landroid/nfc/FormatException;

    const-string v0, "data too long"

    invoke-direct {p1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    aget-byte v4, p0, v3

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    new-array v5, v5, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    aput-object v4, v5, v2

    .line 21
    .line 22
    const-string v4, "%02X"

    .line 23
    .line 24
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/nfc/NdefRecord;

    .line 10
    .line 11
    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    .line 12
    .line 13
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v2, 0x4

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v2, v1, v3, p0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string/jumbo v0, "packageName is empty"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 35
    .line 36
    const-string/jumbo v0, "packageName is null"

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    array-length v0, p0

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    array-length v1, p1

    .line 51
    add-int/2addr v0, v1

    .line 52
    new-array v0, v0, [B

    .line 53
    .line 54
    array-length v1, p0

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 57
    .line 58
    .line 59
    array-length v1, p0

    .line 60
    const/16 v3, 0x3a

    .line 61
    .line 62
    aput-byte v3, v0, v1

    .line 63
    .line 64
    array-length p0, p0

    .line 65
    add-int/lit8 p0, p0, 0x1

    .line 66
    .line 67
    array-length v1, p1

    .line 68
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Landroid/nfc/NdefRecord;

    .line 72
    .line 73
    const/4 p1, 0x4

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string/jumbo p1, "type is empty"

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    const-string p1, "domain is empty"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 97
    .line 98
    const-string/jumbo p1, "type is null"

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 106
    .line 107
    const-string p1, "domain is null"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x2f

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v0, Landroid/nfc/NdefRecord;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, v1, p0, v2, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string/jumbo p1, "mimeType must have minor type"

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string/jumbo p1, "mimeType must have major type"

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string/jumbo p1, "mimeType is empty"

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string/jumbo p1, "mimeType is null"

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public static createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    array-length v0, p0

    .line 39
    const/16 v1, 0x40

    .line 40
    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    array-length v0, p0

    .line 44
    const/4 v1, 0x1

    .line 45
    add-int/2addr v0, v1

    .line 46
    array-length v2, p1

    .line 47
    add-int/2addr v0, v2

    .line 48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    array-length v2, p0

    .line 53
    and-int/lit16 v2, v2, 0xff

    .line 54
    .line 55
    int-to-byte v2, v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    new-instance p0, Landroid/nfc/NdefRecord;

    .line 66
    .line 67
    sget-object p1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p0, v1, p1, v2, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string/jumbo p1, "language code is too long, must be <64 bytes."

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 88
    .line 89
    const-string/jumbo p1, "text is null"

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 4
    :goto_0
    sget-object v2, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    .line 5
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-byte v3, v1

    .line 6
    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 7
    :goto_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 8
    array-length v1, p0

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 9
    aput-byte v3, v1, v4

    .line 10
    array-length v2, p0

    invoke-static {p0, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 11
    new-instance p0, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uri is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "uri is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 0

    .line 14
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0
.end method

.method private static ensureSanePayloadSize(J)V
    .locals 3

    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "payload above max limit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " > 10485760"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, -0x1

    .line 16
    move v7, v4

    .line 17
    move v8, v7

    .line 18
    move v6, v5

    .line 19
    move-object v5, v3

    .line 20
    :goto_0
    if-nez v7, :cond_25

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    and-int/lit8 v9, v7, -0x80

    .line 27
    .line 28
    if-eqz v9, :cond_0

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v9, v4

    .line 33
    :goto_1
    and-int/lit8 v11, v7, 0x40

    .line 34
    .line 35
    if-eqz v11, :cond_1

    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move v11, v4

    .line 40
    :goto_2
    and-int/lit8 v12, v7, 0x20

    .line 41
    .line 42
    if-eqz v12, :cond_2

    .line 43
    .line 44
    const/4 v12, 0x1

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    move v12, v4

    .line 47
    :goto_3
    and-int/lit8 v13, v7, 0x10

    .line 48
    .line 49
    if-eqz v13, :cond_3

    .line 50
    .line 51
    const/4 v13, 0x1

    .line 52
    goto :goto_4

    .line 53
    :cond_3
    move v13, v4

    .line 54
    :goto_4
    and-int/lit8 v14, v7, 0x8

    .line 55
    .line 56
    if-eqz v14, :cond_4

    .line 57
    .line 58
    const/4 v14, 0x1

    .line 59
    goto :goto_5

    .line 60
    :cond_4
    move v14, v4

    .line 61
    :goto_5
    and-int/lit8 v7, v7, 0x7

    .line 62
    .line 63
    int-to-short v7, v7

    .line 64
    if-nez v9, :cond_6

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    if-nez v15, :cond_6

    .line 71
    .line 72
    if-nez v8, :cond_6

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_5
    new-instance v0, Landroid/nfc/FormatException;

    .line 78
    .line 79
    const-string v1, "expected MB flag"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_6
    :goto_6
    if-eqz v9, :cond_9

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-nez v9, :cond_7

    .line 92
    .line 93
    if-eqz v8, :cond_9

    .line 94
    .line 95
    :cond_7
    if-eqz p1, :cond_8

    .line 96
    .line 97
    goto :goto_7

    .line 98
    :cond_8
    new-instance v0, Landroid/nfc/FormatException;

    .line 99
    .line 100
    const-string/jumbo v1, "unexpected MB flag"

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_9
    :goto_7
    if-eqz v8, :cond_b

    .line 108
    .line 109
    if-nez v14, :cond_a

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_a
    new-instance v0, Landroid/nfc/FormatException;

    .line 113
    .line 114
    const-string/jumbo v1, "unexpected IL flag in non-leading chunk"

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_b
    :goto_8
    if-eqz v12, :cond_d

    .line 122
    .line 123
    if-nez v11, :cond_c

    .line 124
    .line 125
    goto :goto_9

    .line 126
    :cond_c
    new-instance v0, Landroid/nfc/FormatException;

    .line 127
    .line 128
    const-string/jumbo v1, "unexpected ME flag in non-trailing chunk"

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_d
    :goto_9
    const/4 v9, 0x6

    .line 136
    if-eqz v8, :cond_f

    .line 137
    .line 138
    if-ne v7, v9, :cond_e

    .line 139
    .line 140
    goto :goto_a

    .line 141
    :cond_e
    new-instance v0, Landroid/nfc/FormatException;

    .line 142
    .line 143
    const-string v1, "expected TNF_UNCHANGED in non-leading chunk"

    .line 144
    .line 145
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_f
    :goto_a
    if-nez v8, :cond_11

    .line 150
    .line 151
    if-eq v7, v9, :cond_10

    .line 152
    .line 153
    goto :goto_b

    .line 154
    :cond_10
    new-instance v0, Landroid/nfc/FormatException;

    .line 155
    .line 156
    const-string/jumbo v1, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_11
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    and-int/lit16 v9, v9, 0xff

    .line 168
    .line 169
    if-eqz v13, :cond_12

    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    and-int/lit16 v13, v13, 0xff

    .line 176
    .line 177
    move/from16 v16, v11

    .line 178
    .line 179
    int-to-long v10, v13

    .line 180
    goto :goto_c

    .line 181
    :cond_12
    move/from16 v16, v11

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    int-to-long v10, v10

    .line 188
    const-wide v17, 0xffffffffL

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    and-long v10, v10, v17

    .line 194
    .line 195
    :goto_c
    if-eqz v14, :cond_13

    .line 196
    .line 197
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    and-int/lit16 v13, v13, 0xff

    .line 202
    .line 203
    goto :goto_d

    .line 204
    :cond_13
    move v13, v4

    .line 205
    :goto_d
    if-eqz v8, :cond_15

    .line 206
    .line 207
    if-nez v9, :cond_14

    .line 208
    .line 209
    goto :goto_e

    .line 210
    :cond_14
    new-instance v0, Landroid/nfc/FormatException;

    .line 211
    .line 212
    const-string v1, "expected zero-length type in non-leading chunk"

    .line 213
    .line 214
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :cond_15
    :goto_e
    if-nez v8, :cond_18

    .line 219
    .line 220
    if-lez v9, :cond_16

    .line 221
    .line 222
    new-array v3, v9, [B

    .line 223
    .line 224
    goto :goto_f

    .line 225
    :cond_16
    sget-object v3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 226
    .line 227
    :goto_f
    if-lez v13, :cond_17

    .line 228
    .line 229
    new-array v5, v13, [B

    .line 230
    .line 231
    goto :goto_10

    .line 232
    :cond_17
    sget-object v5, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 233
    .line 234
    :goto_10
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    .line 240
    :cond_18
    invoke-static {v10, v11}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    .line 241
    .line 242
    .line 243
    const-wide/16 v13, 0x0

    .line 244
    .line 245
    cmp-long v17, v10, v13

    .line 246
    .line 247
    if-lez v17, :cond_19

    .line 248
    .line 249
    long-to-int v10, v10

    .line 250
    new-array v10, v10, [B

    .line 251
    .line 252
    goto :goto_11

    .line 253
    :cond_19
    sget-object v10, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 254
    .line 255
    :goto_11
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 256
    .line 257
    .line 258
    if-eqz v12, :cond_1c

    .line 259
    .line 260
    if-nez v8, :cond_1c

    .line 261
    .line 262
    if-nez v9, :cond_1b

    .line 263
    .line 264
    const/4 v6, 0x5

    .line 265
    if-ne v7, v6, :cond_1a

    .line 266
    .line 267
    goto :goto_12

    .line 268
    :cond_1a
    new-instance v0, Landroid/nfc/FormatException;

    .line 269
    .line 270
    const-string v1, "expected non-zero type length in first chunk"

    .line 271
    .line 272
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :cond_1b
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 277
    .line 278
    .line 279
    move v6, v7

    .line 280
    :cond_1c
    if-nez v12, :cond_1d

    .line 281
    .line 282
    if-eqz v8, :cond_1e

    .line 283
    .line 284
    :cond_1d
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    :cond_1e
    if-nez v12, :cond_21

    .line 288
    .line 289
    if-eqz v8, :cond_21

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-eqz v8, :cond_1f

    .line 300
    .line 301
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    check-cast v8, [B

    .line 306
    .line 307
    array-length v8, v8

    .line 308
    int-to-long v8, v8

    .line 309
    add-long/2addr v13, v8

    .line 310
    goto :goto_13

    .line 311
    :cond_1f
    invoke-static {v13, v14}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    .line 312
    .line 313
    .line 314
    long-to-int v7, v13

    .line 315
    new-array v10, v7, [B

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    move v8, v4

    .line 322
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_20

    .line 327
    .line 328
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    check-cast v9, [B

    .line 333
    .line 334
    array-length v11, v9

    .line 335
    invoke-static {v9, v4, v10, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 336
    .line 337
    .line 338
    array-length v9, v9

    .line 339
    add-int/2addr v8, v9

    .line 340
    goto :goto_14

    .line 341
    :cond_20
    move v7, v6

    .line 342
    :cond_21
    if-eqz v12, :cond_22

    .line 343
    .line 344
    move/from16 v7, v16

    .line 345
    .line 346
    const/4 v8, 0x1

    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_22
    invoke-static {v7, v3, v5, v10}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    if-nez v8, :cond_24

    .line 354
    .line 355
    new-instance v8, Landroid/nfc/NdefRecord;

    .line 356
    .line 357
    invoke-direct {v8, v7, v3, v5, v10}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    if-eqz p1, :cond_23

    .line 364
    .line 365
    goto :goto_15

    .line 366
    :cond_23
    move v8, v4

    .line 367
    move/from16 v7, v16

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_24
    new-instance v0, Landroid/nfc/FormatException;

    .line 372
    .line 373
    invoke-direct {v0, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_25
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    new-array v0, v0, [Landroid/nfc/NdefRecord;

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, [Landroid/nfc/NdefRecord;

    .line 388
    .line 389
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Landroid/nfc/FormatException;

    .line 392
    .line 393
    const-string v2, "expected more data"

    .line 394
    .line 395
    invoke-direct {v1, v2, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .line 397
    .line 398
    throw v1
.end method

.method private parseWktUri()Landroid/net/Uri;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    return-object v3

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    aget-byte v1, v0, v1

    .line 11
    .line 12
    and-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    if-ltz v1, :cond_2

    .line 15
    .line 16
    sget-object v2, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v4, v2

    .line 19
    if-lt v1, v4, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    aget-object v1, v2, v1

    .line 23
    .line 24
    new-instance v2, Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    array-length v4, v0

    .line 28
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    return-object v3
.end method

.method private toUri(Z)Landroid/net/Uri;
    .locals 5

    .line 2
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v0, "vnd.android.nfc://ext/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 7
    :try_start_0
    new-instance p1, Landroid/nfc/NdefMessage;

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {p1, v0}, Landroid/nfc/NdefMessage;-><init>([B)V

    .line 8
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    .line 9
    invoke-direct {v4, v2}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    :catch_0
    :cond_6
    :goto_1
    return-object v1
.end method

.method public static validateTnf(S[B[B[B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    aput-object p0, p1, p2

    .line 14
    .line 15
    const-string/jumbo p0, "unexpected tnf value: 0x%02x"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    const-string/jumbo p0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1
    array-length p0, p1

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const-string/jumbo p0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    :pswitch_2
    return-object v0

    .line 35
    :pswitch_3
    array-length p0, p1

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    array-length p0, p2

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    array-length p0, p3

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0

    .line 46
    :cond_2
    :goto_0
    const-string/jumbo p0, "unexpected data in TNF_EMPTY record"

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    const-class v1, Landroid/nfc/NdefRecord;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Landroid/nfc/NdefRecord;

    .line 19
    .line 20
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 21
    .line 22
    iget-object v2, p1, Landroid/nfc/NdefRecord;->mId:[B

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v0

    .line 31
    :cond_3
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 32
    .line 33
    iget-object v2, p1, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v0

    .line 42
    :cond_4
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 43
    .line 44
    iget-short v2, p1, Landroid/nfc/NdefRecord;->mTnf:S

    .line 45
    .line 46
    if-eq v1, v2, :cond_5

    .line 47
    .line 48
    return v0

    .line 49
    :cond_5
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 50
    .line 51
    iget-object p1, p1, Landroid/nfc/NdefRecord;->mType:[B

    .line 52
    .line 53
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public getByteLength()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    add-int/2addr v0, v2

    .line 10
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    add-int/2addr v0, v3

    .line 14
    array-length v2, v2

    .line 15
    const/16 v3, 0x100

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    move v2, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v4

    .line 24
    :goto_0
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :goto_1
    move v4, v5

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    array-length v1, v1

    .line 31
    if-lez v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x3

    .line 37
    .line 38
    :cond_3
    if-eqz v4, :cond_4

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    :cond_4
    return v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTnf()S
    .locals 1

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    .line 25
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public toByteArray()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1, v1}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public toMimeType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 13
    .line 14
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 25
    .line 26
    sget-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string/jumbo v0, "text/plain"

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    const-string v2, "NdefRecord tnf=%X"

    .line 16
    .line 17
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    const-string v1, " type="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 35
    .line 36
    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    const-string v1, " id="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 54
    .line 55
    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 63
    .line 64
    array-length v1, v1

    .line 65
    if-lez v1, :cond_2

    .line 66
    .line 67
    const-string v1, " payload="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 73
    .line 74
    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0x100

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 19
    .line 20
    array-length v4, v4

    .line 21
    if-lez v4, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v2, v3

    .line 25
    :goto_1
    if-eqz p2, :cond_3

    .line 26
    .line 27
    const/16 p2, -0x80

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_3
    move p2, v3

    .line 31
    :goto_2
    if-eqz p3, :cond_4

    .line 32
    .line 33
    const/16 p3, 0x40

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_4
    move p3, v3

    .line 37
    :goto_3
    or-int/2addr p2, p3

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    const/16 p3, 0x10

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_5
    move p3, v3

    .line 44
    :goto_4
    or-int/2addr p2, p3

    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    :cond_6
    or-int/2addr p2, v3

    .line 50
    or-int/2addr p2, v1

    .line 51
    int-to-byte p2, p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 56
    .line 57
    array-length p2, p2

    .line 58
    int-to-byte p2, p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 65
    .line 66
    array-length p2, p2

    .line 67
    int-to-byte p2, p2

    .line 68
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_7
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 73
    .line 74
    array-length p2, p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    :goto_5
    if-eqz v2, :cond_8

    .line 79
    .line 80
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 81
    .line 82
    array-length p2, p2

    .line 83
    int-to-byte p2, p2

    .line 84
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    :cond_8
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-short p2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 7
    .line 8
    array-length p2, p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 18
    .line 19
    array-length p2, p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 29
    .line 30
    array-length p2, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
