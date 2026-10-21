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
    .locals 39

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x54

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 1
    sput-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v0, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    .line 2
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_2

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_3

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    new-array v0, v0, [B

    .line 7
    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const-string v0, "android.com:pkg"

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const-string v4, ""

    const-string v5, "http://www."

    const-string v6, "https://www."

    const-string v7, "http://"

    const-string v8, "https://"

    const-string/jumbo v9, "tel:"

    const-string v10, "mailto:"

    const-string v11, "ftp://anonymous:anonymous@"

    const-string v12, "ftp://ftp."

    const-string v13, "ftps://"

    const-string/jumbo v14, "sftp://"

    const-string/jumbo v15, "smb://"

    const-string v16, "nfs://"

    const-string v17, "ftp://"

    const-string v18, "dav://"

    const-string v19, "news:"

    const-string/jumbo v20, "telnet://"

    const-string v21, "imap:"

    const-string/jumbo v22, "rtsp://"

    const-string/jumbo v23, "urn:"

    const-string v24, "pop:"

    const-string/jumbo v25, "sip:"

    const-string/jumbo v26, "sips:"

    const-string/jumbo v27, "tftp:"

    const-string v28, "btspp://"

    const-string v29, "btl2cap://"

    const-string v30, "btgoep://"

    const-string/jumbo v31, "tcpobex://"

    const-string v32, "irdaobex://"

    const-string v33, "file://"

    const-string/jumbo v34, "urn:epc:id:"

    const-string/jumbo v35, "urn:epc:tag:"

    const-string/jumbo v36, "urn:epc:pat:"

    const-string/jumbo v37, "urn:epc:raw:"

    const-string/jumbo v38, "urn:epc:"

    .line 9
    filled-new-array/range {v4 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    new-array v0, v3, [B

    .line 10
    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 11
    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    nop

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
    .locals 2
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
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 15
    aget-object v1, v0, p1

    iget-short v1, v1, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 16
    aget-object v1, v0, p1

    iget-object v1, v1, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 17
    aget-object v1, v0, p1

    iget-object v1, v1, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 18
    aget-object p1, v0, p1

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5

    const-string v0, "packageName is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "packageName is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 4

    const-string v0, "domain is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "type is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 8
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 9
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 10
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v1, p0

    const/16 v3, 0x3a

    aput-byte v3, v0, v1

    .line 12
    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    new-instance p0, Landroid/nfc/NdefRecord;

    const/4 p1, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "type is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "domain is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 3

    const-string v0, "mimeType is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 7
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType must have minor type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType must have major type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 5

    const-string/jumbo v0, "uri is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 5
    :goto_0
    sget-object v2, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    .line 6
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-byte v3, v1

    .line 7
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

    .line 8
    :goto_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 9
    array-length v1, p0

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 10
    aput-byte v3, v1, v4

    .line 11
    array-length v2, p0

    invoke-static {p0, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance p0, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uri is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 1
    :cond_0
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload above max limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p0, 0xa00000

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-nez v8, :cond_22

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit8 v10, v8, -0x80

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v11, v8, 0x40

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v12, v8, 0x20

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_3
    and-int/lit8 v13, v8, 0x10

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :goto_4
    and-int/lit8 v14, v8, 0x8

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_5
    and-int/lit8 v8, v8, 0x7

    int-to-short v8, v8

    if-nez v10, :cond_6

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_6

    if-nez v9, :cond_6

    if-eqz p1, :cond_5

    goto :goto_6

    .line 5
    :cond_5
    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "expected MB flag"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_6
    if-eqz v10, :cond_8

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_8

    if-eqz p1, :cond_7

    goto :goto_7

    .line 7
    :cond_7
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v1, "unexpected MB flag"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_7
    if-eqz v9, :cond_a

    if-nez v14, :cond_9

    goto :goto_8

    .line 8
    :cond_9
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v1, "unexpected IL flag in non-leading chunk"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_8
    if-eqz v12, :cond_c

    if-nez v11, :cond_b

    goto :goto_9

    .line 9
    :cond_b
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v1, "unexpected ME flag in non-trailing chunk"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_9
    const/4 v10, 0x6

    if-eqz v9, :cond_e

    if-ne v8, v10, :cond_d

    goto :goto_a

    .line 10
    :cond_d
    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "expected TNF_UNCHANGED in non-leading chunk"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_a
    if-nez v9, :cond_10

    if-eq v8, v10, :cond_f

    goto :goto_b

    .line 11
    :cond_f
    new-instance v0, Landroid/nfc/FormatException;

    const-string/jumbo v1, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_10
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    if-eqz v13, :cond_11

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-long v5, v13

    goto :goto_c

    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v5, v5

    const-wide v16, 0xffffffffL

    and-long v5, v5, v16

    :goto_c
    if-eqz v14, :cond_12

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    goto :goto_d

    :cond_12
    const/4 v13, 0x0

    :goto_d
    if-eqz v9, :cond_14

    if-nez v10, :cond_13

    goto :goto_e

    .line 15
    :cond_13
    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "expected zero-length type in non-leading chunk"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_e
    if-nez v9, :cond_17

    if-lez v10, :cond_15

    .line 16
    new-array v4, v10, [B

    goto :goto_f

    :cond_15
    sget-object v4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_f
    if-lez v13, :cond_16

    .line 17
    new-array v7, v13, [B

    goto :goto_10

    :cond_16
    sget-object v7, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 18
    :goto_10
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    :cond_17
    invoke-static {v5, v6}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    const-wide/16 v13, 0x0

    cmp-long v10, v5, v13

    if-lez v10, :cond_18

    long-to-int v5, v5

    .line 21
    new-array v5, v5, [B

    goto :goto_11

    :cond_18
    sget-object v5, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 22
    :goto_11
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v12, :cond_19

    if-nez v9, :cond_19

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v3, v8

    :cond_19
    if-nez v12, :cond_1a

    if-eqz v9, :cond_1b

    .line 24
    :cond_1a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-nez v12, :cond_1e

    if-eqz v9, :cond_1e

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 26
    array-length v6, v6

    int-to-long v8, v6

    add-long/2addr v13, v8

    goto :goto_12

    .line 27
    :cond_1c
    invoke-static {v13, v14}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    long-to-int v5, v13

    .line 28
    new-array v5, v5, [B

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 30
    array-length v10, v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v5, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_13

    :cond_1d
    const/4 v13, 0x0

    move v8, v3

    goto :goto_14

    :cond_1e
    const/4 v13, 0x0

    :goto_14
    if-eqz v12, :cond_1f

    move v8, v11

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 32
    :cond_1f
    invoke-static {v8, v4, v7, v5}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_21

    .line 33
    new-instance v6, Landroid/nfc/NdefRecord;

    invoke-direct {v6, v8, v4, v7, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_20

    goto :goto_15

    :cond_20
    move v8, v11

    move v9, v13

    goto/16 :goto_0

    .line 34
    :cond_21
    new-instance v0, Landroid/nfc/FormatException;

    invoke-direct {v0, v6}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_22
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NdefRecord;

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Landroid/nfc/FormatException;

    const-string v2, "expected more data"

    invoke-direct {v1, v2, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseWktUri()Landroid/net/Uri;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 3
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v3

    if-lt v1, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget-object v1, v3, v1

    .line 5
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "vnd.android.nfc://ext/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    aput-object p0, p1, p2

    const-string/jumbo p0, "unexpected tnf value: 0x%02x"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    return-object p0

    .line 2
    :pswitch_1
    array-length p0, p1

    if-eqz p0, :cond_0

    const-string/jumbo p0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    return-object p0

    :cond_0
    :pswitch_2
    return-object v0

    .line 3
    :pswitch_3
    array-length p0, p1

    if-nez p0, :cond_2

    array-length p0, p2

    if-nez p0, :cond_2

    array-length p0, p3

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string/jumbo p0, "unexpected data in TNF_EMPTY record"

    return-object p0

    nop

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

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    const-class v1, Landroid/nfc/NdefRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Landroid/nfc/NdefRecord;

    .line 3
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v2, p1, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v2, p1, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 5
    :cond_4
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-short v2, p1, Landroid/nfc/NdefRecord;->mTnf:S

    if-eq v1, v2, :cond_5

    return v0

    .line 6
    :cond_5
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object p1, p1, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getByteLength()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v2, v1

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v2

    add-int/2addr v0, v3

    .line 2
    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x100

    if-ge v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3
    :goto_0
    array-length v1, v1

    if-lez v1, :cond_1

    move v3, v4

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x3

    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public getId()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTnf()S
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toMimeType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3
    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "text/plain"

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NdefRecord tnf=%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz p2, :cond_2

    const/16 p2, -0x80

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    if-eqz p3, :cond_3

    const/16 p3, 0x40

    goto :goto_3

    :cond_3
    move p3, v2

    :goto_3
    or-int/2addr p2, p3

    if-eqz v0, :cond_4

    const/16 p3, 0x10

    goto :goto_4

    :cond_4
    move p3, v2

    :goto_4
    or-int/2addr p2, p3

    if-eqz v1, :cond_5

    const/16 v2, 0x8

    :cond_5
    or-int/2addr p2, v2

    .line 3
    iget-short p3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    or-int/2addr p2, p3

    int-to-byte p2, p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length p2, p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 6
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length p2, p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 7
    :cond_6
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    if-eqz v1, :cond_7

    .line 8
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length p2, p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    :cond_7
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 11
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-short p2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
